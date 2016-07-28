//
//  GiveViewController.swift
//  
//
//  Created by Nate on 7/25/16.
//
//

import UIKit
import MessageUI

class GiveViewController: UIViewController, MFMessageComposeViewControllerDelegate {

    @IBOutlet weak var textTGive: UIButton!
    @IBOutlet weak var GivingOnline: UIButton!
    @IBOutlet weak var GivingStation: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var url : NSURL?

    

    @IBAction func TextToGive(sender: AnyObject) {
        
        if (MFMessageComposeViewController.canSendText()) {
            let controller = MFMessageComposeViewController()
            controller.recipients = ["513-987-9288"]
            controller.body = "Message Body"
            controller.messageComposeDelegate = self
            self.presentViewController(controller, animated: true, completion: nil)
        }
        
    }
    
    
    @IBAction func GiveOnline(sender: AnyObject) {
        
        if url != nil{
            UIApplication.sharedApplication().openURL(url!)
        }
        
        url = NSURL(string: "https://secure.gobluefire.com/go/form.php?rid=6e0798b21250&")

    }
    

    
    
    
    @IBAction func Giving(sender: AnyObject) {
        
        
        
        
    }
    
    
    
    func messageComposeViewController(controller: MFMessageComposeViewController!, didFinishWithResult result: MessageComposeResult) {
        //... handle sms screen actions
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewWillDisappear(animated: Bool) {
        self.navigationController?.navigationBarHidden = false
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
