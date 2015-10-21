//
//  TVConf_Models_Tests.swift
//  TVConference
//
//  Created by teriiehina on 20/10/2015.
//  Copyright © 2015 Teriiehina. All rights reserved.
//

import XCTest
@testable import TVConference

class TVConf_Models_Tests: XCTestCase
{
  func testValidEmail()
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
  
  func testInvalidEmail()
  {
    let emailAddresses  = ["gmail.com" , "test@gmail.c" , "test@gmail"]
    
    for emailAddress in emailAddresses
    {
      let invalidEmail    = Mail.init(email: emailAddress)
      
      XCTAssertNil(invalidEmail)
    }

  }

}
