// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "JFEmojiPicker",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "JFEmojiPicker",
            targets: ["JFEmojiPicker"]
        )
    ],
    targets: [
        .target(
            name: "JFEmojiPicker",
            path: ".",
            resources: [
                .process("Resource/Assets.xcassets"),
                .copy("Resource/emojis.json"),
                .copy("Resource/emojis9.1.json"),
                .copy("Resource/emojis11.0.1.json"),
            ])
        )
    ]
)
