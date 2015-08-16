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
        //代理设置
        self.imagePickerController.delegate = self
        //设置允许管理硬盘中图片
        self.imagePickerController.allowsEditing = true
        
        
        
        /*
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
        //添加alertcontroller 样式为actionsheet
        let alertController = UIAlertController(title: "Test", message: "just do it", preferredStyle: .ActionSheet)
        var popover = alertController.popoverPresentationController
        if (popover != nil){
            popover?.sourceView = UIView()
            popover?.sourceRect = UIView().bounds
            popover?.permittedArrowDirections = UIPopoverArrowDirection.Any
            
        }
        
        //添加取消行为
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: {(action) in
            print("aaaa")
        })
        alertController.addAction(cancelAction)
        
        //添加从相机获取头像
        if(UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera)){
            let cameraAction = UIAlertAction(title: "从相机获取头像", style: .Default, handler: {(action) in
                print("bbb")
                self.imagePickerController.sourceType = UIImagePickerControllerSourceType.Camera
                self.presentViewController(self.imagePickerController, animated: true, completion: nil)
                
            })
            
            alertController.addAction(cameraAction)
            
        }

        
        //添加从相册获取头像
        let galeryAction = UIAlertAction(title: "从相册", style: .Default, handler: {(action) in
            print("ccc")
            self.imagePickerController.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
            //更改navigationbar的背景色
            self.imagePickerController.navigationBar.barTintColor = UIColor(red: 171/255, green: 202/255, blue: 41/255, alpha: 1.0)
            
            //更改navigationbar的标题色
            self.imagePickerController.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
            
            //更改navigationbar的字体色
            self.imagePickerController.navigationBar.tintColor = UIColor.whiteColor()
            
            self.presentViewController(self.imagePickerController, animated: true, completion: nil)
            
            
            
        })
        alertController.addAction(galeryAction)
        
        //显示actionsheet
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    //imagePicker 事件实现
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!) {
        picker.dismissViewControllerAnimated(true, completion: nil)
        var image:UIImage!
        
        //判断是否可以修改
        if (picker.allowsEditing){
            //剪裁图片
            //image = info[UIImagePickerControllerEditedImage] as! UIImage
            
        }
        else{
            //image = info[UIImagePickerControllerOriginalImage] as! UIImage
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

