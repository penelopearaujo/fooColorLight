//
//  MainViewTest.swift
//  ColorLightTests
//
//  Created by Penélope Araújo on 11/02/21.
//

import XCTest
@testable import ColorLight

class MainViewTest: XCTestCase {
    
    var sut: ViewController!
    
    override func setUp() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateInitialViewController()
        sut.loadViewIfNeeded()
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func testIfChangeColorButtonHasActionAssigned() {
        let button: UIButton = sut.changeColorButton
        
        guard let changeColorActions = button.actions(forTarget: sut, forControlEvent: .touchUpInside) else {
            XCTFail("UIButton does not have actions assigned for Control Event .touchUpInside")
            return
        }
        XCTAssertTrue(changeColorActions.contains("changeColorTap:"))
    }
}
