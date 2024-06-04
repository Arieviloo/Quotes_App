import UIKit

class HomeView: UIView {
	
	lazy var actorImage: UIImageView = {
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
	
	lazy var actorNameLabel: UILabel = {
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
		addSubview(actorImage)
		addSubview(quoteLabel)
		addSubview(actorNameLabel)
	}
	
	private func configureConstraints() {
		NSLayoutConstraint.activate([
			actorImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
			actorImage.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
			actorImage.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
			actorImage.heightAnchor.constraint(equalToConstant: 250),
			
			quoteLabel.topAnchor.constraint(equalTo: actorImage.bottomAnchor, constant: 10),
			quoteLabel.leadingAnchor.constraint(equalTo: actorImage.leadingAnchor, constant: 10),
			quoteLabel.trailingAnchor.constraint(equalTo: actorImage.trailingAnchor, constant: -10),
			
			actorNameLabel.topAnchor.constraint(equalTo: quoteLabel.bottomAnchor, constant: 10),
			actorNameLabel.leadingAnchor.constraint(equalTo: quoteLabel.leadingAnchor),
			actorNameLabel.trailingAnchor.constraint(equalTo: quoteLabel.trailingAnchor)
			
		])
	}
	
}
