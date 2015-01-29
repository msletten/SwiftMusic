//
//  ViewController.swift
//  Playing Music
//
//  Created by Mat Sletten on 1/27/15.
//  Copyright (c) 2015 Mat Sletten. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBAction func playButton(sender: AnyObject) {
        songPlayer.play()
    }
    @IBOutlet weak var volumeStyle: UISlider!
    @IBAction func volumeSlider(sender: AnyObject) {
        songPlayer.volume = volumeStyle.value
    }
    @IBAction func pauseButton(sender: AnyObject) {
        songPlayer.pause()
    }
    @IBAction func stopButton(sender: AnyObject) {
        songPlayer.stop()
        songPlayer.currentTime = 0
    }
    
    var songPlayer:AVAudioPlayer = AVAudioPlayer()
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //This is to tell the app where to find the media file. NSBundle is the entire bundle that makes up the app.
        var fileLocation = NSString(string:NSBundle.mainBundle().pathForResource("01 Sunrise (Come My Way)", ofType: "mp3"))
        var error: NSError? = nil
        songPlayer = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: fileLocation), error: &error)
        //songPlayer.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

