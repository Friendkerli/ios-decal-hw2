//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    
    @IBOutlet var returnButton: UIButton!
    
    @IBOutlet var deleteButton: UIButton!
    
    @IBOutlet var IosButton: UIButton!
    
    @IBOutlet var DeCalButton: UIButton!
    
    @IBOutlet var IsButton: UIButton!
    
    @IBOutlet var CoolButton: UIButton!
    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }
    
    func returnPressed() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("\n")
    }
    
    func deletePressed() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.deleteBackward()
    }
    
    func ios() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("IOS ")
    }
    
    func decal() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("DeCal ")
    }

    func Is() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("is ")
    }

    func cool() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("Cool")
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside)
        returnButton.addTarget(self, action: "returnPressed", forControlEvents: .TouchUpInside)
        deleteButton.addTarget(self, action: "deletePressed", forControlEvents: .TouchUpInside)
        IosButton.addTarget(self, action: "ios", forControlEvents: .TouchUpInside)
        DeCalButton.addTarget(self, action: "decal", forControlEvents: .TouchUpInside)
        IsButton.addTarget(self, action: "Is", forControlEvents: .TouchUpInside)
        CoolButton.addTarget(self, action: "cool", forControlEvents: .TouchUpInside)

    }
    
}
