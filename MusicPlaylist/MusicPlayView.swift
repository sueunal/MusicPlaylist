//
//  MusicPlayView.swift
//  MusicPlaylist
//
//  Created by sueun kim on 2023/03/05.
//

import SwiftUI
import AVKit
import AVFoundation

struct MusicPlayView: View {
    @State var audioPlayer: AVAudioPlayer!
    @State var PlayPause : Bool = true
    
    @Binding var PlayMusicImage : Image
    @Binding var PlayMusicName : String
    var body: some View {
        ZStack{
            PlayMusicImage
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea(.all)
            VStack{
                Image("Andromedik & Murdock - Light (feat. Dualistic) _artwork-440x440")
                    .resizable()
                    .frame(width:250,height: 250)
                    .foregroundColor(.white)
                    .aspectRatio(contentMode: .fill)
                    .background(Color(.black))
                    .cornerRadius(150/2)
                    .shadow(color: .white, radius: 10)
                    .padding(.top,50)
                Spacer()
                ProgressView(value:100)
                Spacer()
                HStack{
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .frame(width:50 ,height:50)
                        .padding(.trailing,50)
                        .foregroundColor(.white)
                    Button{
                        PlayPause.toggle()
                    }
                label:{
                    Image(systemName: PlayPause ?  "play.fill" : "pause")
                        .resizable()
                        .frame(width:50 ,height:50)
                        .foregroundColor(.white)
                        .aspectRatio(contentMode: .fit)
                }
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .frame(width:50 ,height:50)
                        .padding(.leading,40)
                        .foregroundColor(.white)
                }
                Spacer()
            }
        }
    }
}
