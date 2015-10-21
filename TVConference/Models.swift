//
//  Models.swift
//  TVConference
//
//  Created by Jeffrey Macko on 10/10/2015.
//  Copyright © 2015 Jeffrey Macko. All rights reserved.
//

import Foundation

//------------------------------------------------------------------------------------------------
// Struct
//------------------------------------------------------------------------------------------------

// e.g. "UI", "UX", "DESIGN", "Mobile", "Marketing"
struct Tags
{
  let name : String
}

// NOTE: ça serait cool de passer cette struct en enum
// e.g "fr", "en" ...
struct Language
{
  let codeISO3166 : String
}

// Adresse du Moscone
struct Address
{
  let name        : String
  let address1    : String
  let address2    : String?
  let city        : String
  let cityState   : String?
  let postalCode  : Int
  let country     : Language
}

// Advanced Debugging and the Address Sanitizer.ppt
struct Presentation
{
  let url       : String
  let timecode  : String?
}

// toto@mail.com
// nommage pas optimal. EmailAddress serait plus clair
struct Mail
{
  let email : String
  
  init?(email: String)
  {
    do
    {
      let matcher = try NSRegularExpression(pattern: "[a-zA-Z0-9]+(?:(\\.|_)[A-Za-z0-9!#$%&'*+/=?^`{|}~-]+)*@(?!([a-zA-Z0-9]*\\.[a-zA-Z0-9]*\\.[a-zA-Z0-9]*\\.))(?:[A-Za-z0-9](?:[a-zA-Z0-9-]*[A-Za-z0-9])?\\.)+[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?", options: .CaseInsensitive)
          
      let nbMatches = matcher.numberOfMatchesInString(email, options: .ReportCompletion, range: NSMakeRange(0, email.lengthOfBytesUsingEncoding(NSUTF8StringEncoding)))
      
      if nbMatches > 0
      {
        self.email = email
      }
      else
      {
        return nil
      }
    }
    catch
    {
      return nil
    }
  }
}

// Mike Swingler
struct Presenter
{
  let name            : String
  let mail            : Mail
  let twitterLogin    : String?
  let githubLogin     : String?
  let imageSquareBig  : NSData?
}

// Advanced Debugging and the Address Sanitizer.ssa
struct Subtitle
{
  let language  : Language
  let url       : String
}

// Advanced Debugging and the Address Sanitizer
struct Video
{
  let conferenceEvent         : ConferenceEvent
  let title                   : String
  let tags                    : [Tags]
  let presenters              : [Presenter]
  let textDescription         : String
  let subtitles               : [Subtitle]?
  let spokenLanguages         : [Language]
  let presentation            : Presentation?
  let mailContentForAttendee  : String?
  let imageSquareBig          : NSData?
}

// WWDC
struct Conference
{
  let name              : String
  let textDescription   : String
  let imageTopBig       : NSData?
  let imageSquareBig    : NSData?
  let imageSquareSmall  : NSData?
  let imageRectSmall    : NSData?
}


// WWDC 2015
struct ConferenceEvent    : PresentableInList
{
  let conference        : Conference
  let tags              : [Tags]
  let address           : Address
  let dateStart         : NSDate
  let dateStop          : NSDate?
  let imageTopBig       : NSData?
  let imageSquareBig    : NSData?
  let imageSquareSmall  : NSData?
  let imageRectSmall    : NSData?
}


struct CarrousselElement : PresentableInList
{
  let videos  : [Video]
  let image   : CarrousselImageType
  let title   : String
}


struct Carroussel
{
  let title     : String
  let type      : CarrousselType
  let elements  : [CarrousselElement]
}

//------------------------------------------------------------------------------------------------
// Enum
//------------------------------------------------------------------------------------------------

enum CarrousselType
{
  case Top
}

enum CarrousselImageType
{
  case Big(url: String)
  case Long(url: String)
  case Squared(url: String)
  case Small(url: String)
}

//------------------------------------------------------------------------------------------------
// Protocol
//------------------------------------------------------------------------------------------------

protocol PresentableInList
{
    
}
