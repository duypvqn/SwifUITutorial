//
//  StateAndDataFlow.swift
//  StudySwitUI
//
//  Created by DuyPhamViet on 2021/09/30.
//

import SwiftUI

struct StateAndDataFlow: View {
    @State private var songList = [Result]()
    @State private var isLoading = true
    var body: some View {
        ZStack {
            LoadingView(content: {
                List(songList, id: \.trackId) { (item) in
                    VStack(alignment: .leading) {
                        Text(item.trackName)
                            .font(.headline)
                        Text(item.collectionName)
                    }
                }
            }, isAnimating: $isLoading)
        }
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                getSongList()
            }
        })
    }

    func getSongList(){
        SearchService.getSongs {(songs: [Result]) in
            isLoading = false
            self.songList = songs
        }
    }
}

struct StateAndDataFlow_Previews: PreviewProvider {
    static var previews: some View {
        StateAndDataFlow()
            .previewDevice("iPhone 12 Pro Max")
    }
}

