//
//  MusicPlayView.swift
//  MusicPlaylist
//
//  Created by sueun kim on 2023/03/05.
//

import SwiftUI
import AVKit

struct MusicPlayView: View {
    
    var body: some View {
        ZStack{
            Color(.gray).ignoresSafeArea(.all)
            VStack{
                Image(systemName: "phone")
                    .resizable()
                    .frame(width:300,height: 300)
                    .foregroundColor(.white)
                    .aspectRatio(contentMode: .fit)
                    .background(Color(.black))
                    .cornerRadius(150/2)
                    .padding(.top,100)
                Spacer()
                ProgressView(value: 20)
                Spacer()
                HStack{
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .frame(width:70 ,height:80)
                        .padding(.trailing,50)
                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width:70 ,height:80)
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .frame(width:70 ,height:80)
                        .padding(.leading,40)
                }
                Spacer()
            }
        }
    }
}

struct MusicPlayView_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayView()
    }
}
