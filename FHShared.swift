
import Foundation

public struct UpdateDevice: Codable {
  public let id: UUID?
  public let pushToken: String?
  public let system: Device.System
  public let osVersion: String
  public let channels: [String]?

  public init(id: UUID? = nil, pushToken: String? = nil, system: Device.System, osVersion: String, channels: [String]? = nil) {
    self.id = id
    self.pushToken = pushToken
    self.system = system
    self.osVersion = osVersion
    self.channels = channels
  }
}

public struct Device: Codable {
  public enum System: String, Codable {
    case iOS
    case android
  }

  public let id: UUID
  public let system: System
  public var osVersion: String
  public var pushToken: String?
  public var channels: [String]

  public init(id: UUID, system: System, osVersion: String, pushToken: String?, channels: [String]) {
    self.id = id
    self.system = system
    self.osVersion = osVersion
    self.pushToken = pushToken
    self.channels = channels
  }
}
