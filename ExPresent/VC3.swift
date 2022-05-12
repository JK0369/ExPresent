//
//  VC3.swift
//  ExPresent
//
//  Created by Jake.K on 2022/05/12.
//

import UIKit

class VC3: UIViewController {
  private let titleLabel: UILabel = {
    let label = UILabel()
    label.text = "VC3"
    label.translatesAutoresizingMaskIntoConstraints = false
    label.textColor = .black
    return label
  }()
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = .green
    self.view.addSubview(self.titleLabel)
    NSLayoutConstraint.activate([
      self.titleLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 30),
      self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
    ])
  }
}
