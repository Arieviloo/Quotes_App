import UIKit

class ConfigurationView: UIView {
	
	lazy var automaticallyLabel: UILabel = {
		$0.translatesAutoresizingMaskIntoConstraints = false
		$0.text = "Mudar automaticamente"
		return $0
	}(UILabel())
	
	lazy var automaticallySwitch: UISwitch = {
		$0.translatesAutoresizingMaskIntoConstraints = false
		$0.isOn = true
		return $0
	}(UISwitch())
	
	lazy var changeLabel: UILabel = {
		$0.translatesAutoresizingMaskIntoConstraints = false
		$0.text = "Mudar em 8 segundos"
		return $0
	}(UILabel())
	
	lazy var changeSlider: UISlider = {
		$0.translatesAutoresizingMaskIntoConstraints = false
		$0.minimumValue = 5
		$0.maximumValue = 30
		$0.value = 8
		return $0
	}(UISlider())
	
	lazy var colorLabel: UILabel = {
		$0.translatesAutoresizingMaskIntoConstraints = false
		$0.text = "Esquema de cores"
		return $0
	}(UILabel())
	
	lazy var colorSegment: UISegmentedControl = {
		$0.translatesAutoresizingMaskIntoConstraints = false
		$0.selectedSegmentIndex = 0
		return $0
	}(UISegmentedControl(items: ["Dark", "Light"]))
	
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		configureView()
		configureConstraints()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	private func configureView() {
		addSubview(automaticallyLabel)
		addSubview(automaticallySwitch)
		
		addSubview(changeLabel)
		addSubview(changeSlider)
		
		addSubview(colorLabel)
		addSubview(colorSegment)
	}
	
	private func configureConstraints() {
		NSLayoutConstraint.activate([
			automaticallyLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
			automaticallyLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
			
			automaticallySwitch.topAnchor.constraint(equalTo: automaticallyLabel.bottomAnchor, constant: 10),
			automaticallySwitch.centerXAnchor.constraint(equalTo: centerXAnchor),
			
			changeLabel.topAnchor.constraint(equalTo: automaticallySwitch.bottomAnchor, constant: 20),
			changeLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
			
			changeSlider.topAnchor.constraint(equalTo: changeLabel.bottomAnchor, constant: 10),
			changeSlider.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
			changeSlider.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
			
			colorLabel.topAnchor.constraint(equalTo: changeSlider.bottomAnchor, constant: 20),
			colorLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
			
			colorSegment.topAnchor.constraint(equalTo: colorLabel.bottomAnchor, constant: 10),
			colorSegment.leadingAnchor.constraint(equalTo: changeSlider.leadingAnchor),
			colorSegment.trailingAnchor.constraint(equalTo: changeSlider.trailingAnchor),
		])
	}
}
