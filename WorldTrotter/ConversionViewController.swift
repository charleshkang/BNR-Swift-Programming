//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Charles Kang on 6/25/16.
//  Copyright © 2016 Charles Kang. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet var celsiusLabel: UILabel!
    @IBOutlet var textField: UITextField!
    
    var fahrenheitValue: Double? {
        didSet {
            updateCelsiusLabel()
        }
    }
    
    var celsiusValue: Double? {
        if let value = fahrenheitValue {
            return (value - 32) * (5/9)
        } else {
            return nil
        }
    }
    
    let numberFormatter: NSNumberFormatter = {
        let nf = NSNumberFormatter()
        nf.numberStyle = .DecimalStyle
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    }()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        print("ConversionVC loaded its view")
    }
    
    override func viewWillAppear(animated: Bool)
    {
        var hour: Int?
        let currentDate = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale.currentLocale()
        dateFormatter.dateFormat = "HH"
        hour = Int(dateFormatter.stringFromDate(currentDate))
        if hour < 7 || hour > 19 {
            view.backgroundColor = UIColor.blackColor()
        } else {
            view.backgroundColor = UIColor.lightGrayColor()
        }
    }
    
    @IBAction func fahrenheitFieldEditingChanged(textField: UITextField)
    {
//        if let text = textField.text, value = Double(text) {
//            fahrenheitValue = value
//        } else {
//            fahrenheitValue = nil
//        }
        
        if let text = textField.text, number = numberFormatter.numberFromString(text) {
            fahrenheitValue = number.doubleValue
        } else {
            fahrenheitValue = nil
        }
    }
    
    func updateCelsiusLabel()
    {
        if let value = celsiusValue {
            celsiusLabel.text = numberFormatter.stringFromNumber(value)
        } else {
            celsiusLabel.text = "???"
        }
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool
    {
//        let exsitingTextHasDecimalSeparator = textField.text?.rangeOfString(".")
//        let replacementTextHasDecimalSeparator = string.rangeOfString(".")
        
        let currentLocale = NSLocale.currentLocale()
        let decimalSeparator = currentLocale.objectForKey(NSLocaleDecimalSeparator) as! String
        
        let existingTextHasDecimalSeparator = textField.text?.rangeOfString(decimalSeparator)
        let replacementTextHasDecimalSeparator = string.rangeOfString(decimalSeparator)
//        let letters = NSCharacterSet.letterCharacterSet()
//        let replacmentTextHasAlphabeticCharacters = string.rangeOfCharacterFromSet(letters)
        
//        if(replacmentTextHasAlphabeticCharacters != nil) {
//            return false
            if existingTextHasDecimalSeparator != nil && replacementTextHasDecimalSeparator != nil{
                return false
            } else {
                return true
            }
        }
    
    @IBAction func dismissKeyboard(sender: AnyObject)
    {
        textField.resignFirstResponder()
    }
}