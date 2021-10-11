//
//  RunthroughVC.swift
//  Memorius
//
//  Created by Devron Tombacco on 10/10/2021.
//

import UIKit

class RunthroughVC: UIViewController {

    // MARK: -- UISTACKVIEWS
    let deckDetailsStackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Runthrough: (Deck Name Here)"
        
        view.addSubview(deckDetailsStackView)

    }




}