//
//  ViewController.swift
//  Light
//
//  Created by dilpreet singh on 04/02/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet var lightButton: UIButton!
    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    func updateUI() {
        if lightOn {
            view.backgroundColor = .white
            lightButton.setTitle("Turn Off Now", for: .normal)
            toggleTorch(lightOn: true)
            func toggleTorch(lightOn: Bool){
                guard let device = AVCaptureDevice.default(for: .video) else { return}
                if device.hasTorch{
                    do{
                        try device.lockForConfiguration()
                        if lightOn==false{
                            device.torchMode = .off
                        }
                        else {
                            device.torchMode = .on
                        }
                    } catch {
                        print("Torch could not be used now!")
                    }
                }
            }

          } else {
            view.backgroundColor = .black
              lightButton.setTitle("Turn On Now", for: .normal)
              toggleTorch(lightOn: false)
        
          }
    }
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
            updateUI()
        }
    }
    
func toggleTorch(lightOn: Bool){
    guard let device = AVCaptureDevice.default(for: .video) else { return}
    if device.hasTorch{
        do{
            try device.lockForConfiguration()
            if lightOn==false{
                device.torchMode = .off
                
            }
            else {
                device.torchMode = .on
            }
        } catch {
            print("Torch could not be used now!")
        }
    }
}

