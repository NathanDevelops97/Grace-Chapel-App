//
//  HomeViewController.swift
//  
//
//  Created by Nate on 7/25/16.
//
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var sermonTable: UITableView!
    
    var sermonArray = ["Summer Family Adventure", "Living Out What Lies Inside", "Serve With Grace Chapel"]
    var sermonImageArray = [UIImage(named: "Family"), UIImage(named: "Living"), UIImage(named: "Serve") ]
    
    
    //For persisting data
    let defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.sermonTable.reloadData()
        self.sermonTable.registerNib(UINib(nibName: "tableCellSermonsTableViewCell", bundle: nil), forCellReuseIdentifier: "sermonCell")
        sermonTable.tableFooterView = UIView()




        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        self.sermonTable.reloadData()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
     func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        // #warning Incomplete implementation, return the number of sections
        
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 3
        
    }
    
    
    
    //Define how our cells look - 2 lines a heading and a subtitle
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        
        let identifier = "sermonCell"
        var cell: tableCellSermonsTableViewCell! = tableView.dequeueReusableCellWithIdentifier(identifier) as? tableCellSermonsTableViewCell
        
        if cell == nil {
            tableView.registerNib(UINib(nibName: "tableCellSermonsTableViewCell", bundle: nil), forCellReuseIdentifier: identifier)
            cell = tableView.dequeueReusableCellWithIdentifier(identifier) as? tableCellSermonsTableViewCell
        }
        
        
        //        Assign the contents of our var "items" to the textLabel of each cell
        //        cell.textLabel!.text = taskMgr.tasks[indexPath.row].name
        //        cell.detailTextLabel!.text = taskMgr.tasks[indexPath.row].desc
        
        cell.heroImage.image = UIImage(named: "family")!
        cell.heroLabel.text = sermonArray[indexPath.row]
     
        
        
        
        return cell
        
        
        
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
