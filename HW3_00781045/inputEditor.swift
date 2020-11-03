//
//  inputdata.swift
//  HW3_00781045
//
//  Created by User07 on 2020/11/1.
//

import SwiftUI

struct AnimalName1: View {
    @Binding var name1:String
    var body: some View {
        TextField("輸入一種動物", text: self.$name1)
            .padding().overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.blue, lineWidth: 3))
    }
}
struct AnimalName2: View {
    @Binding var name2:String
    var body: some View {
        TextField("輸入一種動物", text: self.$name2)
            .padding().overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.blue, lineWidth: 3))
    }
}
struct nounpicker: View {
    @Binding var selectnoun:Int
    let noun=["沖天炮","皮卡丘","虎姑婆","水槍","雄三飛彈"]
    var body: some View {
        Picker("名詞",selection: self.$selectnoun){
            ForEach(0..<noun.count) { (index) in
                Text(self.noun[index])
            }
        }.pickerStyle(SegmentedPickerStyle())
    }
}
struct housepicker: View {
    @Binding var selecthouse:Int
    let house = ["棉花糖","鑽石","貝殼","筷子","石頭","不織布","茅草","玻璃","微笑薯餅"]
    var body: some View {
        Picker("選一個",selection: self.$selecthouse){
            ForEach(0..<house.count) { (index) in
                Text(self.house[index])
            }
        }//.pickerStyle(MenuPickerStyle())
    }
}
struct Verb: View {
    @Binding var verb:String
    var body: some View {
        TextField("輸入一個動詞", text: self.$verb)
            .padding().overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.blue, lineWidth: 3))
    }
}
struct Verb2: View {
    @Binding var verb2:String
    var body: some View {
        TextField("輸入一個動詞", text: self.$verb2)
            .padding().overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.blue, lineWidth: 3))
    }
}
struct inputEditor: View {
    @Environment(\.presentationMode) var presentationMode
    var inputData: InputData
    @State private var selectDate = Date()
    @State private var name1 = "豬"
    @State private var name2 = "狼"
    @State private var selectnoun = 0
    @State private var number:Int = 1
    @State private var selecthouse1 = 0
    @State private var selecthouse2 = 1
    @State private var selecthouse3 = 2
    @State private var selecthouse4 = 3
    @State private var verb = "吹"
    @State private var verb2 = "撞"
    @State private var score: CGFloat = 5
    @State private var isHappy = true
    let today = Date()
    let startdate = Calendar.current.date(byAdding: .year,value: -100, to: Date())!
    let house = ["棉花糖","鑽石","貝殼","筷子","石頭","不織布","茅草","玻璃","微笑薯餅"]
    var body: some View {
        VStack{
            Form {
                Group {
                    DatePicker("選一個良辰吉時",selection: self.$selectDate,in: self.startdate...self.today, displayedComponents: .date)
                    AnimalName1(name1: self.$name1)
                    AnimalName2(name2: self.$name2)
                    nounpicker(selectnoun: self.$selectnoun)
                    Stepper(
                        onIncrement: { number += 1 },
                        onDecrement: { number -= 1 },
                        label: {
                            Text("choose a number:  \(number)")
                        })
                    Group{
                        housepicker(selecthouse: self.$selecthouse1)
                        housepicker(selecthouse: self.$selecthouse2)
                        housepicker(selecthouse: self.$selecthouse3)
                        housepicker(selecthouse: self.$selecthouse4)
                        Verb(verb: self.$verb)
                        Verb2(verb2: self.$verb2)
                    }
                }
                Group{
                    DisclosureGroup("告訴我你有多期待這個故事") {
                        VStack {
                                Text("對這個故事的期待值:  \(Int(score))")
                                Slider(value: $score, in: 0...10, step: 1)
                        }.accentColor(.orange)
                    }
                    Toggle("希望是快樂結局嗎？", isOn: $isHappy)
                    if isHappy {
                        HStack{
                            Image(systemName:"smiley")
                                .resizable()
                                .frame(width: 100, height: 100, alignment: .center)
                                .padding()
                            VStack{
                                Text("跟我想得一樣")
                                Text("這是個快樂的結局")
                            }
                        }
                    }
                    else{
                        HStack{
                            VStack{
                                Text("希望能是快樂的結局")
                                Text("可以動動手幫幫我")
                                Text("按一下這個按鈕嗎")
                            }
                            .offset(x:30,y:0)
                            Image(systemName:"arrow.turn.right.up")
                                .resizable()
                                .frame(width: 100, height: 100, alignment: .center)
                                .rotationEffect(.degrees(20))
                                .padding()
                                .offset(x:40,y:0)
                        }
                    }
                }
            }
            //button -> let's go
            NavigationLink(
                destination: story(input: Input(selectDate: Date(), name1: name1, name2: name2, selectnoun: 1, number: 5, selecthouse1: selecthouse1, selecthouse2: selecthouse2, selecthouse3: selecthouse3, selecthouse4: selecthouse4, verb: verb, verb2: verb2, score: score, isHappy: isHappy)),
                label: {
                    Text("    Let's go!    ")
                        .fontWeight(.bold)
                        .font(.title)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(40)
                        .foregroundColor(Color.white)
                        .padding(10)
                        .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.green, lineWidth: 5))
            })
        }
    }
}

struct inputEditor_Previews: PreviewProvider {
    static var previews: some View {
        inputEditor(inputData: InputData())
    }
}
