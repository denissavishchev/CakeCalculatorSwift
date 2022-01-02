//
//  ViewController.swift
//  CakesCalculator
//
//  Created by Devis on 01/01/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var RoundD: UIButton!
    @IBOutlet var RoundT: UIButton!
    @IBOutlet var RectT: UIButton!
    @IBOutlet var SquareT: UIButton!
    @IBOutlet var Label1: UILabel!

    @IBAction func RectT(_ sender: UIButton) {
        //Remote
        sender.tintColor = .blue
        if sender.tintColor == .blue{
            sender.tintColor = .orange
            SquareT.tintColor = .blue
            RoundT.tintColor = .blue
        }else{sender.tintColor = .blue}
    }
    
    @IBAction func SquareT(_ sender: UIButton) {
        sender.tintColor = .blue
        if sender.tintColor == .blue{
            sender.tintColor = .orange
            RoundT.tintColor = .blue
            RectT.tintColor = .blue
        }else{sender.tintColor = .blue}
    }
    
    @IBAction func pressRoundT(_ sender: UIButton) {
        sender.tintColor = .blue
        if sender.tintColor == .blue{
            sender.tintColor = .orange
            SquareT.tintColor = .blue
            RectT.tintColor = .blue
        }else{sender.tintColor = .blue}
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

