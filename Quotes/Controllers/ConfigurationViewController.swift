import UIKit

class ConfigurationViewController: UIViewController {
	
	private let configurationView = ConfigurationView()
	
	override func loadView() {
		view = configurationView
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.backgroundColor = .systemBackground
	}
}
