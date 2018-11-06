//
//  MemeTableViewController.swift
//  MemeMe-V2
//
//  Created by Sagar Choudhary on 06/11/18.
//  Copyright © 2018 Sagar Choudhary. All rights reserved.
//

import Foundation
import UIKit

class MemeTableViewController: UITableViewController {
    
    
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeCell")!
        let meme = self.memes[(indexPath as NSIndexPath).row]
        print(self.memes.count)
        cell.imageView?.image = meme.memeImage
        cell.textLabel?.text = meme.topText
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let meme = memes[(indexPath as NSIndexPath).row]
        
        let memeViewController = self.storyboard!.instantiateViewController(withIdentifier: "MemeViewController") as! MemeViewController
        memeViewController.meme = meme
        
        self.navigationController!.pushViewController(memeViewController, animated: true)
        
    }
}
