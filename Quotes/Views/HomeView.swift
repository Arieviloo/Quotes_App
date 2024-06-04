import UIKit

class HomeView: UIView {
	
	lazy var authorImage: UIImageView = {
		$0.translatesAutoresizingMaskIntoConstraints = false
		$0.backgroundColor = .systemPink
		return $0
	}(UIImageView())
	
	lazy var quoteLabel: UILabel = {
		$0.translatesAutoresizingMaskIntoConstraints = false
		$0.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper mi vel turpis dictum, a maximus risus efficitur. Nunc vitae dignissim purus. Cras imperdiet nunc nec pulvinar ultrices. Nam quis risus enim. Duis pretium dolor nec dolor gravida convallis ac sit amet magna."
		$0.textAlignment = .center
		$0.numberOfLines = 0
		return $0
	}(UILabel())
	
	lazy var authorNameLabel: UILabel = {
		$0.translatesAutoresizingMaskIntoConstraints = false
		$0.text = "mano mano"
		$0.textAlignment = .center
		$0.font = UIFont.systemFont(ofSize: 30, weight: .bold)
		return $0
		
	}(UILabel())
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		
		configureView()
		configureConstraints()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	private func configureView() {
		addSubview(authorImage)
		addSubview(quoteLabel)
		addSubview(authorNameLabel)
	}
	
	private func configureConstraints() {
		NSLayoutConstraint.activate([
			authorImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
			authorImage.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
			authorImage.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
			authorImage.heightAnchor.constraint(equalToConstant: 250),
			
			quoteLabel.topAnchor.constraint(equalTo: authorImage.bottomAnchor, constant: 10),
			quoteLabel.leadingAnchor.constraint(equalTo: authorImage.leadingAnchor, constant: 10),
			quoteLabel.trailingAnchor.constraint(equalTo: authorImage.trailingAnchor, constant: -10),
			
			authorNameLabel.topAnchor.constraint(equalTo: quoteLabel.bottomAnchor, constant: 10),
			authorNameLabel.leadingAnchor.constraint(equalTo: quoteLabel.leadingAnchor),
			authorNameLabel.trailingAnchor.constraint(equalTo: quoteLabel.trailingAnchor)
			
		])
	}
	
}
