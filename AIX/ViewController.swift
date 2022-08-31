//
//  ViewController.swift
//  AIX
//
//  Created by 박찬일 on 8/31/22.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    let imgPickerController = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgPickerController.delegate = self

    }

    @IBAction func addImgAction(_ sender: UIButton) {
        imgPickerController.sourceType = .photoLibrary
               self.present(imgPickerController, animated: true, completion: nil)
    }
    
    @IBOutlet weak var photoImageView: UIImageView!
    
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let img = info[UIImagePickerController.InfoKey.originalImage]{
                photoImageView.image = img as? UIImage
            }
            dismiss(animated: true, completion: nil)
        }
    
    
}
class VNGeneratePersonSegmentationRequest : VNStatefulRequest{
    
}

