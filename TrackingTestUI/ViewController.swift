//
//  ViewController.swift
//  TrackingTestUI
//
//  Created by Derrick Ho on 6/7/17.
//  Copyright © 2017 Derrick Ho. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print(Bundle.main)
        
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        OmnitureConsumer.consume(Omniture(mode: .pagename, name: "ViewController"))
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

