//
//  mainViewController.swift
//  ZiangQiuPlaneWar
//
//  Created by Qiu Ziang on 2018/6/7.
//  Copyright © 2018年 skylove. All rights reserved.
//

import UIKit
import AVFoundation

class mainViewController: UIViewController {
    lazy var backGroundMusic : AVAudioPlayer? = {
        guard let url = Bundle.main.url(forResource: "bgm", withExtension: "mp3") else {
            print("sound fail")
            return nil
            
        }
        do {
            let musicPlayer = try AVAudioPlayer(contentsOf: url)
            musicPlayer.numberOfLoops = -1
            print("success")
            return musicPlayer
        } catch {
            print("sound fail")
            return nil
        }
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if UserDefaults.standard.object(forKey: "nomalMode") == nil {
            let arrayList = [String]()
            print("success")
            UserDefaults.standard.set(arrayList, forKey: "nomalMode")
        }
        
        
        backGroundMusic?.play()
    }
}