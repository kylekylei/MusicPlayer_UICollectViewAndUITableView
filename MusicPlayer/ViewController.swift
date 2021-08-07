//
//  ViewController.swift
//  MusicPlayer
//
//  Created by Kyle Lei on 2021/7/27.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let songTrack = [ "01","02","03","04","05","06","07","08","09","10","11" ]
    let songName = [ "The Miracle (of Joey Ramone)", "Every Breaking Wave","California (There Is No End to Love)",    "Song for Someone","Iris (Hold Me Close)","Volcano","Raised by Wolves","Cedarwood Road","Sleep Like a Baby Tonight","This Is Where You Can Reach Me Now","The Troubles" ]
    let songTime = [ "4:15","4:12","4:00","3:47","5:20","3:14","4:06","4:25","5:02","5:05","4:46" ]
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songTrack.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(PlayerTableViewCell.self)", for: indexPath) as! PlayerTableViewCell
        
        cell.trackNum?.text = self.songTrack[indexPath.row]
        cell.trackName?.text = self.songName[indexPath.row]
        cell.trackTime?.text = self.songTime[indexPath.row]

 
        return cell
        
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(displayP3Red: 25/255, green: 25/255, blue: 25/255, alpha: 1)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    
}

