//
//  ViewController.swift
//  ScrollViewTest
//
//  Created by Friedrich HAEUPL on 27.09.16.
//  Copyright © 2016 Friedrich HAEUPL. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBOutlet weak var popUpOutlet: NSPopUpButton!
    @IBOutlet weak var viewOutlet: MyView!
    
    // ------------ NSPopUp -------------
    
    @IBAction func scaleAction(_ sender: AnyObject) {
        
        // possible:
        //let popItem:NSPopUpButton = sender as! NSPopUpButton
        //NSLog("scaleAction title=%@", popItem.title)
        
        NSLog("scaleAction title = %@",String(sender.title))
        NSLog("scaleAction tag   = %d", Int(sender.selectedTag()))
        
        switch Int(sender.selectedTag()) {
        case 0:
            self.viewOutlet.setViewSize(0.5)
            break
        case 1:
            self.viewOutlet.setViewSize(1.0)
            break
        case 2:
            self.viewOutlet.setViewSize(2.0)
            break
        default:
            self.viewOutlet.setViewSize(1.0)
        }
        
    }


}

