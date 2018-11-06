//
//  MemeViewController.swift
//  MemeMe-V2
//
//  Created by Sagar Choudhary on 06/11/18.
//  Copyright © 2018 Sagar Choudhary. All rights reserved.
//

import Foundation
import UIKit

class MemeViewController: UIViewController {
    
    // MARK: meme Object
    var meme: Meme!
    
    //MARK: Outlets
    @IBOutlet weak var memeImageVIew: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.memeImageVIew!.image = meme.memeImage
    }
}
