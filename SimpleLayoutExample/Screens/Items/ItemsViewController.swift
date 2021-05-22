//
//  ItemsViewController.swift
//  SimpleLayoutExample
//
//  Created by Anton Kaliuzhnyi on 20.05.2021.
//

import UIKit

class ItemsViewController: UIViewController {
    
    private var items: [Item] = [
        Item(
            id: UUID().uuidString,
            name: "Headphones",
            image: UIImage(named: "Headphones"),
            shortDescription: "High quality headphones. The best for your ears!",
            description: "High quality headphones. The best for your ears!\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus auctor gravida velit, et ornare erat commodo id. Mauris pretium, nunc non placerat egestas, mi augue egestas lorem, sed finibus augue diam ut nunc. Aliquam venenatis semper interdum. Nulla facilisi. Aenean lacinia ex lectus, vel porttitor risus rutrum eu. Donec suscipit libero nec tincidunt pellentesque. Nulla facilisi. Vivamus eget pulvinar est. Nullam risus felis, fringilla sit amet dui non, malesuada luctus elit. Etiam molestie fermentum diam sed mollis. Nunc dignissim gravida nunc, non fermentum felis mollis eu. Ut sodales fringilla turpis nec feugiat. Aliquam id dolor fringilla, egestas enim nec, aliquam dui.",
            price: Price(basePrice: 230, tax: 30, currency: "USD", amountToPay: 260)
        ),
        Item(
            id: UUID().uuidString,
            name: "Key",
            image: UIImage(named: "Key"),
            shortDescription: "The ultimate tool for a master at home.",
            description: "The ultimate tool for a master at home.\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus auctor gravida velit, et ornare erat commodo id. Mauris pretium, nunc non placerat egestas, mi augue egestas lorem, sed finibus augue diam ut nunc. Aliquam venenatis semper interdum. Nulla facilisi. Aenean lacinia ex lectus, vel porttitor risus rutrum eu. Donec suscipit libero nec tincidunt pellentesque. Nulla facilisi. Vivamus eget pulvinar est. Nullam risus felis, fringilla sit amet dui non, malesuada luctus elit. Etiam molestie fermentum diam sed mollis. Nunc dignissim gravida nunc, non fermentum felis mollis eu. Ut sodales fringilla turpis nec feugiat. Aliquam id dolor fringilla, egestas enim nec, aliquam dui.",
            price: Price(basePrice: 20, tax: 2, currency: "USD", amountToPay: 22)
        ),
        Item(
            id: UUID().uuidString,
            name: "Sander",
            image: UIImage(named: "Sander"),
            shortDescription: "Everybody needs a sander.",
            description: "Everybody needs a sander.\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus auctor gravida velit, et ornare erat commodo id. Mauris pretium, nunc non placerat egestas, mi augue egestas lorem, sed finibus augue diam ut nunc. Aliquam venenatis semper interdum. Nulla facilisi. Aenean lacinia ex lectus, vel porttitor risus rutrum eu. Donec suscipit libero nec tincidunt pellentesque. Nulla facilisi. Vivamus eget pulvinar est. Nullam risus felis, fringilla sit amet dui non, malesuada luctus elit. Etiam molestie fermentum diam sed mollis. Nunc dignissim gravida nunc, non fermentum felis mollis eu. Ut sodales fringilla turpis nec feugiat. Aliquam id dolor fringilla, egestas enim nec, aliquam dui.",
            price: Price(basePrice: 20, tax: 2, currency: "USD", amountToPay: 22)
        ),
        Item(
            id: UUID().uuidString,
            name: "Jar",
            image: UIImage(named: "Jar"),
            shortDescription: "The jar with some ointment.",
            description: "The jar with some ointment.\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus auctor gravida velit, et ornare erat commodo id. Mauris pretium, nunc non placerat egestas, mi augue egestas lorem, sed finibus augue diam ut nunc. Aliquam venenatis semper interdum. Nulla facilisi. Aenean lacinia ex lectus, vel porttitor risus rutrum eu. Donec suscipit libero nec tincidunt pellentesque. Nulla facilisi. Vivamus eget pulvinar est. Nullam risus felis, fringilla sit amet dui non, malesuada luctus elit. Etiam molestie fermentum diam sed mollis. Nunc dignissim gravida nunc, non fermentum felis mollis eu. Ut sodales fringilla turpis nec feugiat. Aliquam id dolor fringilla, egestas enim nec, aliquam dui.",
            price: Price(basePrice: 35, tax: 3.50, currency: "USD", amountToPay: 38.5)
        ),
        Item(
            id: UUID().uuidString,
            name: "Dice",
            image: UIImage(named: "Dice"),
            shortDescription: "Red dice cube with white dots.",
            description: "Red dice cube with white dots.\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus auctor gravida velit, et ornare erat commodo id. Mauris pretium, nunc non placerat egestas, mi augue egestas lorem, sed finibus augue diam ut nunc. Aliquam venenatis semper interdum. Nulla facilisi. Aenean lacinia ex lectus, vel porttitor risus rutrum eu. Donec suscipit libero nec tincidunt pellentesque. Nulla facilisi. Vivamus eget pulvinar est. Nullam risus felis, fringilla sit amet dui non, malesuada luctus elit. Etiam molestie fermentum diam sed mollis. Nunc dignissim gravida nunc, non fermentum felis mollis eu. Ut sodales fringilla turpis nec feugiat. Aliquam id dolor fringilla, egestas enim nec, aliquam dui.",
            price: Price(basePrice: 2, tax: 0.50, currency: "USD", amountToPay: 2.5)
        ),
        Item(
            id: UUID().uuidString,
            name: "Car",
            image: nil,
            shortDescription: "Somebody wants a car?",
            description: "Somebody wants a car?",
            price: Price(basePrice: 20, tax: 2, currency: "USD", amountToPay: 22)
        ),
        Item(
            id: UUID().uuidString, name: "Motorcycle",
            image: nil,
            shortDescription: nil,
            description: nil,
            price: Price(basePrice: 35, tax: 3.50, currency: "USD", amountToPay: 38.5)
        )
    ]
    
    private let collectionViewFlowLayout: UICollectionViewFlowLayout = {
        $0.sectionInset = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        $0.minimumLineSpacing = 8
        return $0
    }(UICollectionViewFlowLayout())
    
    private lazy var collectionView: UICollectionView = {
        $0.backgroundColor = .listBackground
        $0.register(ItemCell.self, forCellWithReuseIdentifier: ItemCell.className)
        $0.dataSource = self
        $0.delegate = self
        $0.allowsSelection = false
        return $0
    }(UICollectionView(frame: .zero, collectionViewLayout: collectionViewFlowLayout))
    
    init() {
        super.init(nibName: nil, bundle: nil)
        title = "Items"
        tabBarItem.image = UIImage(systemName: "shippingbox.fill")
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
}

extension ItemsViewController {
    
    private func setupView() {
        view.addFilling(collectionView)
    }
    
}

extension ItemsViewController {
    
    private func configureItemCell(_ cell: ItemCell, indexPath: IndexPath) {
        let item = items[indexPath.row]
        let model = ItemCellModel(item: item, viewMode: .default)
        cell.model = model
        cell.onTap { [weak self] model in
            self?.navigationController?.pushViewController(ItemViewController(item: model.item), animated: true)
        }
        cell.onBuyTap { [weak self] item in
            let alert = UIAlertController(title: "Buy", message: "Thank you for trying to buy \"\(item.name)\"", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            self?.present(alert, animated: true)
        }
    }
    
}

extension ItemsViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ItemCell.className, for: indexPath) as? ItemCell else { fatalError() }
        configureItemCell(cell, indexPath: indexPath)
        return cell
    }
    
}

extension ItemsViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let sectionInset = (collectionViewLayout as? UICollectionViewFlowLayout)?.sectionInset
        let left = sectionInset?.left ?? 0
        let right = sectionInset?.right ?? 0
        let width = collectionView.frame.width - left - right
        let constraintSize = CGSize(width: width, height: CGFloat.infinity)
        let item = items[indexPath.row]
        let model = ItemCellModel(item: item, viewMode: .default)
        return ItemCell.size(for: model, constraintTo: constraintSize)
    }
    
}
