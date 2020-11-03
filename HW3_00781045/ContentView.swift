//
//  homepage.swift
//  HW3_00781045
//
//  Created by User07 on 2020/11/1.
//

import SwiftUI
import AVFoundation

struct homepage: View {
    @State private var showAlert: Bool = false
    @State private var isPlay = true
    @StateObject var inputData = InputData()
    //let fileUrl = Bundle.main.url(forResource: "BGM", withExtension: "mp3")!
    let player = AVPlayer(url: Bundle.main.url(forResource:"BGM", withExtension: "mp3")!)
    var body: some View {
        NavigationView {
            ZStack{
                //Title
                Group{
                    Path{(path)in
                        //M
                        path.move(to: CGPoint(x:1, y:12))
                        path.addLine(to: CGPoint(x:2, y:23))
                        path.addLine(to: CGPoint(x:11, y:32))
                        path.addLine(to: CGPoint(x:12, y:90))
                        path.addLine(to: CGPoint(x:3, y:98))
                        path.addLine(to: CGPoint(x:2, y:107))
                        path.addLine(to: CGPoint(x:37, y:107))
                        path.addLine(to: CGPoint(x:36, y:96))
                        path.addLine(to: CGPoint(x:30, y:91))
                        path.addLine(to: CGPoint(x:30, y:50))
                        path.addLine(to: CGPoint(x:48, y:105))
                        path.addLine(to: CGPoint(x:66, y:44))
                        path.addLine(to: CGPoint(x:66, y:90))
                        path.addLine(to: CGPoint(x:59, y:96))
                        path.addLine(to: CGPoint(x:60, y:105))
                        path.addLine(to: CGPoint(x:93, y:106))
                        path.addLine(to: CGPoint(x:93, y:97))
                        path.addLine(to: CGPoint(x:88, y:91))
                        path.addLine(to: CGPoint(x:90, y:24))
                        path.addLine(to: CGPoint(x:96, y:11))
                        path.addLine(to: CGPoint(x:58, y:12))
                        path.addLine(to: CGPoint(x:50, y:41))
                        path.addLine(to: CGPoint(x:38, y:9))
                        path.closeSubpath()
                        //A
                        path.move(to: CGPoint(x:116, y:10))
                        path.addLine(to: CGPoint(x:100, y:83))
                        path.addLine(to: CGPoint(x:93, y:89))
                        path.addLine(to: CGPoint(x:95, y:99))
                        path.addLine(to: CGPoint(x:123, y:99))
                        path.addLine(to: CGPoint(x:123, y:88))
                        path.addLine(to: CGPoint(x:117, y:85))
                        path.addLine(to: CGPoint(x:119, y:71))
                        path.addLine(to: CGPoint(x:132, y:70))
                        path.addLine(to: CGPoint(x:137, y:84))
                        path.addLine(to: CGPoint(x:130, y:86))
                        path.addLine(to: CGPoint(x:129, y:97))
                        path.addLine(to: CGPoint(x:164, y:99))
                        path.addLine(to: CGPoint(x:164, y:86))
                        path.addLine(to: CGPoint(x:158, y:82))
                        path.addLine(to: CGPoint(x:145, y:1))
                        path.closeSubpath()
                        //D
                        path.move(to: CGPoint(x:166, y:10))
                        path.addLine(to: CGPoint(x:165, y:21))
                        path.addLine(to: CGPoint(x:171, y:25))
                        path.addLine(to: CGPoint(x:172, y:88))
                        path.addLine(to: CGPoint(x:166, y:95))
                        path.addLine(to: CGPoint(x:166, y:105))
                        path.addLine(to: CGPoint(x:202, y:105))
                        path.addQuadCurve(to: CGPoint(x: 229, y: 58), control: CGPoint(x: 229, y: 104))
                        path.addQuadCurve(to: CGPoint(x: 199, y: 10), control: CGPoint(x: 229, y: 4))
                        path.closeSubpath()
                        //L
                        path.move(to: CGPoint(x:2, y:114))
                        path.addLine(to: CGPoint(x:1, y:127))
                        path.addLine(to: CGPoint(x:10, y:133))
                        path.addLine(to: CGPoint(x:13, y:192))
                        path.addLine(to: CGPoint(x:4, y:200))
                        path.addLine(to: CGPoint(x:6, y:212))
                        path.addLine(to: CGPoint(x:58, y:212))
                        path.addLine(to: CGPoint(x:59, y:179))
                        path.addLine(to: CGPoint(x:49, y:176))
                        path.addLine(to: CGPoint(x:46, y:195))
                        path.addQuadCurve(to: CGPoint(x: 34, y: 194), control: CGPoint(x: 39, y: 204))
                        path.addLine(to: CGPoint(x:37, y:130))
                        path.addLine(to: CGPoint(x:44, y:126))
                        path.addLine(to: CGPoint(x:46, y:115))
                        path.closeSubpath()
                        //I
                        path.move(to: CGPoint(x:71, y:113))
                        path.addQuadCurve(to: CGPoint(x: 49, y: 140), control: CGPoint(x: 48, y: 118))
                        path.addQuadCurve(to: CGPoint(x: 75, y: 160), control: CGPoint(x: 57, y: 159))
                        path.addQuadCurve(to: CGPoint(x: 97, y: 135), control: CGPoint(x: 94, y: 154))
                        path.addQuadCurve(to: CGPoint(x: 71, y: 113), control: CGPoint(x: 88, y: 113))
                        path.closeSubpath()
                        path.move(to: CGPoint(x:61, y:165))
                        path.addLine(to: CGPoint(x:61, y:179))
                        path.addLine(to: CGPoint(x:68, y:182))
                        path.addLine(to: CGPoint(x:68, y:203))
                        path.addLine(to: CGPoint(x:64, y:217))
                        path.addLine(to: CGPoint(x:101, y:217))
                        path.addLine(to: CGPoint(x:97, y:206))
                        path.addLine(to: CGPoint(x:91, y:204))
                        path.addLine(to: CGPoint(x:91, y:180))
                        path.addLine(to: CGPoint(x:97, y:178))
                        path.addLine(to: CGPoint(x:96, y:164))
                        path.closeSubpath()
                        //B
                        path.move(to: CGPoint(x:102, y:111))
                        path.addLine(to: CGPoint(x:101, y:125))
                        path.addLine(to: CGPoint(x:109, y:130))
                        path.addLine(to: CGPoint(x:111, y:193))
                        path.addLine(to: CGPoint(x:103, y:199))
                        path.addLine(to: CGPoint(x:105, y:209))
                        path.addLine(to: CGPoint(x:145, y:209))
                        path.addQuadCurve(to: CGPoint(x: 166, y: 183), control: CGPoint(x: 168, y: 202))
                        path.addQuadCurve(to: CGPoint(x: 150, y: 159), control: CGPoint(x: 167, y: 165))
                        path.addQuadCurve(to: CGPoint(x: 164, y: 131), control: CGPoint(x: 167, y: 144))
                        path.addQuadCurve(to: CGPoint(x: 139, y: 113), control: CGPoint(x: 164, y: 120))
                        path.closeSubpath()
                        //S
                        path.move(to: CGPoint(x:219, y:118))
                        path.addLine(to: CGPoint(x:201, y:118))
                        path.addLine(to: CGPoint(x:201, y:122))
                        path.addQuadCurve(to: CGPoint(x: 172, y: 124), control: CGPoint(x: 185, y: 111))
                        path.addQuadCurve(to: CGPoint(x: 170, y: 153), control: CGPoint(x: 166, y: 129))
                        path.addLine(to: CGPoint(x:193, y:182))
                        path.addQuadCurve(to: CGPoint(x: 196, y: 194), control: CGPoint(x: 200, y: 190))
                        path.addQuadCurve(to: CGPoint(x: 183, y: 183), control: CGPoint(x: 190, y: 196))
                        path.addLine(to: CGPoint(x:172, y:182))
                        path.addLine(to: CGPoint(x:173, y:182))
                        path.addLine(to: CGPoint(x:171, y:216))
                        path.addLine(to: CGPoint(x:184, y:216))
                        path.addLine(to: CGPoint(x:185, y:212))
                        path.addQuadCurve(to: CGPoint(x: 210, y: 211), control: CGPoint(x: 200, y: 217))
                        path.addQuadCurve(to: CGPoint(x: 220, y: 193), control: CGPoint(x: 219, y: 205))
                        path.addQuadCurve(to: CGPoint(x: 215, y: 174), control: CGPoint(x: 221, y: 185))
                        path.addLine(to: CGPoint(x:190, y:145))
                        path.addQuadCurve(to: CGPoint(x: 189, y: 139), control: CGPoint(x: 187, y: 137))
                        path.addQuadCurve(to: CGPoint(x: 205, y: 150), control: CGPoint(x: 198, y: 132))
                        path.addLine(to: CGPoint(x:217, y:151))
                        path.closeSubpath()
                    }
                    .offset(x: 70, y: -60)
                    .fill(Color(red: 8/255, green: 128/255, blue: 153/255))
                    Path{(path)in
                        //A
                        path.move(to: CGPoint(x:127, y:35))
                        path.addLine(to: CGPoint(x:122, y:56))
                        path.addLine(to: CGPoint(x:131, y:56))
                        path.closeSubpath()
                        //D
                        path.move(to: CGPoint(x:195, y:28))
                        path.addLine(to: CGPoint(x:195, y:89))
                        path.addQuadCurve(to: CGPoint(x: 207, y: 58), control: CGPoint(x: 207, y: 79))
                        path.addQuadCurve(to: CGPoint(x: 195, y: 28), control: CGPoint(x: 206, y: 36))
                        path.closeSubpath()
                        //B
                        path.move(to: CGPoint(x:134, y:132))
                        path.addLine(to: CGPoint(x:133, y:150))
                        path.addQuadCurve(to: CGPoint(x: 142, y: 140), control: CGPoint(x: 140, y: 146))
                        path.addQuadCurve(to: CGPoint(x: 138, y: 132), control: CGPoint(x: 140, y: 135))
                        path.closeSubpath()
                        path.move(to: CGPoint(x:133, y:167))
                        path.addLine(to: CGPoint(x:132, y:187))
                        path.addQuadCurve(to: CGPoint(x: 142, y: 179), control: CGPoint(x: 142, y: 184))
                        path.addQuadCurve(to: CGPoint(x: 133, y: 167), control: CGPoint(x: 142, y: 170))
                        path.closeSubpath()
                    }
                    .offset(x: 70, y: -60)
                    .fill(Color(red: 1, green: 1, blue: 1))
                    Text("故事遊戲中文版")
                        .offset(x: 0, y: -140)
                        .font(.title2)
                        .foregroundColor(Color(red: 1/255, green: 148/255, blue: 164/255))
                }
                //buttons
                VStack {
                    //play button
                    NavigationLink(
                        destination: inputEditor(inputData: InputData()),
                        label: {
                            Text("        Play        ")
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
                    //how to play button
                    NavigationLink(
                        destination: howToPlay(),
                        label: {
                            Text("How to play")
                                .fontWeight(.bold)
                                .font(.title)
                                .padding()
                                
                                .background(Color(red: 246/255, green: 153/255, blue: 180/255))
                                .cornerRadius(40)
                                .foregroundColor(Color.white)
                                .padding(10)
                                .overlay(
                                        RoundedRectangle(cornerRadius: 40)
                                            .stroke(Color(red: 246/255, green: 153/255, blue: 180/255), lineWidth: 5))
                        })
                }
                //buttons
                Button(action: {showAlert = true}, label: {
                    Image(systemName:("person.crop.circle.fill"))
                        .resizable()
                        .frame(width: 50, height: 50)
                }).offset(x: -130, y: 280)
                .alert(isPresented: $showAlert) { () -> Alert in
                    let answer = ["小暖男","賴玠淳"].randomElement()!
                    return Alert(title: Text(answer))
                }
                if isPlay{
                    Button(action: {isPlay = false}, label: {
                        Image(systemName:("speaker.1.fill"))
                        .resizable()
                        .frame(width: 40, height: 50)
                    }).offset(x: -60, y: 280)
                    .onChange(of: isPlay, perform: { value in
                                        if value {
                                            player.play()
                                        } else {
                                            player.pause()
                                        }
                                    })
                }
                else{
                    Button(action: {isPlay = true}, label: {
                        Image(systemName:("speaker.slash.fill"))
                        .resizable()
                        .frame(width: 40, height: 50)
                    }).offset(x: -60, y: 280)
                    .onChange(of: isPlay, perform: { value in
                                        if value {
                                            player.play()
                                        } else {
                                            player.pause()
                                        }
                                    })
                }
            }
        }
    }
}

struct homepage_Previews: PreviewProvider {
    static var previews: some View {
        homepage()
    }
}
