//
//  StateAndDataFlow.swift
//  StudySwitUI
//
//  Created by DuyPhamViet on 2021/09/30.
//

import SwiftUI

struct StateAndDataFlow: View {
    @State private var songList = [Result]()
    
    var body: some View {
        List(songList, id: \.trackId) { (item) in
            VStack(alignment: .leading) {
                Text(item.trackName)
                    .font(.headline)
                Text(item.collectionName)
            }
        }.onAppear(perform: {
            getSongList()
        })
    }
    
    func getSongList(){
        SearchService.getSongs {(songs: [Result]) in
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
