//
//  ViewController.swift
//  Hwmultimedia
//
//  Created by 조수연 on 2022/10/22.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func videobutton(_ sender: UIButton) {
        let ruta:String? = Bundle.main.path(forResource: "video", ofType: "mp4")
        let videourl = NSURL(fileURLWithPath:ruta!)
        let player=AVPlayerViewController()
        let video = AVPlayer(url: videourl as URL)
        player.player=video
        self.present(player, animated: true) {
            video.play()
        }
    }
    
    
    
   
    
}

