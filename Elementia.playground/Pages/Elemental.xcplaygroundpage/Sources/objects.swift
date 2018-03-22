import Foundation
import SpriteKit



public class Tree 
{
    var shape : SKSpriteNode


    public init(position : CGPoint, size : CGSize, parent : SKNode?){

        self.shape = SKSpriteNode(imageNamed : "Tree")
        shape.position = position
        shape.scale(to:size)
        shape.zPosition = 100

        if(parent != nil)
        {
            parent?.addChild(self.shape)
        }
    }
}




public class Deserto
{
    var shape : SKSpriteNode
    
    
    public init(position : CGPoint, size : CGSize, parent : SKNode?){
        
        self.shape = SKSpriteNode(imageNamed : "Desert.jpeg")
        shape.position = position
        shape.scale(to:size)
        shape.zPosition = 0
        
        if(parent != nil)
        {
            parent?.addChild(self.shape)
        }
    }
}



