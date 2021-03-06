//
//  MarvelUITests.swift
//  MarvelUITests
//
//  Created by Maximiliano Morales on 14/03/2022.
//

import XCTest

class MarvelUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testHomeUser() throws {
        // UI tests must launch the application that they test.
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        app.launch()
        
        //Podemos agregar UITest para realizar un análisis de la aplicación usando el recording una vez lanzada la APP grabando los movimientos de usuario reproduciendolo hasta encontrar un Bug.
        //Sin embargo, como tenemos 3000 llamadas a la API de Marvel por día al generar este tipo de test se llega rápido a ese número generando demora en la app.
        //Por ese motivo no se agregaron los test visuales por el límite de llamadas a la API y porque se realizaron 3 aplicaciones.

    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
