//
//  LottieAnimationView+.swift
//
//
//  Created by Qiuyang Nie on 04/10/2023.
//

#if os(iOS) || os(watchOS) || os(tvOS)
import UIKit
#elseif os(macOS)
import AppKit
#endif
import Lottie

#if os(iOS) || os(watchOS) || os(tvOS)
extension LottieAnimationView {
    /// Sets the color of the `LottieAnimationView` to use for the specified keypath.
    /// - Parameters:
    ///   - color: The color of the `LottieAnimationView` to use for the specified keypath.
    ///   - keypath: The keypath used to search for properties.
    public func setColor(_ color: UIColor, for keypath: String) {
        let r = CIColor(color: color).red
        let g = CIColor(color: color).green
        let b = CIColor(color: color).blue
        let a = CIColor(color: color).alpha
        let lottieColor = LottieColor(r: r, g: g, b: b, a: a)
        let colorValueProvider = ColorValueProvider(lottieColor)
        let animationKeypath = AnimationKeypath(keypath: keypath)
        self.setValueProvider(colorValueProvider, keypath: animationKeypath)
    }
}
#elseif os(macOS)
extension LottieAnimationView {
    /// Sets the color of the `LottieAnimationView` to use for the specified keypath.
    /// - Parameters:
    ///   - color: The color of the `LottieAnimationView` to use for the specified keypath.
    ///   - keypath: The keypath used to search for properties.
    public func setColor(_ color: NSColor, for keypath: String) {
        guard
            let r = CIColor(color: color)?.red,
            let g = CIColor(color: color)?.green,
            let b = CIColor(color: color)?.blue,
            let a = CIColor(color: color)?.alpha
        else { return }
        let lottieColor = LottieColor(r: r, g: g, b: b, a: a)
        let colorValueProvider = ColorValueProvider(lottieColor)
        let animationKeypath = AnimationKeypath(keypath: keypath)
        self.setValueProvider(colorValueProvider, keypath: animationKeypath)
    }
}
#endif
