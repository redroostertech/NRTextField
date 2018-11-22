//
//  NRTextField.swift
//  NRButton
//
//  Created by Michael Westbrooks on 11/21/18.
//  Copyright © 2018 NuraCode. All rights reserved.
//


import Foundation
import UIKit

@IBDesignable
class NRTextField: UITextField {
    
    //  MARK:- Class Properties (L)
    //  Create custom properties that enable flexibility to do the following:
    //  -   Reusability
    //  -   Add functionality
    //  -   Overriding theme
    //  Left side
    var leftPadding: UIView?
    var leftButton: UIButton?
    
    //  MARK:- IBInspectables (L)
    /// Provides padding to the leading edge of the UITextField with a specific width
    @IBInspectable
    public var leftPaddingWithWidth: CGFloat = 0.0 {
        didSet {
            //  Makes leftPadding reusable
            self.leftPadding = UIView(frame: CGRect(x: 0.0,
                                                    y: 0.0,
                                                    width: self.leftPaddingWithWidth,
                                                    height: self.frame.height))
            self.leftView = self.leftPadding
            self.leftViewMode = .always
        }
    }
    
    /// Provides padding to the leading edge of the UITextField with a specific width and a clickable UIButton w/ an image.
    /// - If image does not show, ensure that the Asset is set to render as DEFAULT
    @IBInspectable
    public var leftPaddingImage: UIImage? = nil {
        didSet {
            guard let leftPaddingWithImage = self.leftPaddingImage else { return }
            if self.leftPadding == nil {
                self.leftPadding = UIView(frame: CGRect(x: 0.0,
                                                        y: 0.0,
                                                        width: self.leftPaddingWithWidth,
                                                        height: self.frame.height))
            }
            if self.leftButton == nil {
                self.leftButton = UIButton(type: .system)
                self.leftButton!.frame = CGRect(x: 0,
                                                y: 0,
                                                width: self.leftPaddingWithWidth - 10,
                                                height: self.frame.height)
            }
            self.leftButton!.contentMode = .center
            self.leftButton!.setImage(leftPaddingWithImage,
                                      for: .normal)
            self.leftButton!.setTitle(nil,
                                      for: .normal)
            self.leftButton!.tintColor = self.leftPaddingImageTintColor
            self.leftButton!.backgroundColor = self.leftPaddingBackgroundColor
            self.leftPadding!.addSubview(self.leftButton!)
            self.leftView = self.leftPadding!
            self.leftViewMode = .always
            return
        }
    }
    
    /// Provides a background color for the Left Padding with Image.
    @IBInspectable
    public var leftPaddingBackgroundColor: UIColor = UIColor.clear {
        didSet {
            if self.leftPadding == nil {
                self.leftPadding = UIView(frame: CGRect(x: 0.0,
                                                        y: 0.0,
                                                        width: self.leftPaddingWithWidth,
                                                        height: self.frame.height))
            }
            if self.leftButton == nil {
                self.leftButton = UIButton(type: .system)
                self.leftButton!.frame = CGRect(x: 0,
                                                y: 0,
                                                width: self.leftPaddingWithWidth - 10,
                                                height: self.frame.height)
            }
            self.leftButton!.contentMode = .center
            self.leftButton!.setTitle(nil,
                                      for: .normal)
            self.leftButton!.backgroundColor = self.leftPaddingBackgroundColor
            self.leftPadding!.addSubview(self.leftButton!)
            self.leftView = self.leftPadding!
            self.leftViewMode = .always
            return
        }
    }
    
    /// Provides a tint/color overlay for the Left Padding with Image
    @IBInspectable
    public var leftPaddingImageTintColor: UIColor = UIColor.black {
        didSet {
            guard let leftPaddingWithImage = self.leftPaddingImage else { return }
            if self.leftPadding == nil {
                self.leftPadding = UIView(frame: CGRect(x: 0.0,
                                                        y: 0.0,
                                                        width: self.leftPaddingWithWidth,
                                                        height: self.frame.height))
            }
            if self.leftButton == nil {
                self.leftButton = UIButton(type: .system)
                self.leftButton!.frame = CGRect(x: 0,
                                                y: 0,
                                                width: self.leftPaddingWithWidth - 10,
                                                height: self.frame.height)
            }
            self.leftButton!.contentMode = .center
            self.leftButton!.setImage(leftPaddingWithImage,
                                      for: .normal)
            self.leftButton!.setTitle(nil,
                                      for: .normal)
            self.leftButton!.tintColor = self.leftPaddingImageTintColor
            self.leftButton!.backgroundColor = self.leftPaddingBackgroundColor
            self.leftPadding!.addSubview(self.leftButton!)
            return
        }
    }
    
    //  MARK:- Class Properties (R)
    //  Create custom properties that enable flexibility to do the following:
    //  -   Reusability
    //  -   Add functionality
    //  -   Overriding theme
    //  Right side
    var rightPadding: UIView?
    var rightButton: UIButton?
    
    //  MARK:- IBInspectables (R)
    /// Provides padding to the trailing edge of the UITextField with a specific width
    @IBInspectable
    public var rightPaddingWithWidth: CGFloat = 0.0 {
        didSet {
            //  Makes leftPadding reusable
            self.rightPadding = UIView(frame: CGRect(x: 0.0,
                                                     y: 0.0,
                                                     width: self.rightPaddingWithWidth,
                                                     height: self.frame.height))
            self.rightView = self.rightPadding
            self.rightViewMode = .always
        }
    }
    
    /// Provides padding to the trailing edge of the UITextField with a specific width and a clickable UIButton w/ an image.
    /// - If image does not show, ensure that the Asset is set to render as DEFAULT
    @IBInspectable
    public var rightPaddingImage: UIImage? = nil {
        didSet {
            guard let rightPaddingWithImage = self.rightPaddingImage else { return }
            if self.rightPadding == nil {
                self.rightPadding = UIView(frame: CGRect(x: 0.0,
                                                         y: 0.0,
                                                         width: self.rightPaddingWithWidth,
                                                         height: self.frame.height))
            }
            if self.rightButton == nil {
                self.rightButton = UIButton(type: .system)
                self.rightButton!.frame = CGRect(x: 0,
                                                 y: 0,
                                                 width: self.rightPaddingWithWidth - 10,
                                                 height: self.frame.height)
            }
            self.rightButton!.contentMode = .center
            self.rightButton!.setImage(rightPaddingWithImage,
                                       for: .normal)
            self.rightButton!.setTitle(nil,
                                       for: .normal)
            self.rightButton!.tintColor = self.rightPaddingImageTintColor
            self.rightButton!.backgroundColor = self.rightPaddingBackgroundColor
            self.rightPadding!.addSubview(self.rightButton!)
            self.rightView = self.rightPadding!
            self.rightViewMode = .always
            return
        }
    }
    
    /// Provides a background color for the Left Padding with Image.
    @IBInspectable
    public var rightPaddingBackgroundColor: UIColor = UIColor.clear {
        didSet {
            if self.rightPadding == nil {
                self.rightPadding = UIView(frame: CGRect(x: 0.0,
                                                         y: 0.0,
                                                         width: self.rightPaddingWithWidth,
                                                         height: self.frame.height))
            }
            if self.rightButton == nil {
                self.rightButton = UIButton(type: .system)
                self.rightButton!.frame = CGRect(x: 0,
                                                 y: 0,
                                                 width: self.rightPaddingWithWidth - 10,
                                                 height: self.frame.height)
            }
            self.rightButton!.contentMode = .center
            self.rightButton!.setTitle(nil,
                                       for: .normal)
            self.rightButton!.backgroundColor = self.rightPaddingBackgroundColor
            self.rightPadding!.addSubview(self.rightButton!)
            return
        }
    }
    
    /// Provides a tint/color overlay for the Left Padding with Image
    @IBInspectable
    public var rightPaddingImageTintColor: UIColor = UIColor.black {
        didSet {
            guard let rightPaddingWithImage = self.rightPaddingImage else { return }
            if self.rightPadding == nil {
                self.rightPadding = UIView(frame: CGRect(x: 0.0,
                                                         y: 0.0,
                                                         width: self.rightPaddingWithWidth,
                                                         height: self.frame.height))
            }
            if self.rightButton == nil {
                self.rightButton = UIButton(type: .system)
                self.rightButton!.frame = CGRect(x: 0,
                                                 y: 0,
                                                 width: self.rightPaddingWithWidth - 10,
                                                 height: self.frame.height)
            }
            self.rightButton!.contentMode = .center
            self.rightButton!.setImage(rightPaddingWithImage,
                                       for: .normal)
            self.rightButton!.setTitle(nil,
                                       for: .normal)
            self.rightButton!.tintColor = self.rightPaddingImageTintColor
            self.rightButton!.backgroundColor = self.rightPaddingBackgroundColor
            self.rightPadding!.addSubview(self.rightButton!)
            return
        }
    }
    
    /// Provides a corner radius.
    @IBInspectable
    public var cornerRadius: CGFloat = 0.0 {
        didSet {
            if self.cornerRadius > 0.0 {
                self.clipsToBounds = true
                self.layer.cornerRadius = self.frame.height / cornerRadius
            }
        }
    }
    
    /// Provides a color for the placeholder text
    /// If you already have an extension of UITextfield that adds this functionality, provide OVERRIDE here
    /// @IBInspectable override var placeHolderColor: UIColor? {
    @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedStringKey.foregroundColor: newValue!])
        }
    }
    
    //  Adds a horizontal line under the textField.
    @IBInspectable var horizontalLineWithHeight: CGFloat = 0.0 {
        didSet {
            self.borderStyle = .none
            self.layer.backgroundColor = UIColor.white.cgColor
            self.layer.masksToBounds = false
            self.layer.shadowColor = UIColor.gray.cgColor
            self.layer.shadowOffset = CGSize(width: 0.0,
                                             height: self.horizontalLineWithHeight)
            self.layer.shadowOpacity = 1.0
            self.layer.shadowRadius = 0.0
        }
    }
}
