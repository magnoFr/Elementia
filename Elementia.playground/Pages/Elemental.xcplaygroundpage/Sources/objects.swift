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
        
        self.shape = SKSpriteNode(imageNamed : "DesertBack")
        shape.position = position
        shape.scale(to:size)
        shape.zPosition = 0
        
        if(parent != nil)
        {
            parent?.addChild(self.shape)
        }
    }
}

public class LabelGame{
    
    let backgroundMenu : SKSpriteNode
    let caos : SKSpriteNode
    let ordem : SKSpriteNode
    
    public init(position : CGPoint, size : CGSize, parent : SKNode?){
        
        //Para a cor de fundo
        self.backgroundMenu = SKSpriteNode(imageNamed: "Label")
        backgroundMenu.position = position
        backgroundMenu.scale(to: size)
        backgroundMenu.zPosition = 110
        
        if(parent != nil)
        {
            parent?.addChild(self.backgroundMenu)
        }
        
        //Para o caos
        self.caos = SKSpriteNode(imageNamed: "Caos")
        caos.position = CGPoint(x: 8*position.x/5, y: position.y)
        caos.zPosition = backgroundMenu.zPosition + 10
        
        if(parent != nil)
        {
            parent?.addChild(self.caos)
        }
        
        //Para a ordem
        self.ordem = SKSpriteNode(imageNamed: "Caos")
        ordem.position = CGPoint(x: 6*caos.position.x/10, y: position.y)
        ordem.zPosition = backgroundMenu.zPosition + 10
        
        if(parent != nil)
        {
            parent?.addChild(self.ordem)
        }
        
    }
    
    
}

