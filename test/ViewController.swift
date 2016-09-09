
import UIKit


class ViewController: UIViewController {
    
    var button :PlayPauseButton!

 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.button = PlayPauseButton(frame: CGRectMake(0, 0, 150, 150))
       
       // self.button = PlayPauseButton(frame: self.button.frame)
        self.button.strokeColor = UIColor.blueColor().CGColor
        self.button.fillColor = UIColor.lightGrayColor().CGColor
        self.button.backgroundColor = UIColor.darkGrayColor()
        //self.button.center = view.center
        self.button.addTarget(self, action: #selector(ViewController.toggle(_:)), forControlEvents:.TouchUpInside)
        
        view.addSubview(self.button)
    
        
}

    func toggle(sender: AnyObject!) {
        self.button.showsMenu = !self.button.showsMenu
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

 //button.translatesAutoresizingMaskIntoConstraints  = false

/*
var constraintX = NSLayoutConstraint(item: button,
                                      attribute: .CenterX,
                                      relatedBy: .Equal,
                                      toItem: view,
                                      attribute: .CenterX,
                                      multiplier: 1.0,
                                      constant: 0.0);
view.addConstraint(constraintX);

let centerYCon = NSLayoutConstraint(item: button,
                                    attribute: .CenterY,
                                    relatedBy: .Equal,
                                    toItem: view,
                                    attribute: .CenterY,
                                    multiplier: 1.0,
                                    constant: 0.0);
view.addConstraint(centerYCon);
 
 //NSLayoutConstraint(item: button, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterX, multiplier: 1, constant: 0).active = true
 //NSLayoutConstraint(item: button, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterY, multiplier: 1, constant: 0).active = true

 // self.button.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
 // button.centerYAnchor.constraintEqualToAnchor(view.centerYAnchor).active = true
 


 */
