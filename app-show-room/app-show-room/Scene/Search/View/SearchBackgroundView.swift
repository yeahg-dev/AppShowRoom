//
//  SearchBackgroundView.swift
//  app-show-room
//
//  Created by Moon Yeji on 2022/12/25.
//

import UIKit

final class SearchBackgroundView: UIView {
    
    private let platformImageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var countryStackView: UIStackView = {
        let stackView = UIStackView(
            arrangedSubviews: [flagLabel, countryNameLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fill
        return stackView
    }()
    
    private let flagLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 90)
        label.textAlignment = .center
        return label
    }()
    
    private let countryNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 23, weight: .semibold)
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(named: "background")
        self.addSubview(platformImageView)
        self.addSubview(countryStackView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        configurelayout()
    }
    
    override func draw(_ rect: CGRect) {
        let centerPoint = CGPoint(x: rect.midX, y: rect.height)
        let largeRadius = rect.width * 0.8
        let largeCirclePath = UIBezierPath(
            arcCenter: centerPoint,
            radius: largeRadius,
            startAngle: .pi,
            endAngle: 2 * .pi,
            clockwise: true)
        let largeCircleColor = UIColor(named: "largeCircle")!
        largeCircleColor.setFill()
        largeCirclePath.fill()
        let smallRadius = rect.width * 0.55
        let smallCirclePath = UIBezierPath(
            arcCenter: centerPoint,
            radius: smallRadius,
            startAngle: .pi,
            endAngle: 2 * .pi,
            clockwise: true)
        let smallCircleColor = UIColor(named: "smallCircle")!
        smallCircleColor.setFill()
        smallCirclePath.fill()
    }
    
    func bindPlatformImage(_ image: UIImage?) {
        platformImageView.image = image
    }
    
    func bindCountry(flag: String, name: String) {
        flagLabel.text = flag
        countryNameLabel.text = name
    }
    
    private func configurelayout() {
        let countryY = frame.width * 0.8 * 4/5
        let smallCircleRadius = frame.width * 0.6
        NSLayoutConstraint.activate([
            platformImageView.centerYAnchor.constraint(
                equalTo: self.bottomAnchor,
                constant: -countryY),
            platformImageView.centerXAnchor.constraint(
                equalTo: self.centerXAnchor),
            platformImageView.widthAnchor.constraint(
                equalToConstant: 70),
            platformImageView.heightAnchor.constraint(
                equalToConstant: 70),
            countryStackView.centerYAnchor.constraint(
                equalTo: self.bottomAnchor,
                constant: -smallCircleRadius * 0.5),
            countryStackView.centerXAnchor.constraint(
                equalTo: self.centerXAnchor)
        ])
    }
    
}
