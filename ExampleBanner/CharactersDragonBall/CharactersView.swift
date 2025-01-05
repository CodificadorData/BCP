//
//  CharactersView.swift
//  ExampleBanner
//
//  Created by Christian Morante on 18/02/24.
//

import UIKit
import Kingfisher

class CharactersView: UIViewController {
    
    lazy var titleNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.text = dragonBallModel.name
        return label
    }()
    
    lazy var additionalDataOneLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.text = dragonBallModel.gender
        return label
    }()
    
    lazy var additionalDataTwoLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.text = dragonBallModel.race
        return label
    }()

    lazy var additionalDataThreeLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.text = dragonBallModel.maxKi
        return label
    }()

    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textAlignment = .center
        label.numberOfLines = 0
        //label.lineBreakMode = .byWordWrapping // Ajustar las líneas según las palabras
        label.text = dragonBallModel.description
        return label
    }()

    lazy var characterImageView: UIImageView = {
        let image = UIImageView()
        image.kf.setImage(with: URL(string: dragonBallModel.image))
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.backgroundColor = .gray
        scroll.addSubview(contentView)
        return scroll
    }()
    
    lazy var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.addSubview(characterImageView)
        view.addSubview(additionalDataOneLabel)
        view.addSubview(additionalDataTwoLabel)
        view.addSubview(additionalDataThreeLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(titleNameLabel)
        return view
    }()
    
    var dragonBallModel: Item
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        print("Datos: \(dragonBallModel)")
        view.addSubview(scrollView)
        setupConstraints()
        navigationController?.isToolbarHidden = true
    }
    
    init(dragonBallModel: Item) {
        self.dragonBallModel = dragonBallModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupConstraints() {
        titleNameLabel.translatesAutoresizingMaskIntoConstraints = false
        additionalDataOneLabel.translatesAutoresizingMaskIntoConstraints = false
        additionalDataTwoLabel.translatesAutoresizingMaskIntoConstraints = false
        additionalDataThreeLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        characterImageView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.widthAnchor.constraint(equalTo: view.widthAnchor),
            
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),

            // Establecer el ancho del contenedor igual al ancho de la vista principal
            contentView.widthAnchor.constraint(equalTo: view.widthAnchor),

            // Altura del contenedor (puedes cambiarla según tus elementos)
            contentView.heightAnchor.constraint(equalToConstant: 1500),

            
            titleNameLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 20),
            titleNameLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            
            additionalDataOneLabel.topAnchor.constraint(equalTo: titleNameLabel.bottomAnchor, constant: 20),
            additionalDataOneLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            
            additionalDataTwoLabel.topAnchor.constraint(equalTo: additionalDataOneLabel.bottomAnchor, constant: 20),
            additionalDataTwoLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            
            additionalDataThreeLabel.topAnchor.constraint(equalTo: additionalDataTwoLabel.bottomAnchor, constant: 20),
            additionalDataThreeLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: additionalDataThreeLabel.bottomAnchor, constant: 20),
            descriptionLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            descriptionLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
            
            characterImageView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 20),
            characterImageView.widthAnchor.constraint(equalToConstant: 200),
            characterImageView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)
        ])
    }
                                    
}
