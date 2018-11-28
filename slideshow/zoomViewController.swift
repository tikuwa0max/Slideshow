//
//  zoomViewController.swift
//  slideshow
//
//  Created by 市澤樹享 on 2018/11/28.
//  Copyright © 2018 mikitaka.ichizawa. All rights reserved.
//

import UIKit

class zoomViewController: UIViewController {
    
    var count = 1
    var img1 = UIImage(named: "IMG_1298")!
    var img2 = UIImage(named: "IMG_1302")!
    var img3 = UIImage(named: "IMG_1305")!
    
    @IBAction func back(_ sender: UIButton) {
        
    }
    
    @IBOutlet weak var secondimageboard: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if count == 1{
            secondimageboard.image = img2
        }
            
        else if count == 2{
            secondimageboard.image = img3
        }
        else{
            secondimageboard.image = img1
            
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
