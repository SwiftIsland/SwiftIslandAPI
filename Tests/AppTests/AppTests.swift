@testable import App

import Dispatch
import XCTest

final class AppTests : XCTestCase {
    func testTitoTicketRequest() {
        
        let exp = expectation(description: "Should load Tito request")
        
        let query = SearchQuery(reference: "DXVT")
        
        try? TitoTicketRequest(query: query).call { (result) in
            switch(result) {
            case .success(let data):
                dump(data.tickets)
                
                XCTAssertGreaterThan(data.tickets.count, 0)
                exp.fulfill()
                
            case .error(let error):
                print(error)
            }
        }
        
        wait(for: [exp], timeout: 2.0)
    }
}
