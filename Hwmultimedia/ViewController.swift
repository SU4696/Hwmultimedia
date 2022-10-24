//
//  ViewController.swift
//  Hwmultimedia
//
//  Created by 조수연 on 2022/10/22.
//
import AVKit
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

            
    
    @IBAction func v1(_ sender: Any) {
        let filePath:String? = Bundle.main.path(forResource: "video", ofType: "mp4")
                // 앱 내부의 파일명을 NSURL 형식으로 변경
                let url = NSURL(fileURLWithPath: filePath!)
                
                playVideo(url: url) // 앞에서 얻은 url을 사용하여 비디오를 재생

    }
    private func playVideo(url: NSURL){
           
           // AVPlayerController의 인스턴스 생성
           let playerController = AVPlayerViewController()
           // 비디오 URL로 초기화된 AVPlayer의 인스턴스 생성
           let player = AVPlayer(url: url as URL)
           // AVPlayerViewController의 player 속성에 위에서 생성한 AVPlayer 인스턴스를 할당
           playerController.player = player

           self.present(playerController, animated: true){
               player.play() // 비디오 재생
           }
           
       }
   
    
}

