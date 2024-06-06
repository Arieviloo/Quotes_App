import UIKit

class HomeViewController: UIViewController {
	
	private let homeView = HomeView()
	private let quoteManager = QuoteManager()
	private var timer: Timer?
	
	override func loadView() {
		view = homeView
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .systemBackground
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		prepareQuote()
	}
	
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		prepareQuote()
	}
	
	private func prepareQuote() {
		timer?.invalidate()
		timer = Timer.scheduledTimer(withTimeInterval: 8.0, repeats: true, block: { timer in
			self.showRandowQuote()
		})
		showRandowQuote()
	}
	
	private func showRandowQuote() {
		let quote = quoteManager.generateQuote()
		homeView.authorImage.image = UIImage(named: quote.image)
		homeView.quoteLabel.text = quote.quoteFormatted
		homeView.authorNameLabel.text = quote.authorFormatted
	}
	
	
	
	

}

