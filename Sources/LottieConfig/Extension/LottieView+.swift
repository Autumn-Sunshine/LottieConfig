//
//  LottieView+.swift
//
//
//  Created by Qiuyang Nie on 04/10/2023.
//

import SwiftUI
#if os(iOS) || os(watchOS) || os(tvOS)
import UIKit
#elseif os(macOS)
import AppKit
#endif
import Lottie

@available(macOS 11.0, *)
@available(iOS 14.0, *)
extension LottieView {
    /// Sets the color of the `LottieAnimationView` to use for the specified keypath.
    /// - Parameters:
    ///   - color: The color of the `LottieAnimationView` to use for the specified keypath.
    ///   - keypath: The keypath used to search for properties.
    /// - Returns: A `LottieView` with a updated color.
    public func setColor(_ color: Color, for keypath: String) -> LottieView {
        self.configure {
#if os(iOS) || os(watchOS) || os(tvOS)
            $0.setColor(UIColor(color), for: keypath)
#elseif os(macOS)
            $0.setColor(NSColor(color), for: keypath)
#endif
        }
    }
}
