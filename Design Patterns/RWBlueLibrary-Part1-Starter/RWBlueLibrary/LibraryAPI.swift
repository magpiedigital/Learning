//
//  LibraryAPI.swift
//  RWBlueLibrary
//
//  Created by Hamish Johnson on 2018-03-08.
//  Copyright © 2018 Razeware LLC. All rights reserved.
//

import Foundation

class LibraryAPI {
  
  static let shared = LibraryAPI()
  
  private let persistencyManager = PersistencyManager()
  private let httpClient = HTTPClient()
  private let isOnline = false
  
  private init() {
    
  }
  
  func getAlbums() -> [Album] {
    return persistencyManager.getAlbums()
  }
  
  func addAlbum(_ album: Album, at index: Int) {
    persistencyManager.addAlbum(album, at: index)
    if isOnline {
      httpClient.postRequest("api/addAlbum", body: album.description)
    }
  }
  
  func deleteAlbum(at index: Int) {
    persistencyManager.deleteAlbum(at: index)
    if isOnline {
      httpClient.postRequest("api/deleteAlbum", body: "\(index)")
    }
  }
}
