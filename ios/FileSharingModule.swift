import Foundation
import UIKit

@objc(FileSharingModule)
class FileSharingModule: NSObject {
  
  @objc static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
  @objc func sharePDF(_ base64String: String, fileName: String) {
    // Chuyển đổi Base64 thành Data
    if let data = Data(base64Encoded: base64String, options: .ignoreUnknownCharacters) {
      
      // Lưu dữ liệu vào tệp trên thiết bị
      let fileURL = URL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent(fileName)
      do {
        try data.write(to: fileURL)
        
        // Tạo một Activity View Controller để chia sẻ tệp
        let activityViewController = UIActivityViewController(activityItems: [fileURL], applicationActivities: nil)
        
        // Hiển thị Activity View Controller
        UIApplication.shared.keyWindow?.rootViewController?.present(activityViewController, animated: true, completion: nil)
      } catch {
        print("Không thể lưu tệp vào thiết bị: \(error)")
      }
    } else {
      print("Base64 không hợp lệ")
    }
  }
}

@objc
extension FileSharingModule: RCTBridgeModule {
  static func moduleName() -> String! {
    return "FileSharingModule"
  }
}
