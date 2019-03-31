//
//  MainViewController.swift
//  评论1
//
//  Created by 方瑾 on 2019/2/25.
//  Copyright © 2019 方瑾. All rights reserved.
//

import UIKit
var picture : [(name:String,message:String)] = [("董明珠","格力东西好啊"),
                                                ("王健林","我很穷"),
                                                ("王思聪","我选朋友不看是否有钱"),
                                                ("马化腾","以前我老假装女生跟别人聊天"),
                                                ("马云","我不爱钱")]
var picture1: [(name:String,message:String)] = [("董明珠","好美啊"),
                                                ("王健林","坐飞机滑雪去"),
                                                ("王思聪","泡妞去"),
                                                ("马化腾","度假去")]
var picture2: [(name:String,message:String)] = [("董明珠","为什么没有鱼呢"),
                                                ("王健林","不辣啊"),
                                                ("王思聪","顺便来根烤茄子")]
var picture3: [(name:String,message:String)] = [("董明珠","好看"),
                                                ("王健林","一般般")]
var picture4: [(name:String,message:String)] = [("董明珠","身体健康"),
                                                ("王健林","我每天六点起来跑步"),
                                                ("王思聪","哥有钱，健什么身"),
                                                ("马化腾","听起来不错哦")]
 var num = 0
 var info = ""

class MainViewController: UIViewController {
    
    @IBOutlet weak var imageShow: UIImageView!
    
    @IBOutlet weak var commentTableView: UITableView!
    var imageNames = ["钱","冰河世纪","鱼香茄子","海王","健身"]
   
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        commentTableView.delegate = self
        commentTableView.dataSource = self

        
    }
    
    @IBAction func pageControl(_ sender: UIPageControl) {
        num = sender.currentPage
        imageShow.image = UIImage(named: imageNames[num])
        self.commentTableView.reloadData()


    }
    
   
    

}
extension MainViewController : UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            switch num {
            case 0:
                return picture.count
            case 1:
                return picture1.count
            case 2:
                return picture2.count
            case 3:
                return picture3.count
            default:
                return picture4.count
            }
            
        default:
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        imageShow.image = UIImage(named: imageNames[num])
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "FirstCell", for: indexPath) as! FirstTableViewCell
            if num == 0 {
                cell.firstLabel.text = picture[indexPath.row].message
                cell.photoImage.image = UIImage(named: picture[indexPath.row].name)
               
            } else if num == 1 {
                cell.firstLabel.text = picture1[indexPath.row].message
                cell.photoImage.image = UIImage(named: picture1[indexPath.row].name)
               
            } else if num == 2 {
                cell.firstLabel.text = picture2[indexPath.row].message
                cell.photoImage.image = UIImage(named: picture2[indexPath.row].name)
            
            } else if num == 3 {
                cell.firstLabel.text = picture3[indexPath.row].message
                cell.photoImage.image = UIImage(named: picture3[indexPath.row].name)
               
            } else {
                    cell.firstLabel.text = picture4[indexPath.row].message
                    cell.photoImage.image = UIImage(named: picture4[indexPath.row].name)
            }
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SecondCell", for: indexPath) as! SecondTableViewCell
            cell.secondImageView.image = UIImage(named: "houkin")
            info = cell.inputTextField.text ?? ""
            cell.newViewController = self
            return cell
        }
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {//高度
        case 0:
            return 100
        default:
            return 130
        }
    }
}
