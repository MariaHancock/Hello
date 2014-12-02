//
//  View.swift
//  Hello
//
//  Created by Mark Meretzky on 10/21/14.
//  Copyright (c) 2014 Mark Meretzky. All rights reserved.
//

import UIKit

class View: UIView {

	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)

		//Ask for a color that is not the default.
		//Must do it here: in drawRect would be too late.
		backgroundColor = UIColor.blueColor();
	}

	// Only override drawRect: if you perform custom drawing.
	// An empty implementation adversely affects performance during animation.

	override func drawRect(rect: CGRect) {
		// Drawing code
		let s: String = "Hello, World!";
		let font: UIFont = UIFont.systemFontOfSize(32);
		let attributes: [NSObject: AnyObject] = [NSFontAttributeName: font]; //a dictionary
		let point: CGPoint = CGPointMake(0.0, 0.0);
		s.drawAtPoint(point, withAttributes: attributes);
	}

}
