//
//  ViewController.swift
//  yayin
//
//  Created by Erkan Kavas on 20.02.2019.
//  Copyright © 2019 Erkan Kavas. All rights reserved.
//

import Cocoa
import AppKit
import AVKit
import AVFoundation

class ViewController: NSViewController {

    
    @IBOutlet weak var player: AVPlayerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

            let fileURL = URL(string: "https://jviqfbc2.rocketcdn.com/dmax.smil/chunklist.m3u8")
            let avAsset = AVURLAsset(url: fileURL!, options: nil)
            
            let playerItem = AVPlayerItem(asset: avAsset)
            let videoPlayer = AVPlayer(playerItem: playerItem)
            player.player = videoPlayer
            videoPlayer.play()
        }
        
}
