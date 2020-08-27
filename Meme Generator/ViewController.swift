//
//  ViewController.swift
//  Meme Generator
//
//  Created by Kyle on 8/26/20.
//  Copyright © 2020 Kyle. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(selectPicture))
       
    }

    @IBAction func setTopText(_ sender: Any) {
    }
    
    @IBAction func setBottomText(_ sender: Any) {
    }
    
    @IBAction func share(_ sender: Any) {
    }
    
    @objc func selectPicture(){
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.editedImage] as? UIImage else { return }
        imageView.image = image

        dismiss(animated: true)

    }
    
    
    
}

