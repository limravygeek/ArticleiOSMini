//
//  AddTableViewController.swift
//  Article
//
//  Created by lim ravy on 30/5/2560 BE.
//  Copyright © 2560 BE lim ravy. All rights reserved.
//

import UIKit
import CoreData

class AddViewController: UIViewController {
    
    
    @IBOutlet weak var TitleTextField: UITextField!
    
    @IBOutlet weak var DescTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func onClickButtonSave(_ sender: Any) {
        
        let title:String = TitleTextField.text!
        let desc:String  = DescTextView.text!
        insertPreArticles(title: title, desc: desc)
        
    }
    
    
    // Temporarily insert articles
    func insertPreArticles(title:String,desc:String){
        let article = NSEntityDescription.insertNewObject(forEntityName: "TableArticle", into: AppDelegate.context) as! TableArticle
        article.title = title
        article.desc = desc
        //article.image = "http://rupp.edu.kh/ckcc/images/b.jpg"
        try! AppDelegate.context.save()
    }
    
    
    @IBAction func onClickButtonBack(_ sender: Any) {
        
        _ = navigationController?.popViewController(animated:true)
        
    }
    
}
