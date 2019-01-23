//
//  Library.swift
//  smp
//
//  Created by student on 2019/01/22.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation
import UIKit

class LibraryController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func libraryStart(_ sender: Any) {
    
    
        //  ライブラリの表示
        let album = UIImagePickerController.SourceType.photoLibrary
        if UIImagePickerController.isSourceTypeAvailable(album) {
            let album = UIImagePickerController()
            album.delegate = self
            album.sourceType = UIImagePickerController.SourceType.photoLibrary
            album.allowsEditing = true
            self.present(album, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
