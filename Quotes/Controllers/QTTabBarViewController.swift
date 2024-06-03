import UIKit

class QTTabBarViewController: UITabBarController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		createTabBar()
	}
	
	func homeNC() -> UINavigationController {
		let home = HomeViewController()
		home.title = "Home"
		home.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house.fill"), tag: 1)
		return UINavigationController(rootViewController: home)
	}
	
	func configurationNC() -> UINavigationController {
		let config = ConfigurationViewController()
		config.title = "Configuration"
		config.tabBarItem = UITabBarItem(title: "Configuration", image: UIImage(systemName: "gearshape.fill"), tag: 2)
		return UINavigationController(rootViewController: config)
	}
	
	private func createTabBar() {
		UITabBar.appearance().tintColor = .systemPink
		UITabBar.appearance().backgroundColor = .clear
		setViewControllers([homeNC(), configurationNC()], animated: true)
	}
}
