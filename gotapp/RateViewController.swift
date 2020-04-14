//
//  RateViewController.swift
//  gotapp
//
//  Created by Guilherme Mendes on 14/04/2020.
//  Copyright © 2020 Guilherme Mendes. All rights reserved.
//

import UIKit






class RateViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var labelRate: UILabel!
    @IBOutlet weak var accept: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.slider.minimumValue = 0
        self.slider.maximumValue = 100
        accept.setTitle("Ok", for: .normal)
        self.slider.value = 50
        let ini = Int(self.slider.value)
        self.labelRate.text = "\(ini)"
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func Rating (_sender: Any){
        let valueInt = Int(slider.value)
        self.labelRate.text = "\(valueInt)"
        
    }
    
    @IBAction func accept(_ sender: Any) {
        self.slider.value = 50
        let ini = Int(self.slider.value)
        self.labelRate.text = "\(ini)"
       
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
