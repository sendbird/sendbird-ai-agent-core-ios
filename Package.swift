// swift-tools-version:6.1
import PackageDescription

let package = Package(
    name: "SendbirdAIAgentCore",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "SendbirdAIAgentCore", targets: ["SendbirdAIAgentCoreTarget"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/gonzalezreal/swift-markdown-ui",
            from: "2.4.1"
        ),
        .package(
            url: "https://github.com/JohnSundell/Splash",
            from: "0.16.0"
        ),
        .package(
            url: "https://github.com/sendbird/sendbird-uikit-ios-spm",
            from: "3.32.1"
        ),
        .package(
            url: "https://github.com/sendbird/sendbird-chat-sdk-ios",
            from: "4.29.2"
        )
    ],
    targets: [
        .binaryTarget(
            name: "SendbirdAIAgentCore",
            url: "https://github.com/sendbird/sendbird-ai-agent-core-ios/releases/download/0.10.0/SendbirdAIAgentCore.xcframework.zip",
            checksum: "7a0ab0684d5a33a0c94c88e108119bbff4b1c1d5d0cc5afd1dbf76d747f43113"
        ),
        .target(
            name: "SendbirdAIAgentCoreTarget",
            dependencies: [
                .target(name: "SendbirdAIAgentCore"),
                .product(name: "SendbirdUIMessageTemplate", package: "sendbird-uikit-ios-spm"),
                .product(name: "MarkdownUI", package: "swift-markdown-ui"),
                .product(name: "Splash", package: "Splash"),
                .product(name: "SendbirdChatSDK", package: "sendbird-chat-sdk-ios")
            ],
            path: "Framework/Dependency"
        )
    ],
    swiftLanguageModes: [.v5]
)
