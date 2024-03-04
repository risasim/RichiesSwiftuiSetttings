//
//  File.swift
//  
//
//  Created by Richard on 04.03.2024.
//

import Foundation



enum AppIconProvider {
    static func appIcon(in bundle: Bundle = .main) -> String {
       //1
        guard let icons = bundle.object(forInfoDictionaryKey: "CFBundleIcons") as? [String: Any],
              // 2
              let primaryIcon = icons["CFBundlePrimaryIcon"] as? [String: Any],
              // 3
              let iconFiles = primaryIcon["CFBundleIconFiles"] as? [String],
              // 4
              let iconFileName = iconFiles.last else {
            fatalError("Could not find icons in bundle")
        }

        return iconFileName
    }
}
