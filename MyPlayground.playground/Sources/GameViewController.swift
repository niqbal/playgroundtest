//
//  GameViewController.swift
//  Fruit Eater
//
//  Created by MacBook on 10/6/16.
//  Copyright © 2016 Awesome Tuts. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit
import PlaygroundSupport

@objc(GameViewController)

public class GameViewController: UIViewController {
    
    override public func viewDidLoad() {
        
        
        
        super.viewDidLoad()
        
       
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = MainMenuScene(fileNamed: "MainMenu") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsPhysics = true;
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }
    

    override public var shouldAutorotate: Bool {
        return true
    }

    override public var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override public var prefersStatusBarHidden: Bool {
        return true
    }
    

    public class func loadFromStoryboard() -> GameViewController {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        //storyboard.presentScene(MainMenuScene)
        return storyboard.instantiateInitialViewController() as! GameViewController
    }

};

//public extension GameViewController  {
//    class func loadFromStoryboard() -> GameViewController {
//        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
//        //storyboard.presentScene(MainMenuScene)
//        return storyboard.instantiateInitialViewController() as! GameViewController
//}
//}
