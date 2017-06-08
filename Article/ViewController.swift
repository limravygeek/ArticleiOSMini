//
//  ViewController.swift
//  Article
//
//  Created by lim ravy on 30/5/2560 BE.
//  Copyright © 2560 BE lim ravy. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UITableViewController {
    
    
    
    var articles = [TableArticle]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        articles = loadArticles()
        tableView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
          articles = loadArticles()
         tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_article") as! ArticleTableViewCell
        let article = articles[indexPath.row]
        cell.myTitle.text = article.title
        cell.Mydescription.text = article.desc
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    func loadArticles() -> [TableArticle] {
        
        let request = NSFetchRequest<TableArticle>(entityName: "TableArticle")
        let result = try! AppDelegate.context.fetch(request)
        return result
        
    }
    
    
    @IBAction func onClickButtonOption(_ sender: Any) {
        
        let alert = UIAlertController(title: "Acton", message: "", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Update", style: .default, handler: { (action) in
          self.performSegue(withIdentifier: "segue_edit_article", sender: nil)
        }))
        
        alert.addAction(UIAlertAction(title: "Delete", style: .default, handler: { (action) in
            print("Deleted")
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) in
            
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    
}

