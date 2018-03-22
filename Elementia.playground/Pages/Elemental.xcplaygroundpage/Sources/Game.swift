import SpriteKit


public class Game: SKScene {
    
    var width = 800
    var height = 800
    
    var tree : Tree?
    var deserto : Deserto?
    
    override public init(size: CGSize){
        super.init(size:size)
        
        // Inicializando a arvore
        let treePosition = CGPoint(x: 200, y: 200/2)
        let treeSize = CGSize(width: CGFloat(width/10), height: CGFloat(width)/CGFloat(9.1))
        self.tree = Tree(position: treePosition, size: treeSize, parent: self)
    
        //Inicializando o deserto
        let desertPosition = CGPoint(x: 200, y: 200/2)
        let desertSize = CGSize(width: CGFloat(width/2), height: CGFloat(width)/CGFloat(2.0))
        self.deserto = Deserto(position: desertPosition, size: desertSize, parent: self)
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

        
