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
}

extension AlbumsModel {
    static let albumsModelsArray = [
        // zero section
        [AlbumsModel(albumImage: "recents", albumName: "Recents", numberOfPhotosLabel: "1998"),
         AlbumsModel(albumImage: "favorites", albumName: "Favorites", numberOfPhotosLabel: "500"),
         AlbumsModel(albumImage: "football", albumName: "Football", numberOfPhotosLabel: "10"),
         AlbumsModel(albumImage: "instagram", albumName: "Instagram", numberOfPhotosLabel: "37"),
         AlbumsModel(albumImage: "dropbox", albumName: "Dropbox", numberOfPhotosLabel: "14"),
         AlbumsModel(albumImage: "whatsapp", albumName: "Whatsapp", numberOfPhotosLabel: "5")],
        
        // first section
        [AlbumsModel(albumImage: "whatsapp", albumName: "Семья", numberOfPhotosLabel: "From You"),
         AlbumsModel(albumImage: "dropbox", albumName: "Gang", numberOfPhotosLabel: "From You")],
        
        // second section
        [AlbumsModel(albumImage: "video", albumName: "Videos", numberOfPhotosLabel: "157"),
         AlbumsModel(albumImage: "camera", albumName: "Selfies", numberOfPhotosLabel: "97"),
         AlbumsModel(albumImage: "livephoto", albumName: "Live Photos", numberOfPhotosLabel: "723"),
         AlbumsModel(albumImage: "rectangle.portrait", albumName: "Portrait", numberOfPhotosLabel: "11"),
         AlbumsModel(albumImage: "pano", albumName: "Panoramas", numberOfPhotosLabel: "1"),
         AlbumsModel(albumImage: "slowmo", albumName: "Slo-mo", numberOfPhotosLabel: "6"),
         AlbumsModel(albumImage: "camera.viewfinder", albumName: "Screenshots", numberOfPhotosLabel: "526"),
         AlbumsModel(albumImage: "record.circle", albumName: "ScreenRecordings", numberOfPhotosLabel: "13")],
        
        // third section
        [AlbumsModel(albumImage: "square.and.arrow.down", albumName: "Imports", numberOfPhotosLabel: "32"),
         AlbumsModel(albumImage: "eye.slash", albumName: "Hidden", numberOfPhotosLabel: "0"),
         AlbumsModel(albumImage: "trash", albumName: "Recently Deleted", numberOfPhotosLabel: "5")]
    ]
}
