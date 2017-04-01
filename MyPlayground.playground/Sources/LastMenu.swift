//  Created by Ahmad Iqbal on 4/1/17.
//  Copyright © 2017 Ahmad Iqbal. All rights reserved.

import SpriteKit

class LastMenu: SKScene {

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches {
            let location = touch.location(in: self);
            
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
