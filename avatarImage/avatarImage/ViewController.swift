//
//  ViewController.swift
//  avatarImage
//
//  Created by 张子名 on 8/14/15.
//  Copyright (c) 2015 tingdao. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate,UIActionSheetDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    let imagePickerController: UIImagePickerController = UIImagePickerController()
    var isFullScreen:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var singleTap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "imageViewTouch")
        self.imageView.addGestureRecognizer(singleTap)
    }
    
    func imageViewTouch(){
        print(22)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

