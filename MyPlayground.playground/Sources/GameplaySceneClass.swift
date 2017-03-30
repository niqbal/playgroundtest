//
//  GameplaySceneClass.swift
//  Fruit Eater
//
//  Created by MacBook on 10/6/16.
//  Copyright © 2016 Awesome Tuts. All rights reserved.
//

import SpriteKit

public class GameplaySceneClass: SKScene, SKPhysicsContactDelegate {
    
     var player: Player?;
     var iMProgressBar: IMProgressBar?;
     var item: SKSpriteNode?;
    public var center = CGFloat();
    public var t : CGFloat =  0.5;
    public var num : CGFloat = 0;
     public var w : CGFloat =  225;
    public var x : CGFloat =  32;
    public var canMove = false, moveLeft = false;
    
    var itemController = ItemController();
    
    public var scoreLabel: SKLabelNode?;
    public var score = 0;
    var count = 0;
    var n1=0;
    var n2=0;
    var n3=0;
    var n4=0;
    var n5=0;
   
    
    override public func didMove(to view: SKView) {
//        let barra = SKShapeNode(rectOf: CGSize(width: w, height: 32.565))
//        barra.name = "bar"
//        barra.fillColor = SKColor.green
//        barra.position.x = x;
//        barra.position.y=360.565;
//        barra.zPosition=6;
//        self.addChild(barra)
        initializeGame();
   
        
    }
    
    override public func update(_ currentTime: TimeInterval) {
        managePlayer();
    }
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches {
            let location = touch.location(in: self);
            
            if location.x > center {
                moveLeft = false;
            } else {
                moveLeft = true;
            }
            
            if atPoint(location).name == "Pause"{
                
                self.scene?.isPaused = true;
                
                if let scene = ResumeMenuScene(fileNamed: "ResumeMenu") {
                    // Set the scale mode to scale to fit the window
                    scene.scaleMode = .aspectFill
                    
                    // Present the scene
                    view!.presentScene(scene, transition: SKTransition.doorsOpenVertical(withDuration: TimeInterval(0)));
                    
                    
                }
         
               
              
            }
            
            
        }
         //self.scene?.view?.isPaused = true;
        canMove = true;
        
        
}
    
     override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        canMove = false;
    }
    
     public func didBegin(_ contact: SKPhysicsContact) {
        
//        let barra = SKShapeNode(rectOf: CGSize(width: w, height: 32.565))
//        barra.name = "bar"
//        barra.fillColor = SKColor.green
//        barra.position.x = x;
//        barra.position.y=360.565;
//        barra.zPosition=6;
//        self.addChild(barra)
//        
        
        var firstBody = SKPhysicsBody();
        var secondBody = SKPhysicsBody();
      //  childNode(withName: "power")?.xScale = 1;
        
        if contact.bodyA.node?.name == "Player" {
            firstBody = contact.bodyA;
            secondBody = contact.bodyB;
        } else {
            firstBody = contact.bodyB;
            secondBody = contact.bodyA;
        }
        
        
       

        
       
        
        if (firstBody.node?.name)! == "Player" && (secondBody.node?.name == "Alpha 1" || secondBody.node?.name == "Alpha 5" || secondBody.node?.name == "Alpha 12" || secondBody.node?.name == "Alpha 16" || secondBody.node?.name == "Bomb") {
     
          
            print(firstBody.node?.name);
            print(secondBody.node?.name);

            AudioManager.instance.stopBGMusic();
            
            self.run(SKAction.playSoundFileNamed("coin.ogg", waitForCompletion: false));
            AudioManager.instance.stopBGMusic();
        
           
           
            if(secondBody.node?.name=="Alpha 1" && n1==0){
            
                childNode(withName:"a")?.alpha=1;
                score += 1;
                count += 1;
                scoreLabel?.text = String(score);
                secondBody.node?.removeFromParent();
                n1+=1;
              //  AudioManager.instance.stopBGMusic();
                self.run(SKAction.changeVolume(to: Float(0.4), duration: 0.2))
                self.run(SKAction.playSoundFileNamed("Explosion.wav", waitForCompletion: false));
                //AudioManager.instance.stopBGMusic();
                
            }
            
            if(secondBody.node?.name=="Alpha 5" && n2==0){
                
                childNode(withName:"e")?.alpha=1;
                score += 1;
                count = count+1;
                scoreLabel?.text = String(score);
                secondBody.node?.removeFromParent();
                n2+=1;
               // AudioManager.instance.stopBGMusic();
                self.run(SKAction.changeVolume(to: Float(1), duration: 0.5))
                self.run(SKAction.playSoundFileNamed("coin.ogg", waitForCompletion: false));
               // AudioManager.instance.stopBGMusic();
                
            }
            
            if(secondBody.node?.name=="Alpha 12" && n3==0){
                
                childNode(withName:"l")?.alpha=1;
                score += 1;
                count = count+1;
                scoreLabel?.text = String(score);
                secondBody.node?.removeFromParent();
                n3+=1;
                AudioManager.instance.stopBGMusic();
                
                self.run(SKAction.playSoundFileNamed("coin.ogg", waitForCompletion: false));
                AudioManager.instance.stopBGMusic();
                
            }
            
            if(secondBody.node?.name=="Alpha 16" && n4==0){
                
                childNode(withName:"p1")?.alpha=1;
                score += 1;
                count = count+1;
                scoreLabel?.text = String(score);
                secondBody.node?.removeFromParent();
                n4+=1;
                AudioManager.instance.stopBGMusic();
                
                self.run(SKAction.playSoundFileNamed("coin.ogg", waitForCompletion: false));
                AudioManager.instance.stopBGMusic();
                
            }
            
            if(secondBody.node?.name=="Alpha 16" && n5==0){
                
                childNode(withName:"p")?.alpha=1;
                score += 1;
                count = count+1;
                scoreLabel?.text = String(score);
                secondBody.node?.removeFromParent();
                n5+=1;
              
                
                self.run(SKAction.playSoundFileNamed("coin.ogg", waitForCompletion: false));
              
                
            }
            
            if(secondBody.node?.name=="Bomb"){
                secondBody.node?.removeFromParent();
                
                t=t-0.1
                
                childNode(withName: "Bar")?.xScale = t;
                
                
                AudioManager.instance.stopBGMusic();
                
                self.run(SKAction.playSoundFileNamed("Explosion.wav", waitForCompletion: false));
                AudioManager.instance.stopBGMusic();
                //AudioManager.instance.stopBGMusic();
                //  AudioManager.instance.stopBGMusic();
                
                
                AudioManager.instance.playBGMusic();
                
                
            }
            
        
            
          
            if(count==5){
                
                if let scene = NextMenu(fileNamed: "NextMenu") {
                    // Set the scale mode to scale to fit the window
                    scene.scaleMode = .aspectFill
                    
                    // Present the scene
                    view!.presentScene(scene, transition: SKTransition.doorsOpenVertical(withDuration: TimeInterval(1)));
                }
                
               
                
            
            }
        
    }
            
        
        
            
       else  {
           // firstBody.node?.removeFromParent();
            
            
            AudioManager.instance.playBGMusic();
            
//           if (firstBody.node?.name) == "Player" && (secondBody.node?.name != "Alpha 1" && secondBody.node?.name != "Alpha (5)" && secondBody.node?.name != "Alpha 12" && secondBody.node?.name != "Alpha 16)")  {
            
           // print(firstBody.node?.name);
           // print(secondBody.node?.name);
                t=t-0.05;
                
               childNode(withName: "Bar")?.xScale = t;
           
           // }
            
            if(t<0.1){
                
                if let scene = GameOverScene(fileNamed: "GameOverMenu") {
                    // Set the scale mode to scale to fit the window
                    scene.scaleMode = .aspectFill
                    
                    // Present the scene
                    view!.presentScene(scene, transition: SKTransition.doorsOpenVertical(withDuration: TimeInterval(1)));
                }
                
            }
            
          
        }
        
    
    }
    

    
    private func initializeGame() {
        
        physicsWorld.contactDelegate = self;
        
        player = childNode(withName: "Player") as? Player!;
        player?.initializePlayer();
        
        scoreLabel = childNode(withName: "ScoreLabel") as? SKLabelNode!;
        scoreLabel?.text = "0";
        
        center = self.frame.size.width / self.frame.size.height;
        
        Timer.scheduledTimer(timeInterval: TimeInterval(itemController.randomBetweenNumbers(firstNum: 1, secondNum: 2)), target: self, selector: #selector(GameplaySceneClass.spawnItems), userInfo: nil, repeats: true);
        
        Timer.scheduledTimer(timeInterval: TimeInterval(2), target: self, selector: #selector(GameplaySceneClass.removeItems), userInfo: nil, repeats: true);
        
    }
    
    private func managePlayer() {
        if canMove {
            player?.move(left: moveLeft);
        }
    }
    
    func spawnItems() {
     
        let randomNum:UInt32 = arc4random_uniform(1);
        
        for _ in 0...randomNum{
        
        self.scene?.addChild(itemController.spawnItems());
    
        }
    }
    
    func restartGame() {
        if let scene = GameplaySceneClass(fileNamed: "GameplayScene") {
            scene.scaleMode = .aspectFill
            view?.presentScene(scene, transition: SKTransition.doorsOpenHorizontal(withDuration: TimeInterval(2)))
        }
    }
    
    
    
    func removeItems() {
        for child in children {
            if child.name == "Alpha" || child.name == "Bomb" {
                if child.position.y < -self.scene!.frame.height - 100 {
                    child.removeFromParent();
                }
            }
        }
    }
    
    
    

    
} // class







































