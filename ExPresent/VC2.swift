//
//  VC2.swift
//  ExPresent
//
//  Created by Jake.K on 2022/05/12.
//

import UIKit

class VC2: UIViewController {
  private let titleLabel: UILabel = {
    let label = UILabel()
    label.text = "VC2"
    label.translatesAutoresizingMaskIntoConstraints = false
    label.textColor = .black
    return label
  }()
  private let button: UIButton = {
    let button = UIButton()
    button.setTitle("다음 화면 push", for: .normal)
    button.setTitleColor(.systemBlue, for: .normal)
    button.setTitleColor(.blue, for: .highlighted)
    button.addTarget(self, action: #selector(didTap), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = .systemGreen
    self.view.addSubview(self.titleLabel)
    self.view.addSubview(self.button)
    NSLayoutConstraint.activate([
      self.titleLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 30),
      self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
    ])
    NSLayoutConstraint.activate([
      self.button.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 70),
      self.button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
    ])
  }
  
  @objc private func didTap() {
    let vc = VC3()
    self.navigationController?.pushViewController(vc, animated: true)
  }
}
