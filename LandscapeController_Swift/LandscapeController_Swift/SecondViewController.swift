//
//  SecondViewController.swift
//  LandscapeController_Swift
//
//  Created by olxios on 20/06/16.
//  Copyright © 2016 olxios. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var isPresented = true
    
    @IBAction
    func dismiss() {
        
        isPresented = false
        self.presentingViewController!.dismissViewControllerAnimated(true, completion: nil);
    }

}
