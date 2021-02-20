//
//  ViewController.swift
//  Track It
//
//  Created by Aakash Jha on 20/02/21.
//

import UIKit
import SafariServices

class MainViewController: UIViewController, UITextFieldDelegate {

    var tracker = TrackingManager()
    
    @IBOutlet weak var trackIDField: UITextField!
    @IBOutlet weak var trackButton: UIButton!
    
    //hide keyboard function
    @objc func dismissMyKeyboard() {
        //endEditing causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    func initializeHideKeyboard() {
        //Declare a Tap Gesture Recognizer which will trigger our dismissMyKeyboard() function
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(dismissMyKeyboard))
        //Add this tap gesture recognizer to the parent view
            view.addGestureRecognizer(tap)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeHideKeyboard()
        trackButton.layer.cornerRadius = 15
        
    }

    @IBAction func trackButtonPressed(_ sender: UIButton) {
        if let trknum = trackIDField.text {
//            tracker.createURL(input: trknum)
            let vc = SFSafariViewController(url: URL(string: "https://www.fedex.com/fedextrack/?trknbr=\(trknum)")!)
            present(vc, animated: true)
        }
        else {
            print("Please enter a valid tracking ID / waybill number")
            return
        }
    }
    

    
}

