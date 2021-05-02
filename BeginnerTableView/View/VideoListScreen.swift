//
//  VideoListScreen.swift
//  BeginnerTableView
//
//  Created by mbtec22 on 5/1/21.
//

import UIKit

class VideoListScreen: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var videos:[Video]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        videos=createArray()
    }

    func createArray() ->[Video] {
        var tempVideos: [Video]=[]
        
        let video1 = Video(image: #imageLiteral(resourceName: "images1.jpeg"), title: "Bruno Mars")
        let video2 = Video(image: #imageLiteral(resourceName: "images2.jpeg"), title: "BlackWidow")
        
        tempVideos.append(video1)
        tempVideos.append(video2)
        return tempVideos
    }
}

extension VideoListScreen:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video=videos[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        
        cell.setVideo(video: video)
        return cell
    }
    
    
}
