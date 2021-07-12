//
//  Extension.swift
//  Focaccia-App
//
//  Created by ברוסלי סואעד  on 02/07/2021.
//
import UIKit
extension String {
    
    func downloadImage(imageView: UIImageView) {
        DispatchQueue.global(qos: .userInteractive).async {
            guard let url = URL(string: self) else {return}
            guard let data = try? Data(contentsOf: url) else {return}
            guard let image = UIImage(data: data) else {return}
            DispatchQueue.main.async {
                imageView.image = image
            }
        }
    }
}
