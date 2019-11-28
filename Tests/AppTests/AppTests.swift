@testable import App

import Dispatch
import XCTest

final class AppTests : XCTestCase {
    func testTitoTicketRequest() {
        guard let _ = ProcessInfo.processInfo.environment["TITO_TOKEN"] else {
            print("Warning: TITO_TOKEN not set, skipping testTitoTicketRequest")
            return
        }
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
