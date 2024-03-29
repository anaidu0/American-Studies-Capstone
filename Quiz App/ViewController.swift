//
//  ViewController.swift
//  Quiz2
//
//  Created by Anirudh on 11/26/19
//

import UIKit

class ViewController: UIViewController {
    
    var window: UIWindow?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="Automation Quiz"
        self.view.backgroundColor=UIColor.white
        setupViews()
    }
    
    @objc func btnGetStartedAction() {
        let v=QuizVC()
        self.navigationController?.pushViewController(v, animated: true)
    }
    
    @objc func btnLearnMoreAction() {
        let v=ArticleVC()
        self.navigationController?.pushViewController(v, animated: true)
    }
    
    func setupViews() {
        self.view.addSubview(lblTitle)
        lblTitle.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 150).isActive=true
        lblTitle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        lblTitle.widthAnchor.constraint(equalToConstant: 250).isActive=true
        lblTitle.heightAnchor.constraint(equalToConstant: 80).isActive=true
        
        self.view.addSubview(btnGetStarted)
        btnGetStarted.heightAnchor.constraint(equalToConstant: 50).isActive=true
        btnGetStarted.widthAnchor.constraint(equalToConstant: 150).isActive=true
        btnGetStarted.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        btnGetStarted.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0).isActive=true
        
        self.view.addSubview(btnLearnMore)
        btnLearnMore.topAnchor.constraint(equalTo: btnGetStarted.bottomAnchor, constant: 30).isActive=true
        btnLearnMore.heightAnchor.constraint(equalToConstant: 50).isActive=true
        btnLearnMore.widthAnchor.constraint(equalToConstant: 150).isActive=true
        btnLearnMore.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
    }
    
    let lblTitle: UILabel = {
        let lbl=UILabel()
        lbl.text="Welcome"
        lbl.textColor=UIColor.black
        lbl.textAlignment = .center
        lbl.font = UIFont.boldSystemFont(ofSize: 50)
        lbl.numberOfLines=2
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    
    let btnGetStarted: UIButton = {
        let btn=UIButton()
        btn.setTitle("Take the Quiz", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.backgroundColor=UIColor.systemBlue
        btn.layer.cornerRadius=5
        btn.layer.masksToBounds=true
        btn.translatesAutoresizingMaskIntoConstraints=false
        btn.addTarget(self, action: #selector(btnGetStartedAction), for: .touchUpInside)
        return btn
    }()
    
    let btnLearnMore: UIButton = {
        let btn=UIButton()
        btn.setTitle("Learn", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.backgroundColor=UIColor.systemBlue
        btn.layer.cornerRadius=5
        btn.layer.masksToBounds=true
        btn.translatesAutoresizingMaskIntoConstraints=false
        btn.addTarget(self, action: #selector(btnLearnMoreAction), for: .touchUpInside)
        return btn
    }()
}








