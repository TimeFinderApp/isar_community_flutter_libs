import Cocoa
import FlutterMacOS

@_silgen_name("isar_version")
private func isar_version() -> UnsafePointer<CChar>

public class IsarFlutterLibsPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    _ = isar_version()

    let channel = FlutterMethodChannel(name: "isar_community_flutter_libs", binaryMessenger: registrar.messenger)
    let instance = IsarFlutterLibsPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("macOS " + ProcessInfo.processInfo.operatingSystemVersionString)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
