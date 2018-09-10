//
//  StateCollectionViewCell.swift
//  StateFlags_Swift
//
//  Created by DevMountain on 9/10/18.
//  Copyright © 2018 trevorAdcock. All rights reserved.
//

import UIKit

class StateCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var stateNameLabel: UILabel!
    
    
    var state: State?{
        didSet{
            updateView()
        }
    }
    
    func updateView(){
        flagImageView.image = UIImage(named: state?.abbreviation ?? "ID")!
        stateNameLabel.text = state?.name
    }
    
}
