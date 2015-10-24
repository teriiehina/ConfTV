//
//  PlayerViewController.swift
//  TVConference
//
//  Created by Jeffrey Macko on 10/10/2015.
//  Copyright © 2015 Jeffrey Macko. All rights reserved.
//

import UIKit

enum presentationMode {
    case VideoIsMain
    case PresentationIsMain
    case eightyTwenty
}

struct PlayerViewControllerViewData {
    let videoInputInfo : Video
    let videoURL : NSURL
    let persentationURL : NSURL
    let subtitleURL : NSURL
}

class PlayerViewController : UIViewController {
    
    @IBOutlet weak var pptImageView: UIImageView!
    @IBOutlet weak var playerContainerView: UIView!
    @IBOutlet weak var subtitleTextView: UITextView!
    @IBOutlet weak var viewSwitch: UIButton!
    
//    var videoData : Video
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

