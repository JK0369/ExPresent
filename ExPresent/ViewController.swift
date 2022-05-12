//
//  ViewController.swift
//  ExPresent
//
//  Created by Jake.K on 2022/05/12.
//

import UIKit

class ViewController: UIViewController {
  private let titleLabel: UILabel = {
    let label = UILabel()
    label.text = "VC1"
    label.translatesAutoresizingMaskIntoConstraints = false
    label.textColor = .black
    return label
  }()
  private let vc2 = VC2()
  lazy var nav = UINavigationController(rootViewController: self.vc2)
  private let button: UIButton = {
    let button = UIButton()
    button.setTitle("VC1 위에 떠있는 버튼", for: .normal)
    button.setTitleColor(.red, for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var myView: UIView {
    self.nav.view
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.myView.translatesAutoresizingMaskIntoConstraints = false
    self.view.addSubview(self.titleLabel)
    self.view.addSubview(self.myView)
    self.view.addSubview(self.button)
    
    NSLayoutConstraint.activate([
      self.titleLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50),
      self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
    ])
    NSLayoutConstraint.activate([
      self.myView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
      self.myView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
      self.myView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
      self.myView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 300),
    ])
    NSLayoutConstraint.activate([
      self.button.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -150),
      self.button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
    ])
  }
}
