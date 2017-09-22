//
//  PlayVideoVC.swift
//  VideoManagement
//
//  Created by Jorge Sánchez Vega on 23/9/17.
//  Copyright © 2017 Jorge Sánchez. All rights reserved.
//

import UIKit
import AVFoundation

class PlayVideoVC: UIViewController {
    
    // MARK: - Properties
    let cameraSession = AVCaptureSession()
    let captureDevice = AVCaptureDevice.default(.builtInWideAngleCamera, for: AVMediaType.video, position: .back)
    
    // MARK: - Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        cameraSessionConfiguration()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Private Methods
    fileprivate func cameraSessionConfiguration() {
        cameraSession.sessionPreset = AVCaptureSession.Preset.high
    }
    
    


}
