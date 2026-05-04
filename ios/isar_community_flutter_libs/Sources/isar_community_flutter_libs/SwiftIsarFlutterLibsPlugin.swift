import Flutter
import UIKit

@_silgen_name("isar_version")
private func isar_version() -> UnsafePointer<CChar>

public class IsarFlutterLibsPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    _ = isar_version()
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result(nil)
  }
}
