//
//  SuhaTabView.swift
//  MusicPlaylist
//
//  Created by sueun kim on 2023/03/02.
//

import SwiftUI
import AVKit

struct SuhaTabView: View {
    enum PlaylistType {
        case song0,song1, song2, song3, song4,song5,song6,song7,song8,song9,song10, song11
        var PlaylistName : String{
            switch self {
            case .song0:
                return "Andromedik & Murdock - Light (feat. Dualistic) [NCS Release]"
            case .song1:
                return "Arc North - Symphony (feat. Donna Tella) [NCS Release]"
            case .song2:
                return "Arcando - In My Head (feat. Britt Lari) [NCS Release]"
            case .song3:
                return "Egzod, Maestro Chives, Neoni - Royalty [NCS Release]"
            case .song4:
                return "Jack Shore & Tollef - Dreaming of Me (feat. Jaime Deraz) [NCS Release]"
            case .song5:
                return "N3WPORT x Britt Lari - Paradise [NCS Release]"
            case .song6:
                return "PLEEG - Spirit [NCS Release]"
            case .song7:
                return "Rival - Falling (with CRVN) [NCS Release]"
            case .song8:
                return "ROY KNOX & CRVN - The Other Side [NCS Release]"
            case .song9:
                return "Sam Ourt, AKIAL & Srikar - Escape (Juan Dileju & Sam Ourt VIP Mix) [NCS Release]"
            case .song10:
                return "Sharks - Shiver [NCS Release]"
            case .song11:
                return "Vizzen & Protolizard - Heaven Knows [NCS Release]"
            }
        }
        var PlaylistImageName : String{
            switch self{
            case .song0:
                return "Andromedik & Murdock - Light (feat. Dualistic) _artwork-440x440"
            case .song1:
                return "Arc North - Symphony (feat. Donna Tella) _artwork-440x440"
            case .song2:
                return "Arcando - In My Head (feat. Britt Lari) _artwork-440x440"
            case .song3:
                return "Egzod, Maestro Chives, Neoni - Royalty _artwork-440x440"
            case .song4:
                return "Jack Shore & Tollef - Dreaming of Me (feat. Jaime Deraz) _artwork-440x440"
            case .song5:
                return "N3WPORT x Britt Lari - Paradise _artwork-440x440"
            case .song6:
                return "PLEEG - Spirit _artwork-440x440"
            case .song7:
                return "Rival - Falling (with CRVN) _artwork-440x440"
            case .song8:
                return "ROY KNOX & CRVN - The Other Side _artwork-440x440"
            case .song9:
                return "Sam Ourt, AKIAL & Srikar - Escape (Juan Dileju & Sam Ourt VIP Mix) _artwork-440x440"
            case .song10:
                return "Sharks - Shiver _artwork-440x440"
            case .song11:
                return "Vizzen & Protolizard - Heaven Knows _artwork-440x440"
            }
        }
    }
    @State var playlist : [PlaylistType] = [.song0,.song1, .song2, .song3, .song4,.song5,.song6,.song7,.song8,.song9,.song10, .song11]
    var body: some View {
            VStack{
                Section{
                    List{
                        ForEach(playlist, id:\.self){ item in
                            HStack{
                                Image(item.PlaylistImageName)
                                    .resizable()
                                    .frame(width: 50,height: 50)
                            Button{
                                
                            }
                            label:{
                                Text(item.PlaylistName)
                                    .foregroundColor(.black)
                                    .font(.system(size:15))
                                    .frame(height:50)
                                
                            }
                                
                            .listRowBackground(Color(.white))
                                //리스트 raw 백그라운드 색 지정 이미지도 가능
                            }
                    }
                      .scrollContentBackground(.hidden) //리스트
                      .background(Color("BackgroundColor").ignoresSafeArea(.all)) //리스트 백그라운드 색 지정 이미지도 가능
                      .listStyle(.inset) // 리스트 스타일 변경 inset, automatic, plan 등 다양하게 존재.
                }
            }
        }
    }
struct SuhaTabView_Previews: PreviewProvider {
    static var previews: some View {
        SuhaTabView()
    }
}
