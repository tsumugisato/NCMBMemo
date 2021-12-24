//
//  AddMemoViewController.swift
//  NCMBmemo
//
//  Created by 佐藤紬 on 2021/12/01.
//

import UIKit
import NCMB

class AddViewController:UIViewController{
    @IBOutlet var memoTextView:UITextView!

    override func viewDidLoad() {
            super.viewDidLoad()

        }
    
    @IBAction func save(){
        let object = NCMBObject.init(className: "Message")
        object?.setObject(memoTextView.text, forKey: "text")
        
        object?.saveInBackground({(error) in
            if error != nil{
                print(error)
            }else{
                let alertController = UIAlertController(title: "保存完了", message: "メモの保存が完了しました。元の画面に戻ります。", preferredStyle: .alert)
                
                let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
                    
                    // 元の画面に戻る
                    self.dismiss(animated: true, completion: nil)

                }
                alertController.addAction(okAction)
                self.present(alertController,animated: true,completion: nil)
                print("保存に成功しました")
            }
        })
    }
    
}
