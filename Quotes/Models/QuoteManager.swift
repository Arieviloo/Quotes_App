import UIKit

class QuoteManager {
	
	let quotes: [Quote]
	
	init() {
		let fileURL = Bundle.main.url(forResource: "quotes", withExtension: "json")!
		let jsonData = try! Data(contentsOf: fileURL)
		quotes = try! JSONDecoder().decode([Quote].self, from: jsonData)
	}
	
	func generateQuote() -> Quote {
		let index = Int(arc4random_uniform(UInt32(quotes.count)))
		return quotes[index]
	}
}
 
