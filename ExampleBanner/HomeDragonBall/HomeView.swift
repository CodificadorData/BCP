//
//  HomeView.swift
//  ExampleBanner
//
//  Created by Christian Morante on 18/02/24.
//

import Foundation
import UIKit
import Kingfisher

class DragonBallView: UIViewController {
    
    var presenter: DragonBallPresenter?
    let cellIdentifi = "cell"
    var personaje: Item?
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let dragonBallRouter = DragonBallRouter()
        dragonBallRouter.goToCharactersDetail(mainView: self, dragonBallModel: personaje!)
    }
    
    lazy var tableHome: UITableView = {
        let table = UITableView()
        table.backgroundColor = .darkGray
        table.rowHeight = 80.0
        return table
    }()
    
    lazy var headerView: UIView = {
        let header = UIView(frame: CGRect(x: 0, y: 0, width: tableHome.frame.width, height: 44))
        return header
    }()
    
    lazy var labelHeader: UILabel = {
        let labelHeader = UILabel()
        labelHeader.text = "Personajes"
        labelHeader.textAlignment = .center
        labelHeader.font = UIFont.boldSystemFont(ofSize: 18)
        labelHeader.textColor = .black
        return labelHeader
    }()
    
    lazy var tableCellHome: UITableViewCell = {
        let cell = UITableViewCell()
        cell.backgroundColor = .white
        return cell
    }()
    
    lazy var scrollHome: UIScrollView = {
        let scroll = UIScrollView()
        scroll.backgroundColor = .purple
        scroll.contentSize = CGSize(width: viewContainer.frame.width, height: 1000)
        return scroll
    }()
    
    lazy var bannerButton: UIButton = {
        let button = UIButton()
        button.setTitle(">", for: .normal)
        return button
    }()
    
    lazy var bannerImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleToFill
        return image
    }()
    
    lazy var principalImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Bienvenida")
        image.contentMode = .scaleToFill
        return image
    }()
    
    lazy var bannerDescription: UILabel = {
        let description = UILabel()
        description.text = "S/ 20.200 (TCEA de 10.2%)"
        description.textAlignment = .center
        description.textColor = .black
        description.font = UIFont.systemFont(ofSize: 12)
        return description
    }()
    
    lazy var bannerTittle: UILabel = {
        let tittle = UILabel()
        tittle.text = "Solicita tu Préstamo \npre aprobado de:"
        tittle.textAlignment = .center
        tittle.textColor = .black
        tittle.font = UIFont.systemFont(ofSize: 16)
        return tittle
    }()
    
    lazy var viewContainer: UIView = {
        let container = UIView()
        container.backgroundColor = .gray
        return container
    }()
    
    lazy var bannerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 35/255.0, green: 78/255.0, blue: 178/255.0, alpha: 1)
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        return view
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder: ) has not been implemented")
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        self.title = "Dragon Ball Z"
        view.backgroundColor = .blue
        view.addSubview(viewContainer)
        viewContainer.addSubview(scrollHome)
        scrollHome.addSubview(bannerView)
        scrollHome.addSubview(tableHome)
        headerView.addSubview(labelHeader)
        
        scrollHome.addSubview(principalImage)
        bannerView.addSubview(bannerButton)
        bannerView.addSubview(bannerTittle)
        bannerView.addSubview(bannerDescription)
        bannerView.addSubview(bannerImage)
        bannerButton.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        tableHome.delegate = self
        tableHome.dataSource = self
        tableHome.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifi)
        tableHome.reloadData()
        setupBannerView()
        tableHome.tableHeaderView = headerView
        presenter?.bringData()
        setupNavigationBar()
        //principalImage.kf.setImage(with: URL(string: (presenter?.modelDragon[1].image)!)!)
        //principalImage.kf.setImage(with: URL(string: ("https://dragonball-api.com/characters/bulma.webp")))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isToolbarHidden = false
    }
    
    func setupBannerView() {
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        bannerButton.translatesAutoresizingMaskIntoConstraints = false
        bannerTittle.translatesAutoresizingMaskIntoConstraints = false
        bannerDescription.translatesAutoresizingMaskIntoConstraints = false
        bannerImage.translatesAutoresizingMaskIntoConstraints = false
        viewContainer.translatesAutoresizingMaskIntoConstraints = false
        scrollHome.translatesAutoresizingMaskIntoConstraints = false
        tableHome.translatesAutoresizingMaskIntoConstraints = false
        principalImage.translatesAutoresizingMaskIntoConstraints = false
        labelHeader.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            
            viewContainer.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            viewContainer.widthAnchor.constraint(equalTo: view.widthAnchor),
            viewContainer.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            viewContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            scrollHome.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollHome.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            scrollHome.widthAnchor.constraint(equalTo: view.widthAnchor),
            scrollHome.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            bannerView.bottomAnchor.constraint(equalTo: tableHome.bottomAnchor, constant: 150),
            bannerView.centerXAnchor.constraint(equalTo: scrollHome.centerXAnchor),
            bannerView.widthAnchor.constraint(equalToConstant: 327),
            bannerView.heightAnchor.constraint(equalToConstant: 104),
            
            bannerButton.widthAnchor.constraint(equalToConstant: 20),
            bannerButton.heightAnchor.constraint(equalToConstant: 20),
            bannerButton.centerYAnchor.constraint(equalTo: bannerView.centerYAnchor),
            bannerButton.rightAnchor.constraint(equalTo: bannerView.rightAnchor, constant: -10),
            
            bannerTittle.topAnchor.constraint(equalTo: bannerView.topAnchor, constant: 10),
            bannerTittle.centerXAnchor.constraint(equalTo: bannerView.centerXAnchor),
            
            bannerDescription.topAnchor.constraint(equalTo: bannerTittle.topAnchor, constant: 70),
            bannerDescription.leftAnchor.constraint(equalTo: bannerView.leftAnchor, constant: 20),
            
            bannerImage.topAnchor.constraint(equalTo: bannerView.topAnchor, constant: 20),
            bannerImage.rightAnchor.constraint(equalTo: bannerView.rightAnchor, constant: -50),
            bannerImage.heightAnchor.constraint(equalToConstant: 80),
            bannerImage.widthAnchor.constraint(equalToConstant: 30),
            
            tableHome.topAnchor.constraint(equalTo: scrollHome.topAnchor),
            tableHome.leadingAnchor.constraint(equalTo: scrollHome.leadingAnchor),
            tableHome.heightAnchor.constraint(equalToConstant: 500),
            tableHome.widthAnchor.constraint(equalToConstant: 200),
            
            principalImage.centerYAnchor.constraint(equalTo: tableHome.centerYAnchor),
            principalImage.rightAnchor.constraint(equalTo: viewContainer.rightAnchor, constant: -20),
            principalImage.heightAnchor.constraint(equalToConstant: 400),
            principalImage.widthAnchor.constraint(equalToConstant: 150),
            
            labelHeader.centerYAnchor.constraint(equalTo: headerView.centerYAnchor),
            labelHeader.centerXAnchor.constraint(equalTo: headerView.centerXAnchor)
            
        ])
    }
    
    func setupNavigationBar() {
        self.navigationController?.navigationBar.barTintColor = .red
        self.navigationController?.navigationBar.tintColor = .white
        self.navigationController?.navigationBar.backgroundColor = .red
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        let toolbarItem = [
            UIBarButtonItem(
            title: "Noticias",
            style: .plain,
            target: self,
            action: nil
        ), UIBarButtonItem(
            title: "Tienda",
            style: .plain,
            target: self,
            action: nil
        ), UIBarButtonItem(
            title: "Adicional",
            style: .plain,
            target: self,
            action: nil
        ), UIBarButtonItem(
            title: "Contacto",
            style: .plain,
            target: self,
            action: nil
        )]
        toolbarItems = toolbarItem
    }
}

extension DragonBallView: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (presenter?.modelDragon.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifi, for: indexPath)
        cell.backgroundColor = .brown
        let personajeNombre = presenter?.modelDragon[indexPath.row].name
        cell.textLabel?.text = personajeNombre
        
        cell.textLabel?.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cell.textLabel!.centerXAnchor.constraint(equalTo: cell.contentView.centerXAnchor),
            cell.textLabel!.centerYAnchor.constraint(equalTo: cell.contentView.centerYAnchor)
        ])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let url = presenter?.modelDragon[indexPath.row].image else {
            return
        }
        principalImage.kf.setImage(with: URL(string: url))
        personaje = (presenter?.modelDragon[indexPath.row])!
    }
}

extension DragonBallView: DragonBallUI {
    func updateDragonBall(dragonBallList: [Item]) {
        print("updateDragonBall \(dragonBallList)")
        DispatchQueue.main.async {
            self.tableHome.reloadData()
        }
    }
    
    
}
