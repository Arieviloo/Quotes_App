import UIKit

class HomeViewController: UIViewController {
	
	private let homeView = HomeView()
	
	override func loadView() {
		view = homeView
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .systemBackground
	}


}

