//
//  AppDelegate.swift
//  dylib_invoke
//
//  Created by EnchantCode on 2022/10/16.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    
    let mainWindowController = MainWindowController()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        mainWindowController.showWindow(self)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
    }
    
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

