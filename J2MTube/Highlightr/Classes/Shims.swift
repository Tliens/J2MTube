//
//  Shims.swift
//  J2MTube
//
//  Created by 2020 on 2022/3/22.

import Foundation

#if os(OSX)
    import AppKit
#elseif os(iOS)
    import UIKit
#endif

#if swift(>=4.2)
    public typealias AttributedStringKey = NSAttributedString.Key
#else
    public typealias AttributedStringKey = NSAttributedStringKey
#endif

#if swift(>=4.2) && os(iOS)
    public typealias TextStorageEditActions = NSTextStorage.EditActions
#else
    public typealias TextStorageEditActions = NSTextStorageEditActions
#endif
