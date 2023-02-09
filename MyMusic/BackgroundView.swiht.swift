//
//  BackgroundView.swiht.swift
//  MyMusic
//
//  Created by 中原麻央 on 2022/12/14.
//

import SwiftUI

struct BackgroundView_swiht: View {
    //画像ファイル名
    let imageName: String
    
    var body: some View {
        
    Image(imageName)
    
        .resizable()
        
        .ignoresSafeArea()
        
        .scaledToFill()
    
   
    }
}

struct BackgroundView_swiht_Previews: PreviewProvider {
    static var previews: some View {
       BackgroundView_swiht(imageName: "background")
    }
}
