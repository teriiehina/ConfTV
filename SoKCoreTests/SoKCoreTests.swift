//
//  SoKCoreTests.swift
//  SoKCoreTests
//
//  Created by teriiehina on 23/10/2015.
//  Copyright © 2015 Jeffrey Macko. All rights reserved.
//

import XCTest
@testable import SoKCore

class SoKCoreTests: XCTestCase
{
    
  func testValidEmailWithFailableInitializer()
  {
    let emailAddress  = "test@gmail.com"
    let validEmail    = Mail.init(email: emailAddress)
    
    XCTAssertNotNil(validEmail)
    
    if let email = validEmail
    {
      XCTAssertEqual(email.email, emailAddress)
    }
    else
    {
      XCTFail()
    }
  }
  
  func testValidEmailAsStringConvertible()
  {
    let emailAddress      = "test@gmail.com"
    let validEmail: Mail  = "test@gmail.com"
    
    XCTAssertEqual(validEmail.email, emailAddress)
  }
  
  
  func testInvalidEmail()
  {
    let emailAddresses  = ["gmail.com" , "test@gmail." , "test@gmail"]
    
    for emailAddress in emailAddresses
    {
      let invalidEmail    = Mail.init(email: emailAddress)
      
      XCTAssertNil(invalidEmail)
    }
    
  }
    
}
