//
//  CollectionViewController.swift
//  StateFlags_Swift
//
//  Created by DevMountain on 9/10/18.
//  Copyright © 2018 trevorAdcock. All rights reserved.
//

import UIKit

private let reuseIdentifier = "stateCell"

class StateCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

    }

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return StateController.shared.states.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? StateCollectionViewCell
        let state = StateController.shared.states[indexPath.row]
        
        cell?.state = state
        
        return cell ?? UICollectionViewCell()
    }
}
