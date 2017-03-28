//
//  MainMenuScene.swift
//  Fruit Eater
//
//  Created by MacBook on 10/6/16.
//  Copyright © 2016 Awesome Tuts. All rights reserved.
//

import SpriteKit

class ResumeMenuScene: SKScene {
    
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
            
            if atPoint(location).name == "Resume" {
                
                if let scene = GameplaySceneClass(fileNamed: "GameplayScene") {
                    // Set the scale mode to scale to fit the window
                    scene.scaleMode = .aspectFill
                    
                    view!.presentScene(scene, transition: SKTransition.doorsOpenVertical(withDuration: TimeInterval(0)));
                }
                
                      self.scene?.view?.isPaused = false;
                    
                
                
                
                
            }
            
            if atPoint(location).name == "Restart" {
                if let scene = GameplaySceneClass(fileNamed: "GameplayScene") {
                    // Set the scale mode to scale to fit the window
                    scene.scaleMode = .aspectFill
                    
                      view!.presentScene(scene, transition: SKTransition.doorsOpenVertical(withDuration: TimeInterval(1)));
                }
            }
            
                if atPoint(location).name == "Exit" {
                    if let scene = MainMenuScene(fileNamed: "MainMenu") {
                        // Set the scale mode to scale to fit the window
                        scene.scaleMode = .aspectFill
                        
                        // Present the scene
                        view!.presentScene(scene, transition: SKTransition.doorsOpenVertical(withDuration: TimeInterval(1)));
                        
                        
                    }
            
            
            
           
            
        }
        
        
    }
    
    
}

}


// class







































