//
//  SettingTableViewController.swift
//  Article
//
//  Created by lim ravy on 30/5/2560 BE.
//  Copyright © 2560 BE lim ravy. All rights reserved.
//

import UIKit


struct cellData{
    let text: String!
    let image: UIImage
}

class SettingTableViewController: UITableViewController {

    
      var setting_string  = [cellData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setting_string = [
            cellData(text:"Profile",image:#imageLiteral(resourceName: "ic_profile")),
            cellData(text:"Account Setting",image:#imageLiteral(resourceName: "ic_account_setting")),
            cellData(text:"Logout",image:#imageLiteral(resourceName: "ic_logout"))]
          tableView.reloadData()

         }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return setting_string.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_setting") as! SettingTableViewCell
        cell.setting_label.text = setting_string[indexPath.row].text
        cell.setting_icon.image = setting_string[indexPath.row].image
        
        return cell    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Setting"
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if(indexPath.row==0){
            print("Profile")
        }else if(indexPath.row==1)
        {
            performSegue(withIdentifier: "seque_acc_setting", sender: nil)
        }else{
            
          performSegue(withIdentifier: "segue_logout", sender: nil)
            
        }
    }
}
