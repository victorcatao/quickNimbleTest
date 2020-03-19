//
//  QuickNimbleTestTests.swift
//  QuickNimbleTestTests
//
//  Created by Victor Catão on 18/03/20.
//  Copyright © 2020 Victor Catão. All rights reserved.
//

import XCTest
import Quick
import Nimble

@testable import QuickNimbleTest

class QuickNimbleTestTests: QuickSpec {
    override func spec() {
        var subject: MoviesTableViewController!
        
        describe("MoviesTableViewControllerSpec") {
            beforeEach {
                subject = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MoviesTableViewController") as? MoviesTableViewController
                
                _ = subject.view
            }
            
            context("when view is loaded") {
                it("should have 8 movies loaded") {
                    expect(subject.tableView.numberOfRows(inSection: 0)).to(equal(8))
                }
            }
            
            // UI Test
            context("Table View") {
                var cell: UITableViewCell!
                
                beforeEach {
                    cell = subject.tableView(subject.tableView, cellForRowAt: IndexPath(row: 0, section: 0))
                }
                
                it("should show movie title and genre") {
                    expect(cell.textLabel?.text).to(equal("The Emoji Movie"))
                    expect(cell.detailTextLabel?.text).to(equal("Animation"))
                }
            }
            
        }
    }
}
