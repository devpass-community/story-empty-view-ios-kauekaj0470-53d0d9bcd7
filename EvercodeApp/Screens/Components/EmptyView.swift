import UIKit

class EmptyView: UIView {
    
    lazy var noDataFoundLabel: UILabel = {
        let element = UILabel()
        element.translatesAutoresizingMaskIntoConstraints = false
        element.text = "No data found"
        element.textColor = .black
        element.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        element.textAlignment = .center
        return element
    }()
    
    // MARK: - Inits
    override init(frame: CGRect) {
        super.init(frame: frame)
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
            noDataFoundLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            noDataFoundLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}
