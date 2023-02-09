//
//  ContentView.swift
//  MyMusic
//
//  Created by 中原麻央 on 2022/12/12.
//

import SwiftUI

struct ContentView: View {
    //音を鳴らすためのクラスのインスタンス生成
    let soundPlayer = SoundPlayer()
    
    var body: some View {
                
        ZStack{
            
            BackgroundView_swiht(imageName: "background")
           
            
            //横方向にレイアウト
            HStack{
                //シンバルボタン
                Button{
                    //ボタンをタップした時のアクション
                    soundPlayer.cymbalPlay()
                }label: {
                    //画像を表示する
                    Image("cymbal")
                } //シンバルボタンここまで
                
                //ギターボタン
                Button{
                    //ボタンをタップした時のアクション
                    soundPlayer.guitarPlay()
                }label: {
                    //画像を表示する
                    Image("guitar")
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
