import UIKit

class EmptyView: UIView {
    
    lazy var noDataFoundLabel: UILabel = {
        let element = UILabel()
        element.translatesAutoresizingMaskIntoConstraints = false
        element.text = "No data found"
        element.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        element.textAlignment = .center
        element.textColor = .black
        element.backgroundColor = .white
        return element
    }()
    
    // MARK: - Inits
     init() {
         super.init(frame: .zero)
        buildViewHierarchy()
        setupConstraint()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func buildViewHierarchy() {
        addSubview(noDataFoundLabel)
    }
    
    func setupConstraint() {
        NSLayoutConstraint.activate([
            noDataFoundLabel.topAnchor.constraint(equalTo: topAnchor),
            noDataFoundLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            noDataFoundLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            noDataFoundLabel.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}
