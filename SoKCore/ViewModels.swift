//
//  ViewModels.swift
//  TVConference
//
//  Created by teriiehina on 20/10/2015.
//  Copyright © 2015 Teriiehina. All rights reserved.
//

import Foundation

public struct CarrousselElement : PresentableInList
{
  let videos  : [Video]
  let image   : CarrousselImageType
  let title   : String
}


public struct Carroussel
{
  let title     : String
  let type      : CarrousselType
  let elements  : [CarrousselElement]
}

//------------------------------------------------------------------------------------------------
// Enum
//------------------------------------------------------------------------------------------------

public enum CarrousselType
{
  case Top
}

public enum CarrousselImageType
{
  case Big(url: String)
  case Long(url: String)
  case Squared(url: String)
  case Small(url: String)
}

//------------------------------------------------------------------------------------------------
// Protocol
//------------------------------------------------------------------------------------------------

public protocol PresentableInList
{
  
}