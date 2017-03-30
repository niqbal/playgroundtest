//: Playground - noun: a place where people can play

import UIKit
//@testable import GamePlayground
import PlaygroundSupport
import SpriteKit






var str = "Hello, playground"


//var bundleId = Bundle.main.bundleIdentifier
//
//let myBundle = Bundle(identifier: Bundle.main.bundleIdentifier!)
//let storyboard = UIStoryboard(name: "Main", bundle: myBundle)
////
//let gvc = storyboard.instantiateInitialViewController() as! GameViewController

//let controller = storyboard.instantiateViewController(withIdentifier: "GameViewController")
//controller.present()

//let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())


let s = GameViewController.loadFromStoryboard()
PlaygroundPage.current.liveView = s

