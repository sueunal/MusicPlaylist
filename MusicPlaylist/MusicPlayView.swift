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
                        Text(playlist[selection].PlaylistName)
                            .foregroundColor(.white)
                            .frame(width: 300,height: 100)
                        Spacer()
                HStack{
                        Button(action: {
                            self.audioPlayer.play()
                        }) {
                            Image(systemName: "play.fill")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(.black)
                        }
                        Button(action: {
                            self.audioPlayer.pause()
                        }) {
                            Image(systemName: "pause.circle.fill")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(.black)
                        }
                    }
                }
                .onAppear {
                    let sound = Bundle.main.path(forResource: playlist[selection].PlaylistName, ofType: "mp3")
                    self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                }
            }
            Spacer()
        }
    }
