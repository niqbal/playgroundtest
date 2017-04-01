//  Created by Ahmad Iqbal on 4/1/17.
//  Copyright © 2017 Ahmad Iqbal. All rights reserved.

import UIKit
import SpriteKit
import GameplayKit
import PlaygroundSupport

class GameplaySceneClass: SKScene, SKPhysicsContactDelegate {
    
    var player: Player?
    
    public var iMProgressBar: IMProgressBar?;
     var item: SKSpriteNode?;
    public var center = CGFloat();
    public var t : CGFloat =  0.5;
    public var num : CGFloat = 0;
     public var w : CGFloat =  225;
    public var x : CGFloat =  32;
    public var canMove = false, moveLeft = false;
   
    private var pausePanel: SKSpriteNode?
    private var minX = CGFloat(-200), maxX = CGFloat(200);

    
    public var itemController = ItemController();
    
    public var scoreLabel: SKLabelNode?;
    public var score = 0;
    var count = 0;
    var n1=0;
    var n2=0;
    var n3=0;
    var n4=0;
    var n5=0;
    public var Pausenum : CGFloat = 0;
   
    
    override func didMove(to view: SKView) {

    initializeGame();
   
        
    }
    
    override public func update(_ currentTime: TimeInterval) {
        managePlayer();
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches {
            let location = touch.location(in: self);
            
            if location.x > center {
                moveLeft = false;
            } else {
                moveLeft = true;
            }
            
            if nodes(at: location)[0].name == "Pause" {
                createPausePanel();
                
                let pauseAction = SKAction.run {
                    self.view?.isPaused = true
                    
                    
                }
                self.run(pauseAction)

                
                
                
              //  self.view?.isPaused = true;
                
            }
            
            if nodes(at: location)[0].name == "Resume" {
                Pausenum=0
                self.pausePanel?.removeFromParent();
                
                let pauseAction = SKAction.run {
                    self.view?.isPaused = false
                    
                    
                }
                self.run(pauseAction)
                
                
                
            }
            
            if nodes(at: location)[0].name == "exit" {
//                let pauseAction = SKAction.run {
//                    self.view?.isPaused = false
//                    
//                    
//                }
              Pausenum=0
                self.view?.isPaused = false
                print("ahmad")
                let scene = MainMenuScene(fileNamed: "MainMenu");
                scene?.scaleMode = SKSceneScaleMode.aspectFill;
                self.view?.presentScene(scene!, transition: SKTransition.doorsCloseVertical(withDuration: 1));
            }

            
            
        }
         //self.scene?.view?.isPaused = true;
        canMove = true;
        
        
}
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        canMove = false;
    }
    
     func didBegin(_ contact: SKPhysicsContact) {
        
        
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
     
          
           // print(firstBody.node?.name);
           // print(secondBody.node?.name);

            AudioManager.instance.stopBGMusic();
            
            self.run(SKAction.playSoundFileNamed("coin.mp3", waitForCompletion: false));
            AudioManager.instance.stopBGMusic();
        
           
           
            if(secondBody.node?.name=="Alpha 1" && n1==0){
            
                childNode(withName:"a")?.alpha=1;
                score += 1;
                count += 1;
                scoreLabel?.text = String(score);
                secondBody.node?.removeFromParent();
                n1+=1;
              
                self.run(SKAction.changeVolume(to: Float(0.4), duration: 0.2))
                self.run(SKAction.playSoundFileNamed("coin.mp3", waitForCompletion: false));
                
                 AudioManager.instance.playBGMusic();
                
            }
            
            if(secondBody.node?.name=="Alpha 5" && n2==0){
                
                childNode(withName:"e")?.alpha=1;
                score += 1;
                count = count+1;
                scoreLabel?.text = String(score);
                secondBody.node?.removeFromParent();
                n2+=1;
                self.run(SKAction.changeVolume(to: Float(0.4), duration: 0.2))
                self.run(SKAction.playSoundFileNamed("coin.mp3", waitForCompletion: false));
                
                AudioManager.instance.playBGMusic();
            }
            
            if(secondBody.node?.name=="Alpha 12" && n3==0){
                
                childNode(withName:"l")?.alpha=1;
                score += 1;
                count = count+1;
                scoreLabel?.text = String(score);
                secondBody.node?.removeFromParent();
                n3+=1;
                self.run(SKAction.changeVolume(to: Float(0.4), duration: 0.2))
                self.run(SKAction.playSoundFileNamed("coin.mp3", waitForCompletion: false));
                
                AudioManager.instance.playBGMusic();
                
            }
            
            if(secondBody.node?.name=="Alpha 16" && n4==0){
                
                childNode(withName:"p1")?.alpha=1;
                score += 1;
                count = count+1;
                scoreLabel?.text = String(score);
                secondBody.node?.removeFromParent();
                n4+=1;
                self.run(SKAction.changeVolume(to: Float(0.4), duration: 0.2))
                self.run(SKAction.playSoundFileNamed("coin.mp3", waitForCompletion: false));
                
                AudioManager.instance.playBGMusic();
            }
            
            if(secondBody.node?.name=="Alpha 16" && n5==0){
                
                childNode(withName:"p")?.alpha=1;
                score += 1;
                count = count+1;
                scoreLabel?.text = String(score);
                secondBody.node?.removeFromParent();
                n5+=1;
              
                
                self.run(SKAction.changeVolume(to: Float(0.4), duration: 0.2))
                self.run(SKAction.playSoundFileNamed("coin.mp3", waitForCompletion: false));
                
                AudioManager.instance.playBGMusic();
              
                
            }
            
            if(secondBody.node?.name=="Bomb"){
                secondBody.node?.removeFromParent();
                
                t=t-0.1
                
                childNode(withName: "Bar")?.xScale = t;
                
                
                self.run(SKAction.changeVolume(to: Float(0.4), duration: 0.2))
                self.run(SKAction.playSoundFileNamed("Explosion.wav", waitForCompletion: false));
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
            
            self.run(SKAction.changeVolume(to: Float(0.4), duration: 0.2))
            self.run(SKAction.playSoundFileNamed("coin.mp3", waitForCompletion: false));
            
            AudioManager.instance.playBGMusic();

      
                t=t-0.05;
                
               childNode(withName: "Bar")?.xScale = t;
           
            
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
    

    
    
    public func initializeGame() {
        
        
       
//        var barra = SKSpriteNode(imageNamed: "Player");
//        barra.name = "Player"
//        self.addChild(barra);
//        barra.zPosition=3;
      
        physicsWorld.contactDelegate = self;
        player = childNode(withName: "Player") as? Player!;
        
     //   self.addChild(player!);
        
        print(player?.name)
        player?.initializePlayer();
        print(player?.name)
        
        
        scoreLabel = childNode(withName: "ScoreLabel") as? SKLabelNode!;
        scoreLabel?.text = "0";
        
         center = self.frame.size.width / self.frame.size.height;
        
        Timer.scheduledTimer(timeInterval: TimeInterval(itemController.randomBetweenNumbers(firstNum: 1, secondNum: 2)), target: self, selector: #selector(GameplaySceneClass.spawnItems), userInfo: nil, repeats: true);
        
        Timer.scheduledTimer(timeInterval: TimeInterval(2), target: self, selector: #selector(GameplaySceneClass.removeItems), userInfo: nil, repeats: true);
        
    }
    
    
    private func createPausePanel() {
        
        Pausenum=1;

        pausePanel = SKSpriteNode(imageNamed: "Pause Menu");
        let resumeBtn = SKSpriteNode(imageNamed: "Resume");
        let quitBtn = SKSpriteNode(imageNamed: "exit");
        
        pausePanel?.anchorPoint = CGPoint(x: 0.5, y: 0.5);
        pausePanel?.xScale = 1.6;
        pausePanel?.yScale = 1.3;
        pausePanel?.zPosition = 10;
        
        pausePanel?.position = CGPoint(x: -0, y: 0);
        
        resumeBtn.name = "Resume";
        resumeBtn.zPosition = 16;
        resumeBtn.anchorPoint = CGPoint(x: 0.5, y: 0.5);
        resumeBtn.size = CGSize(width: 100, height: 60);
        resumeBtn.position = CGPoint(x: pausePanel!.position.x, y: pausePanel!.position.y + 50);
        
        quitBtn.name = "exit";
        quitBtn.zPosition = 16;
        quitBtn.anchorPoint = CGPoint(x: 0.5, y: 0.5);
        quitBtn.size = CGSize(width: 100, height: 60)
        quitBtn.position = CGPoint(x: pausePanel!.position.x, y: pausePanel!.position.y - 20);
        
        pausePanel?.addChild(resumeBtn);
        pausePanel?.addChild(quitBtn);
        
        self.addChild(pausePanel!);
       
        
    }
    
    
    
    public func managePlayer() {
        if canMove {
            player?.move(left: moveLeft);
        }
    }
    
    
    
    func spawnItems() {
     
       
            
          if(Pausenum==1)
          {
            
            
          self.view?.isPaused = true
            
          }
            
          else {
            Pausenum=0;
            
             self.view?.isPaused = false
            
            let randomNum:UInt32 = arc4random_uniform(1);
            
            for _ in 0...randomNum{
                
                self.scene?.addChild(itemController.spawnItems());
            
           
            }
            
    
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







































