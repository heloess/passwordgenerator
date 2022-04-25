//
//  ViewController.swift
//  passwordgenerator
//
//  Created by Kanşav on 24.04.2022.
//

import UIKit

class ViewController: UIViewController {
    var symbolPass = ["#", "%", "+", "(", ")", "/", "=", "&", "^", "*", "!", "?", "[", "]", "-"]
    var uppercasePass = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "R", "S", "T", "U", "V", "Y", "Z", "X", "W", "Q"]
    var lowercasePass = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "r", "s", "t", "u", "v", "y", "z", "x", "w", "q"]
    var numberPass = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    
    var passwordWithSymbolsNumbersUppercase = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "#", "%", "+", "(", ")", "/", "=", "&", "^", "*", "!", "?", "[", "]", "-", "#", "%", "+", "(", ")", "/", "=", "&", "^", "*", "!", "?", "[", "]", "-", "#", "%", "+", "(", ")", "/", "=", "&", "^", "*", "!", "?", "[", "]", "-", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "R", "S", "T", "U", "V", "Y", "Z", "X", "W", "Q", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "r", "s", "t", "u", "v", "y", "z", "x", "w", "q"]
    
    var passwordWithSymbolsNumbers = ["#", "%", "+", "(", ")", "/", "=", "&", "^", "*", "!", "?", "[", "]", "-", "#", "%", "+", "(", ")", "/", "=", "&", "^", "*", "!", "?", "[", "]", "-", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "r", "s", "t", "u", "v", "y", "z", "x", "w", "q"]
    
    var passwordWithSymbolsUppercase = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "r", "s", "t", "u", "v", "y", "z", "x", "w", "q", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "R", "S", "T", "U", "V", "Y", "Z", "X", "W", "Q", "#", "%", "+", "(", ")", "/", "=", "&", "^", "*", "!", "?", "[", "]", "-", "#", "%", "+", "(", ")", "/", "=", "&", "^", "*", "!", "?", "[", "]", "-"]
    
    var passwordWithSymbols = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "r", "s", "t", "u", "v", "y", "z", "x", "w", "q", "#", "%", "+", "(", ")", "/", "=", "&", "^", "*", "!", "?", "[", "]", "-", "#", "%", "+", "(", ")", "/", "=", "&", "^", "*", "!", "?", "[", "]", "-"]
    
    var passwordWithNumbersUppercase = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "r", "s", "t", "u", "v", "y", "z", "x", "w", "q", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "R", "S", "T", "U", "V", "Y", "Z", "X", "W", "Q", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    
    var passwordWithUppercase = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "R", "S", "T", "U", "V", "Y", "Z", "X", "W", "Q", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "r", "s", "t", "u", "v", "y", "z", "x", "w", "q"]
    
    var passwordWithNumber = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "r", "s", "t", "u", "v", "y", "z", "x", "w", "q", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 
    
    @IBAction func copyToBoard(_ sender: Any) {
       UIPasteboard.general.string = textField.text
        
    }
    @IBOutlet var textField: UILabel!
    
    @IBOutlet var switchUppercase: UISwitch!
    
    @IBOutlet var switchNumbers: UISwitch!
    
    @IBOutlet var switchSymbols: UISwitch!
    
    @IBOutlet var sliderText: UILabel!
    
    @IBOutlet var lenghtOutlet: UISlider!
    
    @IBAction func lenghtSlider(_ sender: UISlider) {
        sliderText.text = String(Int(sender.value))
    }
    
    @IBAction func buttonGenerate(_ sender: Any) {
        let myValue = Int(lenghtOutlet.value)
        
        if switchSymbols.isOn, switchNumbers.isOn, switchSymbols.isOn {
            func limiter(_ input: String) -> String {
                let chars = input
                let limitit = chars.prefix((myValue)-(input.count-30))
               
                return String(limitit)
            }
            let password: String = limiter(passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!+passwordWithSymbolsNumbersUppercase.randomElement()!)
            textField.text = password
          
        } else if switchUppercase.isOn, switchNumbers.isOn { func limiter(_ input: String) -> String {
            let chars = input
            let limitit = chars.prefix((myValue)-(input.count-30))
           
            return String(limitit)
        }
        let password: String = limiter(passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!)
        textField.text = password
      
        } else if switchUppercase.isOn, switchSymbols.isOn {
            func limiter(_ input: String) -> String {
                let chars = input
                let limitit = chars.prefix((myValue)-(input.count-30))
            
                return String(limitit)
            }
            let password: String = limiter(passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!+passwordWithSymbolsUppercase.randomElement()!)
            textField.text = password
            
        } else if switchNumbers.isOn, switchSymbols.isOn {
            func limiter(_ input: String) -> String {
                let chars = input
                let limitit = chars.prefix((myValue)-(input.count-30))
            
                return String(limitit)
            }
            let password: String = limiter(passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!+passwordWithSymbolsNumbers.randomElement()!)
            textField.text = password
            
        } else if switchNumbers.isOn, switchUppercase.isOn {
            func limiter(_ input: String) -> String {
                let chars = input
                let limitit = chars.prefix((myValue)-(input.count-30))
            
                return String(limitit)
            }
            let password: String = limiter(passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!+passwordWithNumbersUppercase.randomElement()!)
            textField.text = password
            
        } else if switchNumbers.isOn {
            func limiter(_ input: String) -> String {
                let chars = input
                let limitit = chars.prefix((myValue)-(input.count-30))
            
                return String(limitit)
            }
            let password: String = limiter(passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!+passwordWithNumber.randomElement()!)
            textField.text = password
            
        } else if switchUppercase.isOn { func limiter(_ input: String) -> String {
            let chars = input
            let limitit = chars.prefix((myValue)-(input.count-30))
            
            return String(limitit)
        }
        let password: String = limiter(passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!+passwordWithUppercase.randomElement()!)
        textField.text = password
            
        } else if switchSymbols.isOn {
            func limiter(_ input: String) -> String {
                let chars = input
                let limitit = chars.prefix((myValue)-(input.count-30))
            
                return String(limitit)
            }
            let password: String = limiter(passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!+passwordWithSymbols.randomElement()!)
            textField.text = password

        } else { func limiter(_ input: String) -> String {
            let chars = input
            let limitit = chars.prefix((myValue)-(input.count-30))
            
            return String(limitit)
        }
        let password: String = limiter(lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!+lowercasePass.randomElement()!)
        textField.text = password
        }
    }
}
