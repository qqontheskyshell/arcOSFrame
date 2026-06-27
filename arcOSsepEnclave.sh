#! /bin/bash

arcOSrunSwift "
import Foundation

final class LowPowerModeMonitor {
    private var observer: NSObjectProtocol?

    init() {
        checkCurrentState()
        startObserving()
    }

    deinit {
        if let observer {
            NotificationCenter.default.removeObserver(observer)
        }
    }

    private func checkCurrentState() {
        if ProcessInfo.processInfo.isLowPowerModeEnabled {
            print("Low Power Mode is enabled. Reduce workload and defer nonessential operations.")
        } else {
            print("Low Power Mode is disabled. Normal operations can continue.")
        }
    }

    private func startObserving() {
        observer = NotificationCenter.default.addObserver(
            forName: Notification.Name.NSProcessInfoPowerStateDidChange,
            object: nil,
            queue: .main
        ) { _ in
            let lpm = ProcessInfo.processInfo.isLowPowerModeEnabled
            if lpm {
                print("Power state changed: Low Power Mode enabled.")
            } else {
                print("Power state changed: Low Power Mode disabled.")
            }
        }
    }
}

let monitor = LowPowerModeMonitor()
RunLoop.main.run()
" &
