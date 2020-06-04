//
//  ViewController.swift
//  Mirador
//
//  Created by Helior Colorado on 1/29/18.
//  Copyright © 2018 Helior Colorado. All rights reserved.
//

import UIKit
import ContactsUI

class ViewController: UIViewController {
    var contactPicker:CNContactPickerViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.requestAccessToContacts()
        print("did start")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController {
    func requestAccessToContacts() {
//        let store = CNContactStore()
//
//        if (CNContactStore.authorizationStatus(for: .contacts) == .notDetermined) {
//            store.requestAccess(for: .contacts, completionHandler: { (authorized, error) in
//                print("stuff")
//            })
////            store.requestAccess(for: .contacts, completionHandler: {(authorized:Bool, error:Error?) -> Void in
////                if (authorized) {
////                    print("Yay, authorized!")
////                }
////                else {
////                    print("Not authorized...")
////                }
////            })
//        }
//        else if CNContactStore.authorizationStatus(for: .contacts) == .authorized {
////            print("Already authorized!")
//        }
    }
}

extension ViewController: CNContactPickerDelegate {
    @IBAction func invokeContactListUI() {
        // must be persisted in the instance, otherwise the delegate methods aren't invoked.
        self.contactPicker = CNContactPickerViewController()
        self.contactPicker.delegate = self
        self.present(self.contactPicker, animated: true, completion: nil)
    }
    
    func contactPickerDidCancel(_ picker: CNContactPickerViewController) {
        print("user cancelled.")
    }
    
    func contactPicker(_ picker: CNContactPickerViewController, didSelect contact: CNContact) {
        print("Contact selelected!")
        print("\(contact.identifier)")
    }
    
//    func contactPicker(_ picker: CNContactPickerViewController, didSelect contactProperty: CNContactProperty) {
//        print("Contact properties selected")
//    }
}
