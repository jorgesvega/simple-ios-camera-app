//
//  PreviewVC.swift
//  VideoManagement
//
//  Created by Jorge Sánchez Vega on 23/9/17.
//  Copyright © 2017 Jorge Sánchez. All rights reserved.
//

import UIKit

class PreviewVC: UIViewController {
    
    // MARK: - Properties
    var image: UIImage?
    
    // MARK: - IBOutlets
    @IBOutlet weak var photo: UIImageView!
    
    // MARK: - IBActions
    @IBAction func actionSave(_ sender: Any) {
        UIImageWriteToSavedPhotosAlbum(image!, nil, nil, nil)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func actionCancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        photo.image = self.image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
