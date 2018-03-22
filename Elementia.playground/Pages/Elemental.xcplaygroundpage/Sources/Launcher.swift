import Foundation
import UIKit
import SpriteKit
import PlaygroundSupport

public class Launcher{
    
    public static let instance = Launcher()
    var width : Int
    var height : Int
    var view : SKView
    var currentScene : SKScene?
    var frame : CGRect
    
    
    
    init() {
        width = 400
        height = 600
        
        frame = CGRect(x: 0, y: 0, width: width, height: height)
        view = SKView(frame: frame)
        
        PlaygroundPage.current.liveView = view
        PlaygroundPage.current.needsIndefiniteExecution = true
        
        //Diagnostics
        //view.showsFPS = true
        //view.showsPhysics = true
        //view.showsNodeCount = true
    }
    
    
    public func startGame()
    {
        currentScene = Game(size: CGSize(width: width, height: height))
        view.presentScene(currentScene!, transition: SKTransition.doorsCloseHorizontal(withDuration: 1.5))
    }
    
    
    
    
    public func titleScreen()
    {
        currentScene = TitleScreen(size: CGSize(width: width, height: height))
        view.presentScene(currentScene!)
    }
    
    
}
