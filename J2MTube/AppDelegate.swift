//
//  AppDelegate.swift
//  J2MTube
//
//  Created by 2020 on 2022/3/22.

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate,NSWindowDelegate {

    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.squareLength)

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        guard let button = statusItem.button else { return }
        button.image = NSImage(named: NSImage.Name("itemIcon"))
        button.action = #selector(applicationShouldHandleReopen(_:hasVisibleWindows:))
        NSApp.setActivationPolicy(NSApplication.ActivationPolicy.regular)
        configItemMenu()
    }

    func applicationShouldHandleReopen(_ sender: NSApplication, hasVisibleWindows flag: Bool) -> Bool {
        for window in NSApplication.shared.windows {
            window.makeKeyAndOrderFront(self)
        }
        return true
    }
    
    func configItemMenu() {
        let menu = NSMenu()
        menu.addItem(NSMenuItem.separator())
        menu.addItem(NSMenuItem(title: "Show", action: #selector(NSApplicationDelegate.applicationShouldHandleReopen(_:hasVisibleWindows:)), keyEquivalent: "w"))
        menu.addItem(NSMenuItem(title: "Hide", action: #selector(NSApplication.hide(_:)), keyEquivalent: "e"))
        menu.addItem(NSMenuItem(title: "Quit", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q"))
        statusItem.menu = menu
    }

}

