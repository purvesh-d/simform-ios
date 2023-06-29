//
//  ImagePickerViewController.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 17/04/23.
//

import UIKit

class ImagePickerViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnAction(_ sender: UIButton) {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = true
        imagePicker.delegate = self
        self.present(imagePicker, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let img = info[.editedImage] else {
            return
        }
        self.image.image = img as? UIImage
        print(info[.editedImage] ?? "")
        print(info[.cropRect] ?? "")
        print(info[.imageURL] ?? "")
        print(info[.mediaMetadata] ?? "")
        print(info[.mediaType] ?? "")
        print(info[.mediaURL] ?? "")
        dismiss(animated: true)
    }
}
