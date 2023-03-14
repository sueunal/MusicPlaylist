//
//  MusicPlayView.swift
//  MusicPlaylist
//
//  Created by sueun kim on 2023/03/05.
//
import AVKit
import SwiftUI

struct MusicPlayView: View {
    @State var audioPlayer: AVAudioPlayer!
    @State var PlayPause : Bool = true
    
    var selection : Int
    var playlist : [PlaylistType]
    var body: some View {
        ZStack{
            Image(playlist[selection].PlaylistImageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea(.all)
                .blur(radius: 100)
            VStack {
                Image(playlist[selection].PlaylistImageName)
                    .resizable()
                    .frame(width:250,height: 250)
                    .foregroundColor(.white)
                    .aspectRatio(contentMode: .fill)
                    .background(Color(.black))
                    .cornerRadius(150/2)
                    .shadow(color: .white, radius: 10)
                    .padding(.top,50)
                Spacer()
                Text(playlist[selection].PlaylistName)
                    .foregroundColor(.white)
                    .frame(width: 300,height: 100)
                Spacer()
                HStack{
                    Image(systemName: "backward.end")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.black)
                            .padding(.trailing,50)
                    Button(action: {
                        PlayPause.toggle()
                        if PlayPause {
                            self.audioPlayer.pause()
                        }else {
                            self.audioPlayer.play()
                        }
                    }) {
                        Image(systemName: PlayPause ? "play" :"pause")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.black)
                    }
                    Image(systemName: "forward.end")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.black)
                            .padding(.leading,50)
                }
                Spacer()
                .onAppear {
                    let sound = Bundle.main.path(forResource: playlist[selection].PlaylistName, ofType: "mp3")
                    self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                }
            }
            Spacer()
        }
    }
}
