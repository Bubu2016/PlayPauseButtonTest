
import UIKit


class ViewController: UIViewController {
    
    var button :PlayPauseButton!

 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.button = PlayPauseButton(frame: CGRect(x: 0, y: 0, width: 150, height: 150))
       
       // self.button = PlayPauseButton(frame: self.button.frame)
        self.button.strokeColor = UIColor.blue.cgColor
        self.button.fillColor = UIColor.lightGray.cgColor
        self.button.backgroundColor = UIColor.darkGray
        //self.button.center = view.center
        self.button.addTarget(self, action: #selector(ViewController.toggle(_:)), for:.touchUpInside)
        
        view.addSubview(self.button)
    
        
}

    func toggle(_ sender: AnyObject!) {
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
