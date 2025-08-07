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
            from: "3.31.0"
        ),
        .package(
            url: "https://github.com/sendbird/sendbird-chat-sdk-ios",
            from: "4.28.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "SendbirdAIAgentCore",
            url: "https://github.com/sendbird/sendbird-ai-agent-core-ios/releases/download/0.9.13/SendbirdAIAgentCore.xcframework.zip",
            checksum: "c601f21a970056399d38ccb9b566030162f4d0be85d7d667b3d5ff9e2c24720e"
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
    ]
)
