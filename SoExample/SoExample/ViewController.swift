//
//  SoCrowd SDK
//
//  Created by Aurel on 10/02/16.
//  Copyright © 2016 SoCrowd.tv. All rights reserved.
//

import Foundation
import UIKit
import AVKit

import SoCrowd


class ViewController: AVPlayerViewController {

    var observerToken: AnyObject?

    func showSocrowd() {
        SoCrowd.instance.displayFullscreen(
            pauseCb: {
                print("Pausing my app videos, sounds, animations...")
                self.player?.pause()
            },
            continueCb: {result in
                print("Result of SoCrowd display: " + result)
                print("Continuing my app with the next video...")
                self.player?.seekToTime(CMTimeMakeWithSeconds(0, 30))
                self.player?.play()
            }
        )
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        showsPlaybackControls = true

        let url = "https://dumlj42kv8ebx.cloudfront.net/advert=test/adgroup=trailers/GameofThronesSeason6StarkBattleBannerTease.mp4"
        let stopAt = 21.0

        player = AVPlayer(URL: NSURL(string: url)!)

        self.observerToken =
            self.player!.addBoundaryTimeObserverForTimes([stopAt], queue: dispatch_get_main_queue(), usingBlock: {
                [weak self] in
                self!.showSocrowd()
            })

        player?.play()
        print("Playing some content..")
    }


    deinit {
        if let o = self.observerToken {
            self.player?.removeTimeObserver(o)
        }
    }
    
}