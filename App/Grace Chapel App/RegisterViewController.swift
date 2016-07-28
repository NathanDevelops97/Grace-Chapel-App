//
//  RegisterViewController.swift
//  
//
//  Created by Nate on 7/25/16.
//
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL (string: "https://grace-chapel.ccbchurch.com/mobile_login.php");
        let requestObj = NSURLRequest(URL: url!);
        webView.loadRequest(requestObj);

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
