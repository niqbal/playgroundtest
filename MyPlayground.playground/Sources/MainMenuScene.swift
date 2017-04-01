//  Created by Ahmad Iqbal on 4/1/17.
//  Copyright © 2017 Ahmad Iqbal. All rights reserved.

import SpriteKit

class MainMenuScene: SKScene {
    
    var BackGroundMusic: SKAudioNode!;
    private var musicBtn: SKSpriteNode?;
    private var musicOn = SKTexture(imageNamed: "Music On Button");
    private var musicOff = SKTexture(imageNamed: "Music Off Button");
    
    override func didMove(to view: SKView) {
        
        AudioManager.instance.playBGMusic();
    }
    
    
    private func setMusic() {
        if GameManager.instance.getIsMusicOn() {
            if AudioManager.instance.isAudioPlayerInitialized() {
                AudioManager.instance.playBGMusic();
                musicBtn?.texture = musicOff;
            }
        }
    }
    
    private func handleMusicButton() {
        if GameManager.instance.getIsMusicOn() {
            AudioManager.instance.stopBGMusic();
            GameManager.instance.setIsMusicOn(false);
            musicBtn?.texture = musicOn;
        } else {
            AudioManager.instance.playBGMusic();
            GameManager.instance.setIsMusicOn(true);
            musicBtn?.texture = musicOff;
        }
        GameManager.instance.saveData();
    }
    
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches {
            let location = touch.location(in: self);
            
            if atPoint(location).name == "Start" {
                if let scene = GameplaySceneClass(fileNamed: "GameplayScene"){
                    // Set the scale mode to scale to fit the window
                    scene.scaleMode = .aspectFill
                    
                    // Present the scene
                    view!.presentScene(scene, transition: SKTransition.doorsOpenVertical(withDuration: TimeInterval(1)));
                }
                
                
            }
            
            
            
            if atPoint(location).name == "How To Play" {
                if let scene = HowToPlay(fileNamed: "HowToPlay") {
                    // Set the scale mode to scale to fit the window
                    scene.scaleMode = .aspectFill
                    
                    // Present the scene
                    view!.presentScene(scene, transition: SKTransition.doorsOpenVertical(withDuration: TimeInterval(1)));
                }
                
                
            }
            
            
            
            
            
            
        }
        
        
    }
    
    
    
} // class







































