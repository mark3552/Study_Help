//
//  HomeviewController.swift
//  Study_Help
//
//  Created by Mark Balleby Hansen on 04/05/2018.
//  Copyright © 2018 Mark Balleby Hansen. All rights reserved.
//

import UIKit
import FBAudienceNetwork

class HomeviewController: UIViewController, FBAdViewDelegate {

    var banneradView:FBAdView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadFacebookbanner()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadFacebookbanner (){
        banneradView = FBAdView(placementID: "846357918892080_847567155437823"
, adSize: kFBAdSizeHeight50Banner, rootViewController: self)
        banneradView.frame = CGRect(x: 0, y: view.bounds.height - banneradView.frame.size.height, width: banneradView.frame.size.width, height: banneradView.frame.size.height)
        banneradView.delegate = self
        banneradView.isHidden = true
        self.view.addSubview(banneradView)
        banneradView.loadAd()
    }
    func adViewDidLoad(_ adView: FBAdView) {
        banneradView.isHidden = false
    }
    func adView(_ adView: FBAdView, didFailWithError error: Error) {
        print(error)
    }
}
