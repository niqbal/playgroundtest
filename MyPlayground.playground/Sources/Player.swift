//  Created by Ahmad Iqbal on 4/1/17.
//  Copyright © 2017 Ahmad Iqbal. All rights reserved.

import SpriteKit

public class Player: SKSpriteNode {
    
    private var minX = CGFloat(-200), maxX = CGFloat(200);
    
    func initializePlayer() {
        name = "Player";
        setScale(2.0);
        physicsBody = SKPhysicsBody(circleOfRadius: size.height/3);
        physicsBody?.affectedByGravity = false;
        physicsBody?.isDynamic = false;
        physicsBody?.categoryBitMask = ColliderType.PLAYER;
        physicsBody?.contactTestBitMask = ColliderType.FRUIT_AND_BOMB;
        
    }
    
    func move(left: Bool) {
        if left {
            
            position.x -= 30;
            
            if position.x < minX {
                position.x = minX;
            }
            
        } else {
            
            position.x += 30;
            
            if position.x > maxX {
                position.x = maxX;
            }
            
        }
    }
    
} // class













































