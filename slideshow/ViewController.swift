//
//  ViewController.swift
//  slideshow
//
//  Created by 市澤樹享 on 2018/11/23.
//  Copyright © 2018 mikitaka.ichizawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var img1 = UIImage(named: "IMG_1298")!
    var img2 = UIImage(named: "IMG_1302")!
    var img3 = UIImage(named: "IMG_1305")!
    var timer: Timer!
    var count = 0
    
    @IBOutlet weak var nextbutton: UIButton!
    

    
    @IBOutlet weak var backbutton: UIButton!
    
    @IBOutlet weak var imageboard: UIImageView!
    
    
    @IBAction func next(_ sender: UIButton) {
        
        if self.timer == nil{
        if count == 1{
            imageboard.image = img2
        }
        else if count == 2{
            imageboard.image = img3
        }
        else if count == 3{
            imageboard.image = img1
            count = 0
        }
        count += 1
    }
    }
    
    @IBAction func back(_ sender: UIButton) {
        
        if self.timer == nil{
        if count == 3{
            imageboard.image = img2
        }
        else if count == 2{
            imageboard.image = img1
        }
        else if count == 1{
            imageboard.image = img3
            count = 4
        }
        count -= 1
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のzoomViewControllerを取得する
        let zoomViewController:zoomViewController = segue.destination as! zoomViewController
        // 遷移先のzoomViewControllerで宣言しているx, countに代入して渡す
        zoomViewController.count = count
    }

    @IBAction func send(_ sender: Any) {
    }
    
    @IBOutlet weak var button: UIButton!
    
    @IBAction func startstop(_ sender: Any) {
        if self.timer == nil {
          self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(autochange(_:)), userInfo: nil, repeats: true)
            button.setTitle("一時停止", for: .normal)
            nextbutton.backgroundColor = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 0.2)
            backbutton.backgroundColor = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 0.2)
            
            }
        
        else {
        self.timer.invalidate()
        self.timer = nil
            button.setTitle("再生", for: .normal)
            nextbutton.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
            backbutton.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        }
        }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if count == 1{
            imageboard.image = img2
        }
            
        else if count == 2{
            imageboard.image = img3
        }
        else{
            imageboard.image = img1
            
        }
       

    }
    
    @objc func autochange(_ timer: Timer) {
            if count == 1{
                imageboard.image = img2
            }
            else if count == 2{
                imageboard.image = img3
            }
            else if count == 3{
                imageboard.image = img1
                count = 0
            }
            count += 1
        }
        
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

