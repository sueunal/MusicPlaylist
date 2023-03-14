//
//  MusicPlayView.swift
//  MusicPlaylist
//
//  Created by sueun kim on 2023/03/05.
//
import AVKit
import SwiftUI

struct MyPlayerView: UIViewControllerRepresentable {
    let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "Andromedik & Murdock - Light (feat. Dualistic) [NCS Release]", ofType: "mp3")!))
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        return playerViewController
    }

    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        // Update any properties of the view controller here if needed.
    }
}
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
            VStack{
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
