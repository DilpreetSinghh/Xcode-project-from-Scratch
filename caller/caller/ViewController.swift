//
//  ViewController.swift
//  caller
//
//  Created by dilpreet singh on 19/03/23.
//

import UIKit

final class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        startDemo()
        // Do any additional setup after loading the view.
    }
    
    func startDemo(){
        DispatchQueue.main.asyncAfter(deadline: .now()+2, execute:{
            let callManager = CallManager()
            let id = UUID()
            callManager.reportIncomingCall(id: id, handle: "Neet")
            // callManager.startCall(id: id, handle: The Stranger)
        })
    }
}

