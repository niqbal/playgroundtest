//
//  AudioManager.swift
//  Fruit Eater
//
//  Created by Ahmad Iqbal on 3/25/17.
//  Copyright © 2017 Awesome Tuts. All rights reserved.
//

import AVFoundation
import UIKit
import SpriteKit
import GameController
import PlaygroundSupport


class AudioManager {
    static let instance = AudioManager();
    private init() {}
    
    private var audioPlayer: AVAudioPlayer?;
    
    func playBGMusic() {
        let url = Bundle.main.url(forResource: "Background Music", withExtension: "mp3");
        
        var err: NSError?;
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: url!);
            audioPlayer?.numberOfLoops = -1;
            audioPlayer?.prepareToPlay();
            audioPlayer?.play();
        } catch let err1 as NSError {
            err = err1;
        }
        
        if err != nil {
            print(err);
        }
    }
    
    func stopBGMusic() {
        if (audioPlayer?.isPlaying) != nil {
            audioPlayer?.stop();
        }
    }
    
    func isAudioPlayerInitialized() -> Bool {
        return audioPlayer == nil;
    }
    
}

