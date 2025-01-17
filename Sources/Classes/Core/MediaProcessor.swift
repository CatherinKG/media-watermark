//
//  MediaProcessor.swift
//  MediaWatermark
//
//  Created by Sergei on 23/05/2017.
//  Copyright © 2017 rubygarage. All rights reserved.
//

import Foundation

public class MediaProcessor {
    public var filterProcessor: FilterProcessor! = nil
    
    public init() {}
    
    // MARK: - process elements
    public func processElements(item: MediaItem, fileName: String, folderName: String, completion: @escaping ProcessCompletionHandler) {
        item.type == .video ? processVideoWithElements(item: item,videoFileName:fileName, folderName: folderName, completion: completion) : processImageWithElements(item: item, completion: completion)
    }
}
