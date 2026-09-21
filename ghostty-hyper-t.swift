import CoreGraphics
import Foundation

let windows = (CGWindowListCopyWindowInfo(.optionOnScreenOnly, kCGNullWindowID) as? [[String: Any]]) ?? []
let ghosttyIsOnCurrentSpace = windows.contains { window in
    let owner = window[kCGWindowOwnerName as String] as? String
    let layer = window[kCGWindowLayer as String] as? Int ?? -1
    return owner == "Ghostty" && layer == 0
}

let task = Process()
task.executableURL = URL(fileURLWithPath: "/usr/bin/open")
task.arguments = ghosttyIsOnCurrentSpace ? ["-a", "Ghostty.app"] : ["-na", "Ghostty.app"]
try? task.run()
task.waitUntilExit()
