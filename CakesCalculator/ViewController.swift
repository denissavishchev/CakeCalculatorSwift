//
//  ViewController.swift
//  CakesCalculator
//
//  Created by Devis on 01/01/2022.
//

import UIKit
//#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)

class ViewController: UIViewController {
    
    @IBOutlet var RoundT: UIButton!
    @IBOutlet var RectT: UIButton!
    @IBOutlet var SquareT: UIButton!
   
    @IBOutlet var i1: UITextField!
    @IBOutlet var i2: UITextField!
    @IBOutlet var i3: UITextField!
    @IBOutlet var i4: UITextField!
    
    
    @IBOutlet var SquareD: UIButton!
    @IBOutlet var RoundD: UIButton!
    @IBOutlet var RectD: UIButton!
    
    @IBOutlet var resultButton: UIButton!
    
    @IBOutlet var Label1: UILabel!
    


    
    @IBAction func pressSquareT(_ sender: UIButton) {
        sender.tintColor = .systemIndigo
        i1.placeholder = "Side length..."
        i2.isHidden = true
        if sender.tintColor == .systemIndigo{
            sender.tintColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
            RoundT.tintColor = .systemIndigo
            RectT.tintColor = .systemIndigo
        }else{sender.tintColor = .systemIndigo}
    }
    
    @IBAction func pressRoundT(_ sender: UIButton) {
        sender.tintColor = .systemIndigo
        i1.placeholder = "Diameter..."
        i2.isHidden = true
        if sender.tintColor == .systemIndigo{
            sender.tintColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
            SquareT.tintColor = .systemIndigo
            RectT.tintColor = .systemIndigo
        }else{sender.tintColor = .systemIndigo}
    }
    
    @IBAction func pressRectT(_ sender: UIButton) {
        sender.tintColor = .systemIndigo
        i1.placeholder = "Length..."
        i2.placeholder = "Height..."
        i2.isHidden = false
        if sender.tintColor == .systemIndigo{
            sender.tintColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
            SquareT.tintColor = .systemIndigo
            RoundT.tintColor = .systemIndigo
        }else{sender.tintColor = .systemIndigo}
    }
    
    @IBAction func pressSquareD(_ sender: UIButton) {
        sender.tintColor = .systemIndigo
        i3.placeholder = "Side length..."
        i4.isHidden = true
        if sender.tintColor == .systemIndigo{
            sender.tintColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
            RoundD.tintColor = .systemIndigo
            RectD.tintColor = .systemIndigo
        }else{sender.tintColor = .systemIndigo}
    }
    
    @IBAction func pressRoundD(_ sender: UIButton) {
        sender.tintColor = .systemIndigo
        i3.placeholder = "Diameter..."
        i4.isHidden = true
        if sender.tintColor == .systemIndigo{
            sender.tintColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
            SquareD.tintColor = .systemIndigo
            RectD.tintColor = .systemIndigo
        }else{sender.tintColor = .systemIndigo}
    }
    
    @IBAction func pressRectD(_ sender: UIButton) {
        sender.tintColor = .systemIndigo
        i3.placeholder = "Length..."
        i4.placeholder = "Height..."
        i4.isHidden = false
        if sender.tintColor == .systemIndigo{
            sender.tintColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
            SquareD.tintColor = .systemIndigo
            RoundD.tintColor = .systemIndigo
        }else{sender.tintColor = .systemIndigo}
    }
    
    
    
    @IBAction func pressResultButton(_ sender: UIButton) {
        
        let i1 = Double(i1.text ?? "") ?? 0
        let i2 = Double(i2.text ?? "") ?? 0
        let i3 = Double(i3.text ?? "") ?? 0
        let i4 = Double(i4.text ?? "") ?? 0
        
        
        if SquareT.tintColor == #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1) &&
            SquareD.tintColor == #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1){
            let res = (i3*i3)/(i1*i1)
            Label1.text = String(format:"%.4f", res)
            print(res)
            
        }else if SquareT.tintColor == #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1) &&
                    RoundD.tintColor == #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1){
            let res = ((i3/2*i3/2)*Double.pi)/(i1*i1)
            Label1.text = String(format:"%.4f", res)
            print(res)
            
        }else if SquareT.tintColor == #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1) &&
                    RectD.tintColor == #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1){
            let res = (i3*i4)/(i1*i1)
            Label1.text = String(format:"%.4f", res)
            print(res)
            
            
        }else if RoundT.tintColor == #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1) &&
                    SquareD.tintColor == #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1){
            let res = (i3*i3)/((i1/2*i1/2)*Double.pi)
            Label1.text = String(format:"%.4f", res)
            print(res)
            
        }else if RoundT.tintColor == #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1) &&
                    RoundD.tintColor == #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1){
            let res = (i3*i3)/(i1*i1)
            Label1.text = String(format:"%.4f", res)
            print(res)
            
        }else if RoundT.tintColor == #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1) &&
                    RectD.tintColor == #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1){
            let res = (i3*i4)/((i1/2*i1/2)*Double.pi)
            Label1.text = String(format:"%.4f", res)
            print(res)
            
            
        }else if RectT.tintColor == #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1) &&
                    SquareD.tintColor == #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1){
            let res = (i3*i3)/(i1*i2)
            Label1.text = String(format:"%.4f", res)
            print(res)
        
        }else if RectT.tintColor == #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1) &&
                    RoundD.tintColor == #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1){
            let res = ((i3/2*i3/2)*Double.pi)/(i1*i2)
            Label1.text = String(format:"%.4f", res)
            print(res)
            
        }else if RectT.tintColor == #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1) &&
                    RectD.tintColor == #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1){
            let res = (i3*i4)/(i1*i2)
            Label1.text = String(format:"%.4f", res)
            print(res)
            
        }else{
            Label1.text = "?????"
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

