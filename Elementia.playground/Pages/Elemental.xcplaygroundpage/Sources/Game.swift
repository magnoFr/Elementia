import SpriteKit


public class Game: SKScene {
    
    var width = 800
    var height = 800
    
    var tree : Tree?
    var deserto : Deserto?
    var back : LabelGame?
    
    override public init(size: CGSize){
        super.init(size:size)
        
        // Inicializando a arvore
        let treePosition = CGPoint(x: 200, y: 200/2)
        let treeSize = CGSize(width: CGFloat(width/10), height: CGFloat(width)/CGFloat(9.1))
        self.tree = Tree(position: treePosition, size: treeSize, parent: self)
    
        //Inicializando o deserto
        let desertPosition = CGPoint(x: 200, y: 200/2)
        let desertSize = CGSize(width: CGFloat(width)/CGFloat(1.5), height: CGFloat(width)/CGFloat(2.0))
        self.deserto = Deserto(position: desertPosition, size: desertSize, parent: self)
        
        //Inicializando o menu de topo
        let backPosition = CGPoint(x: 200, y: 7*height/10)
        let backSize = CGSize(width: CGFloat(width)/CGFloat(1.5), height: CGFloat(width)/CGFloat(9.5))
        self.back = LabelGame(position: backPosition, size: backSize, parent: self)
        
        
        
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

        
