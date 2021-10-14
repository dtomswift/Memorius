//
//  ReviewVC.swift
//  Memorius
//
//  Created by Devron Tombacco on 14/10/2021.
//

import UIKit

class ReviewVC: UIViewController {

    // MARK:-- UIBUTTONS
    let forwardButton = UIButton()
    let backwardsButton = UIButton()
    let doneButton = UIButton()
    
    
    // MARK:-- UILABELS
    let frontLabel = UILabel()
    let backLabel = UILabel()
    
    // MARK:-- UIPROGRESSVIEWS
    let reviewProgressBar = UIProgressView(progressViewStyle: .bar)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Review"
        view.backgroundColor = .white
        
        view.addSubview(frontLabel)
        view.addSubview(backLabel)
        view.addSubview(reviewProgressBar)
        view.addSubview(forwardButton)
        view.addSubview(backwardsButton)
        view.addSubview(doneButton)
        
        configureFrontLabel()
        configureBackLabel()
        configureProgressBar()
        configureForwardButton()
        configureBackwardsButton()
        configureDoneButton()
    }
    
    func configureFrontLabel(){
        
        frontLabel.translatesAutoresizingMaskIntoConstraints = false
        frontLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40).isActive = true
        frontLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        frontLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        frontLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        frontLabel.heightAnchor.constraint(equalToConstant: 170).isActive = true
        frontLabel.text = " question text here"
        frontLabel.textColor = .white
        frontLabel.backgroundColor = .systemBlue
        frontLabel.font = UIFont(name: "helvetica", size: 14)
        frontLabel.textAlignment = .left
        frontLabel.numberOfLines = 0
        frontLabel.adjustsFontSizeToFitWidth = true
        
    }
    
    func configureBackLabel(){
        
        backLabel.translatesAutoresizingMaskIntoConstraints = false
        backLabel.topAnchor.constraint(equalTo: frontLabel.bottomAnchor, constant: 20).isActive = true
        backLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        backLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        backLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        backLabel.heightAnchor.constraint(equalToConstant: 170).isActive = true
        backLabel.text = " answer text here"
        backLabel.textColor = .white
        backLabel.backgroundColor = .systemBlue
        backLabel.font = UIFont(name: "helvetica", size: 14)
        backLabel.textAlignment = .left
        backLabel.numberOfLines = 0
        backLabel.adjustsFontSizeToFitWidth = true
        
    }

    func configureProgressBar(){
        
        reviewProgressBar.translatesAutoresizingMaskIntoConstraints = false
        reviewProgressBar.topAnchor.constraint(equalTo: backLabel.bottomAnchor, constant: 30).isActive = true
        reviewProgressBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        reviewProgressBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        reviewProgressBar.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        reviewProgressBar.frame = CGRect(x: 10, y: 100, width: view.frame.size.width - 20, height: 50)
        reviewProgressBar.trackTintColor = .systemGray
        reviewProgressBar.progressTintColor = .systemBlue
        reviewProgressBar.setProgress(0.33, animated: false)
        
    }
    
    func configureForwardButton() {
        
        forwardButton.translatesAutoresizingMaskIntoConstraints = false
        forwardButton.topAnchor.constraint(equalTo: reviewProgressBar.bottomAnchor, constant: 70).isActive = true
        forwardButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        forwardButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        forwardButton.widthAnchor.constraint(equalToConstant: 48).isActive = true
        forwardButton.setImage(UIImage(systemName: "arrow.forward"), for: .normal)
        forwardButton.tintColor = .white
        forwardButton.backgroundColor = .systemBlue
        forwardButton.setTitleColor(.white, for: .normal)
        forwardButton.layer.cornerRadius = 24
        forwardButton.addTarget(self, action: #selector(didTapForwardButton), for: .touchUpInside)
    }
    
    @objc private func didTapForwardButton() {
        print("Forward button tapped")
    }
    
    
    func configureBackwardsButton(){
        
        backwardsButton.translatesAutoresizingMaskIntoConstraints = false
        backwardsButton.topAnchor.constraint(equalTo: reviewProgressBar.bottomAnchor, constant: 70).isActive = true
        backwardsButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        backwardsButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        backwardsButton.widthAnchor.constraint(equalToConstant: 48).isActive = true
        backwardsButton.setImage(UIImage(systemName: "arrow.backward"), for: .normal)
        backwardsButton.tintColor = .white
        backwardsButton.backgroundColor = .systemBlue
        backwardsButton.setTitleColor(.white, for: .normal)
        backwardsButton.layer.cornerRadius = 24
        backwardsButton.addTarget(self, action: #selector(didTapBackwardsButton), for: .touchUpInside)
    }
    
    @objc private func didTapBackwardsButton() {
        print("Backwards button tapped")
    }
    
    func configureDoneButton(){
        
        doneButton.translatesAutoresizingMaskIntoConstraints = false
        doneButton.topAnchor.constraint(equalTo: reviewProgressBar.bottomAnchor, constant: 70).isActive = true
        doneButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        doneButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        doneButton.widthAnchor.constraint(equalToConstant: 148).isActive = true
        doneButton.setTitle("DONE", for: .normal)
        doneButton.backgroundColor = .systemBlue
        doneButton.setTitleColor(.white, for: .normal)
        doneButton.layer.cornerRadius = 10
        doneButton.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        doneButton.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        doneButton.addTarget(self, action: #selector(didTapDoneButton), for: .touchUpInside)
        
    }
    
    @objc private func didTapDoneButton() {
        navigationController?.popToRootViewController(animated: true)
    }
    

}
