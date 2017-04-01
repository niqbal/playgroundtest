//
//  NextMenuScene.swift
//  Fruit Eater
//
//  Created by Ahmad Iqbal on 3/24/17.
//  Copyright © 2017 Awesome Tuts. All rights reserved.
//

import SpriteKit

var count = 0;

class NextMenu: SKScene {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches {
            let location = touch.location(in: self);
            
            if atPoint(location).name == "next" {
                if(count==0){
                    count+=1;
                if let scene = SecondScene(fileNamed: "SecondScene") {
                    // Set the scale mode to scale to fit the window
                    scene.scaleMode = .aspectFill
                    
                    // Present the scene
                    view!.presentScene(scene, transition: SKTransition.doorsOpenVertical(withDuration: TimeInterval(1)));
                    }
                }
                
                
                if(count==1){
                    count+=1;
                    if let scene = ThirdScene(fileNamed: "ThirdScene") {
                        // Set the scale mode to scale to fit the window
                        scene.scaleMode = .aspectFill
                        
                        // Present the scene
                        view!.presentScene(scene, transition: SKTransition.doorsOpenVertical(withDuration: TimeInterval(1)));
                    }
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
    
    
} // class

