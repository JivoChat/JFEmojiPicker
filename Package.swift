// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "JFEmojiPicker",
    defaultLocalization: "en",
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
            path: "EmojiPicker",
            exclude: ["Info.plist"],
            resources: [
                .process("Resource/"),
                .process("Storyboard/"),
                .process("Engine/Utility/EmojiPreviewer.xib"),
                .process("View/EmojiPopover/"),
            ]
        )
    ]
)
