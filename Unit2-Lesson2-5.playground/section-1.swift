// Playground - noun: a place where people can play

import UIKit;
import XCPlayground;

class Rectange : UIView{
    var width:Double;
    var height:Double;
    
    init(width:Double, height:Double){
        self.width = width;
        self.height = height;
        super.init(frame: CGRectZero);
        self.frame.size = CGSize(width: width, height: height);
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class RoundedRectange : Rectange{
    
    init(width: Double, height: Double, cornerRadius: Double) {
        super.init(width: width, height: height);
        self.layer.cornerRadius = CGFloat(cornerRadius);
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

var view = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400));

view.backgroundColor = UIColor.grayColor();

XCPShowView("Rectangles!", view);
var rect = Rectange(width: 100, height: 50);
rect.center = CGPoint(x: 100, y: 50);
rect.backgroundColor = UIColor.greenColor();
view.addSubview(rect);

var roundedRect = RoundedRectange(width: 100, height: 50, cornerRadius: 10);
roundedRect.center  = CGPoint(x: 100, y: 150);
roundedRect.backgroundColor = UIColor.blueColor();
view.addSubview(roundedRect);