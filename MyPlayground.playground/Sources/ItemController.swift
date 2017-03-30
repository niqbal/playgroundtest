//
//  ItemController.swift
//  Fruit Eater
//
//  Created by MacBook on 10/7/16.
//  Copyright © 2016 Awesome Tuts. All rights reserved.
//

import SpriteKit

struct ColliderType {
    static let PLAYER: UInt32 = 0;
    static let FRUIT_AND_BOMB: UInt32 = 1;
}

class ItemController {
        private var minX = CGFloat(-200), maxX = CGFloat(200);

    func spawnItems() -> SKSpriteNode {
        var item: SKSpriteNode?;
        
        if Int(randomBetweenNumbers(firstNum: 0, secondNum: 100)) >= 90 {
            item = SKSpriteNode(imageNamed: "Bomb");
            item!.name = "Bomb";
            item!.setScale(0.6);
            
            
            item!.physicsBody = SKPhysicsBody(circleOfRadius: item!.size.height / 2);
            
            
        }
        
    
        else {
            
            let num = Int(randomBetweenNumbers(firstNum: 1, secondNum: 95));
            if(num > 26 && num <= 34){
                
                item = SKSpriteNode(imageNamed: "Alpha \(1)");
                item!.name = "Alpha \(1)";
                item!.setScale(0.4);
                item!.physicsBody = SKPhysicsBody(circleOfRadius: item!.size.height / 2);

                
            }
            if(num > 34 && num <= 42){
                
                item = SKSpriteNode(imageNamed: "Alpha \(16)");
                item!.name = "Alpha \(16)";
                item!.setScale(0.4);
                item!.physicsBody = SKPhysicsBody(circleOfRadius: item!.size.height / 2);
                
                
            }
            if(num > 42 && num <= 50 ){
                
                item = SKSpriteNode(imageNamed: "Alpha \(5)");
                item!.name = "Alpha \(5)";
                item!.setScale(0.4);
                item!.physicsBody = SKPhysicsBody(circleOfRadius: item!.size.height / 2);
                
                
            }
            
            if(num > 50 && num <= 59 ){
                
                item = SKSpriteNode(imageNamed: "Alpha \(7)");
                item!.name = "Alpha \(7)";
                item!.setScale(0.4);
                item!.physicsBody = SKPhysicsBody(circleOfRadius: item!.size.height / 2);
                
                
            }
            if(num > 59 && num <= 67 ){
                
                item = SKSpriteNode(imageNamed: "Alpha \(12)");
                item!.name = "Alpha \(12)";
                item!.setScale(0.4);
                item!.physicsBody = SKPhysicsBody(circleOfRadius: item!.size.height / 2);
                
                
            }
            if(num > 67 && num <= 75 ){
                
                item = SKSpriteNode(imageNamed: "Alpha \(14)");
                item!.name = "Alpha \(14)";
                item!.setScale(0.4);
                item!.physicsBody = SKPhysicsBody(circleOfRadius: item!.size.height / 2);
                
                
            }
            
            if(num > 75 && num <= 82 ){
                
                item = SKSpriteNode(imageNamed: "Alpha \(15)");
                item!.name = "Alpha \(15)";
                item!.setScale(0.4);
                item!.physicsBody = SKPhysicsBody(circleOfRadius: item!.size.height / 2);
                
                
            }
            if(num > 82 && num <= 88 ){
                
                item = SKSpriteNode(imageNamed: "Alpha \(16)");
                item!.name = "Alpha \(16)";
                item!.setScale(0.4);
                item!.physicsBody = SKPhysicsBody(circleOfRadius: item!.size.height / 2);
                
                
            }
            
            if(num > 88 && num <= 95 ){
                
                item = SKSpriteNode(imageNamed: "Alpha \(18)");
                item!.name = "Alpha \(18)";
                item!.setScale(0.4);
                item!.physicsBody = SKPhysicsBody(circleOfRadius: item!.size.height / 2);
                
                
            }
            
            
            
            
            if(num<=26){
            item = SKSpriteNode(imageNamed: "Alpha \(num)");
            item!.name = "Alpha \(num)";
            item!.setScale(0.4);
            item!.physicsBody = SKPhysicsBody(circleOfRadius: item!.size.height / 2);

            }
            
        }
    
    
        
        item!.physicsBody?.categoryBitMask = ColliderType.FRUIT_AND_BOMB;
        
        item!.zPosition = 3;
        item!.anchorPoint = CGPoint(x: 0.5, y: 0.5);
        
        item!.position.x = randomBetweenNumbers(firstNum: minX, secondNum: maxX);
        item!.position.y=500;
      
      
        
        return item!;
    }
    

    
    func randomBetweenNumbers(firstNum: CGFloat, secondNum: CGFloat) -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UINT32_MAX) * abs(firstNum - secondNum) + min(firstNum, secondNum);
    }
    
} // class











































