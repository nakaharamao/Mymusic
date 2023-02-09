//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by 中原麻央 on 2022/12/12.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    //シンバルの音源データを読み込み
    let cymbalDate = NSDataAsset(name: "cymbalSound")!.data
    
    //シンバル用プレイヤーの変数
    var cymbalPlayer: AVAudioPlayer!
    
    let guitarDate = NSDataAsset(name: "guitarSound")!.data
    
    var guitarPlayar: AVAudioPlayer!
    
    func cymbalPlay() {
        
        do {
            //シンバル用のプレイヤーに、音源データを指定
            cymbalPlayer = try AVAudioPlayer(data: cymbalDate)
            
            //シンバルの音源を再生
            cymbalPlayer.play()
        } catch {
            print("シンバルで、エラーが発生しました！")
        }
    }
    
    func guitarPlay() {
        
        do{
            
            guitarPlayar = try AVAudioPlayer(data: guitarDate)
            
            guitarPlayar.play()
        } catch {
            print("ギターで、エラーが発生しました")
            
        }
    }
}
            
        
    

