//
//  GameOverScene.swift
//  Fruit Eater
//
//  Created by Ahmad Iqbal on 3/26/17.
//  Copyright © 2017 Awesome Tuts. All rights reserved.
//

import SpriteKit

class GameOverScene: SKScene{
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches {
            let location = touch.location(in: self);
            
            if atPoint(location).name == "restart" {
                if let scene = GameplaySceneClass(fileNamed: "GameplayScene") {
                    // Set the scale mode to scale to fit the window
                    scene.scaleMode = .aspectFill
                    
                    // Present the scene
                    view!.presentScene(scene, transition: SKTransition.doorsOpenVertical(withDuration: TimeInterval(1)));
                }
                
                
            }
            
            if atPoint(location).name == "exit" {
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
