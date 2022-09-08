//
//  Model.swift
//  AlbumScreen
//
//  Created by Алексей Лосев on 08.09.2022.
//

import Foundation

struct AlbumsModel: Hashable {
    var albumImage: String
    var albumName: String?
    var numberOfPhotosLabel: String?
    var chevronImage: String?
}

extension AlbumsModel {
    static let albumsModelsArray = [
        // zero section
        [AlbumsModel(albumImage: "recents", albumName: "Recents", numberOfPhotosLabel: "1998", chevronImage: nil),
         AlbumsModel(albumImage: "favorites", albumName: "Favorites", numberOfPhotosLabel: "500", chevronImage: nil),
         AlbumsModel(albumImage: "football", albumName: "Football", numberOfPhotosLabel: "10", chevronImage: nil),
         AlbumsModel(albumImage: "instagram", albumName: "Instagram", numberOfPhotosLabel: "37", chevronImage: nil),
         AlbumsModel(albumImage: "dropbox", albumName: "Dropbox", numberOfPhotosLabel: "14", chevronImage: nil),
         AlbumsModel(albumImage: "whatsapp", albumName: "Whatsapp", numberOfPhotosLabel: "5", chevronImage: nil)],
        
        // first section
        [AlbumsModel(albumImage: "whatsapp", albumName: "Семья", numberOfPhotosLabel: "From You", chevronImage: nil),
         AlbumsModel(albumImage: "dropbox", albumName: "Gang", numberOfPhotosLabel: "From You", chevronImage: nil)],
        
        // second section
        [AlbumsModel(albumImage: "video",
                     albumName: "Videos",
                     numberOfPhotosLabel: "157",
                     chevronImage: "chevron.forward"),
         AlbumsModel(albumImage: "camera",
                     albumName: "Selfies",
                     numberOfPhotosLabel: "97",
                     chevronImage: "chevron.forward"),
         AlbumsModel(albumImage: "livephoto",
                     albumName: "Live Photos",
                     numberOfPhotosLabel: "723",
                     chevronImage: "chevron.forward"),
         AlbumsModel(albumImage: "rectangle.portrait",
                     albumName: "Portrait",
                     numberOfPhotosLabel: "11",
                     chevronImage: "chevron.forward"),
         AlbumsModel(albumImage: "pano",
                     albumName: "Panoramas",
                     numberOfPhotosLabel: "1",
                     chevronImage: "chevron.forward"),
         AlbumsModel(albumImage: "slowmo",
                     albumName: "Slo-mo",
                     numberOfPhotosLabel: "6",
                     chevronImage: "chevron.forward"),
         AlbumsModel(albumImage: "camera.viewfinder",
                     albumName: "Screenshots",
                     numberOfPhotosLabel: "526",
                     chevronImage: "chevron.forward"),
         AlbumsModel(albumImage: "record.circle",
                     albumName: "ScreenRecordings",
                     numberOfPhotosLabel: "13",
                     chevronImage: "chevron.forward")],
        
        // third section
        [AlbumsModel(albumImage: "square.and.arrow.down",
                     albumName: "Imports",
                     numberOfPhotosLabel: "32",
                     chevronImage: "chevron.forward"),
         AlbumsModel(albumImage: "eye.slash",
                     albumName: "Hidden",
                     numberOfPhotosLabel: "0",
                     chevronImage: "chevron.forward"),
         AlbumsModel(albumImage: "trash",
                     albumName: "Recently Deleted",
                     numberOfPhotosLabel: "5",
                     chevronImage: "chevron.forward")]
    ]
}
