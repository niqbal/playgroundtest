//
//  MainMenuScene.swift
//  Fruit Eater
//
//  Created by MacBook on 10/6/16.
//  Copyright © 2016 Awesome Tuts. All rights reserved.
//

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
                if let scene = GameplaySceneClass(fileNamed: "GameplayScene") {
                    // Set the scale mode to scale to fit the window
                    scene.scaleMode = .aspectFill
                    
                    // Present the scene
                    view!.presentScene(scene, transition: SKTransition.doorsOpenVertical(withDuration: TimeInterval(1)));
                }
                
                
            }
            
            
            
            if nodes(at: location)[0].name == "Music" {
                handleMusicButton();
            }
        
            }

            
        }
        
        
    }
    
    
    
 // class







































