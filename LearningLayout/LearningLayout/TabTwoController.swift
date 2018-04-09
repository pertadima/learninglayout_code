//
//  TabTwoController.swift
//  LearningLayout
//
//  Created by Engineer on 4/9/18.
//  Copyright © 2018 Engineer. All rights reserved.
//

import Foundation
import UIKit

class TabTwoController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    let newsCategory = [["Indonesia", "Singapore", "Malaysia", "Philipines"], ["dsadsada", "dsadsadas", "dasdsad"],["dsadsada", "dsadsadas", "dasdsad","dsadsadasdas","dasdsadas","dasdsadsada","dsadsadsada"],["dsadsada", "dsadsadas", "dasdsad"]]
    let headerTitles = ["Asia", "Tech", "Entertainment", "Sport"]
    
    var tableView = UITableView()
    let cellSpacingHeight: CGFloat = 50
    var btn = UIButton(type : .custom)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title = "Categories"
        
        tableView = UITableView(frame: self.view.bounds, style: UITableViewStyle.plain)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = UIColor.white
        
        let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        
        tableView.frame = CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight)
        
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "my")
        
        view.addSubview(tableView)
        floatingButton()
    }
    
    func floatingButton(){
        btn.frame = CGRect(x: 200, y: 400, width: 60, height: 60)
        btn.setTitle("+", for: .normal)
        btn.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        btn.clipsToBounds = true
        btn.layer.cornerRadius = 50
        
        btn.layer.shadowColor = UIColor.black.cgColor
        btn.layer.shadowOffset = CGSize(width: 5, height: 5)
        btn.layer.shadowRadius = 5
        btn.layer.shadowOpacity = 1.0
    
        if let window = UIApplication.shared.keyWindow {
            window.addSubview(btn)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        btn.removeFromSuperview()
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return cellSpacingHeight
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "my", for: indexPath) as! TableViewCell
        cell.myLabel.text = "\(newsCategory[indexPath.section][indexPath.row])"
        cell.backgroundColor = UIColor.white
        cell.clipsToBounds = true
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsCategory[section].count
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return newsCategory.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let currentCell = tableView.cellForRow(at: indexPath)! as! TableViewCell
        showDialog(text: (currentCell.myLabel.text)!)
    }
    
    func showDialog(text : String)
    {
        let alert = UIAlertController(title: "Alert", message: text, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section < headerTitles.count {
            return headerTitles[section]
        }
        
        return nil
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int){
        view.tintColor = hexStringToUIColor(hex: "#fafafa")
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor.darkGray
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
