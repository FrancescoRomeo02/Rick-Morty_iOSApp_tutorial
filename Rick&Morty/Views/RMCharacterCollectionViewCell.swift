//
//  RMCharacterCollectionViewCell.swift
//  Rick&Morty
//
//  Created by Francesco Romeo on 14/07/23.
//

import UIKit

/// Single cell for a character
final class RMCharacterCollectionViewCell: UICollectionViewCell {
    static let cellId = "RMCharacterCollectionViewCell"
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let nameLablel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.font = .systemFont(ofSize: 18, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let statusLable: UILabel = {
        let label = UILabel()
        label.textColor = .secondaryLabel
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Init
    override init(frame: CGRect){
        super.init(frame: frame)
        contentView.backgroundColor = .secondarySystemBackground
        contentView.addSubviews(imageView, nameLablel, statusLable)
        addConstraints()
    }

    required init?(coder: NSCoder){
        fatalError("Unsupported")
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            nameLablel.heightAnchor.constraint(equalToConstant: 40),
            statusLable.heightAnchor.constraint(equalToConstant: 40),
            
            nameLablel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 5),
            nameLablel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -5),
            statusLable.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 5),
            statusLable.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -5),
            
            nameLablel.bottomAnchor.constraint(equalTo: statusLable.topAnchor, constant: -3),
            statusLable.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -3),
            
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: nameLablel.topAnchor, constant: -3),
            imageView.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            imageView.rightAnchor.constraint(equalTo: contentView.rightAnchor)
        ])
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
        nameLablel.text = nil
        statusLable.text = nil
    }
    
    public func configure(width viewModel: RMCharacterCollectionViewCellViewModel){
        nameLablel.text = viewModel.characterName
        statusLable.text = viewModel.characterStatusText
        viewModel.fetchImage{ [weak self] result in
            switch result {
            case .success(let data):
                DispatchQueue.main.sync {
                    let image = UIImage(data: data)
                    self?.imageView.image = image
                }
            case .failure(let error):
                print(String(describing: error))
                break
            }
            
        }
    }
    
}
