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
        /*
        //代理设置
        self.imagePickerController.delegate = self
        //设置允许管理硬盘中图片
        self.imagePickerController.allowsEditing = true
        //判断是否支持相机
        if(UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera)){
            let alertController:UIAlertController = UIAlertController(title: nil, message: nil, preferredStyle: UIAlertControllerStyle.ActionSheet)
            //iPad上使用表单需要设置anchor point
            var popover = alertController.popoverPresentationController
            /*if(popover != nil){
                popover?.sourceView = sender
                popover?.sourceRect = sender.bounds
                popover?.permittedArrowDirections = UIPopoverArrowDirection.Any
                
            }*/
            let cameraAction: UIAlertAction = UIAlertAction(title: "拍照", style: .Default){(action:UIAlertAction!) -> Void in
                //设置类型
                self.imagePickerController.sourceType = UIImagePickerControllerSourceType.Camera
                self.presentViewController(self.imagePickerController, animated: true, completion: nil)
            }
            
            alertController.addAction(cameraAction)
            

            
        }*/
        let alertController = UIAlertController(title: "Test", message: "just do it", preferredStyle: .ActionSheet)
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: {(action) in
            print("aaaa")
        })
        alertController.addAction(cancelAction)
        let cameraAction = UIAlertAction(title: "从相机", style: .Default, handler: {(action) in
            print("bbb")
        })
        alertController.addAction(cameraAction)
        let galeryAction = UIAlertAction(title: "从相册", style: .Default, handler: {(action) in
            print("ccc")
        })
        alertController.addAction(galeryAction)
       
        self.presentViewController(alertController, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

