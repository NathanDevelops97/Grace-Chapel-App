//
//  registerViewController.swift
//  Grace-Chapel-App
//
//  Created by Nathanael Grant on 9/3/16.
//  Copyright © 2016 Nathanael Grant. All rights reserved.
//

import UIKit

class registerViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadWebPage()

        // Do any additional setup after loading the view.
    }

    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    func loadWebPage(){
        let theURL = "https://grace-chapel.ccbchurch.com/mobile_login.php"
        let theRequestURL = NSURL (string: theURL)
        let theRequest = NSURLRequest (URL: theRequestURL!)
        webView.loadRequest(theRequest)
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
