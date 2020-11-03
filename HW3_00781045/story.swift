//
//  story.swift
//  HW3_00781045
//
//  Created by User07 on 2020/11/3.
//

import SwiftUI

struct story: View {
    var input:Input
    @State private var showingSheet = false
    @State private var wdColor = Color.black
    @State private var showMapPage = false
    let noun = ["沖天炮","皮卡丘","虎姑婆","水槍","雄三飛彈"]
    let house = ["棉花糖","鑽石","貝殼","筷子","石頭","不織布","茅草","玻璃","微笑薯餅"]
    
    var body: some View {
        let house1 = house[input.selecthouse1]
        let house2 = house[input.selecthouse2]
        let house3 = house[input.selecthouse3]
        let house4 = house[input.selecthouse4]
        let noun1 = noun[input.selectnoun]
        Form{
            Text("故事地點").font(.headline)
            Button("點一下打開地圖"){
                showMapPage = true
            }
            .sheet(isPresented: $showMapPage){
                map(showMapPage: $showMapPage)
            }
            Text("故事內容").font(.headline)
            ColorPicker("選擇文字顏色",selection: $wdColor)
            Group{
                Text("\(input.name1)媽媽的三個兒子都長大了，要牠們自己出去蓋自己的房子。")
                Text("\(input.name1)大哥是個很懶散的長子，牠僅用一堆\(house1)來蓋房子，蓋好後就在房子裡呼呼大睡。")
                Text("\(input.name1)二哥是個貪吃的次子，牠僅用\(house2)和\(house3)蓋了一座房子")
                Text("\(input.name1)小弟是個勤奮又聰明的么子，想要一間安全又堅固的房子，於是蓋了一間用\(house4)做成的小別墅，花了很久的時間才把房子給蓋好。")
                Text("隔天\(input.name1)大哥的家附近出現一隻野生的大\(input.name2)，牠從外面聞到\(input.name1)大哥的味道，向前敲門要\(input.name1)大哥開門讓牠進去把其給吃掉，\(input.name1)大哥不答應，於是大\(input.name2)用力吸一大口氣，把\(input.name1)大哥的房子整個\(input.verb)垮，\(input.name1)大哥被這一幕嚇傻了，跑到\(input.name1)二哥的家")
            }.foregroundColor(wdColor)
            Group{
                Text("\(input.name1)二哥的房子比\(house1)屋堅固了點，無法用\(input.verb)的，於是大\(input.name2)用力一\(input.verb2)，把\(input.name1)二哥的家也弄壞了，於是兩隻小\(input.name1)趕緊逃到\(input.name1)小弟的家")
                Text("\(input.name1)小弟的房子是最堅固的，無論大\(input.name2)用\(input.verb)的還是用\(input.verb2)的就是弄不壞，於是大\(input.name2)爬上了屋頂，要從煙囪爬進來把三隻小\(input.name1)都吃掉")
                Text("聰明的\(input.name1)小弟立刻用了\(input.number)個\(noun1)把大\(input.name2)嚇到哇哇大叫，趕緊逃回森林，趕走大\(input.name2)後，\(input.name1)小弟讓兩位哥哥住在他的房子，從此牠們就再也不怕受到大\(input.name2)的威脅，快樂地生活著。")
            }.foregroundColor(wdColor)
            Button(action: {
                        self.showingSheet = true
                    }) {
                        Text("看看有沒有符合自己的期待")
                    }
                    .actionSheet(isPresented: $showingSheet) {
                        ActionSheet(title: Text("期待分數：\(input.score)"), message: Text("希望沒有讓你太失望！"), buttons: [.default(Text("Dismiss Action Sheet"))])
                    }
        }
    }
}

struct story_Previews: PreviewProvider {
    static var previews: some View {
        story(input: Input(selectDate: Date(), name1: "豬", name2:"狼", selectnoun: 1, number: 5, selecthouse1:1, selecthouse2: 2, selecthouse3: 3, selecthouse4: 4, verb: "吹", verb2: "撞", score: 5, isHappy: true))
    }
}
