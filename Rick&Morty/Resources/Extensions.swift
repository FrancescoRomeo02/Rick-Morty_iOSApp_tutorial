//
//  Extensions.swift
//  Rick&Morty
//
//  Created by Francesco Romeo on 13/07/23.
//

import UIKit

extension UIView{
    func addSubviews(_ views: UIView...){
        views.forEach({
            addSubview($0)
        })
    }
}
