// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "SendbirdAIAgentCore",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "SendbirdAIAgentCore", targets: ["SendbirdAIAgentCoreTarget"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/sendbird/sendbird-ios-distribution",
            from: "0.10.6"
        ),
        .package(
            url: "https://github.com/JohnSundell/Splash",
            from: "0.16.0"
        ),
        .package(
            url: "https://github.com/sendbird/sendbird-uikit-ios-spm",
            from: "3.32.2"
        ),
        .package(
            url: "https://github.com/sendbird/sendbird-chat-sdk-ios",
            from: "4.30.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "SendbirdAIAgentCore",
            url: "https://github.com/sendbird/sendbird-ai-agent-core-ios/releases/download/1.0.0/SendbirdAIAgentCore.xcframework.zip",
            checksum: "4c44da43141633724eb0c02551bd41af2e9cfcd4a740f55f51818d19c99b70e4"
        ),
        .target(
            name: "SendbirdAIAgentCoreTarget",
            dependencies: [
                .target(name: "SendbirdAIAgentCore"),
                .product(name: "SendbirdUIMessageTemplate", package: "sendbird-uikit-ios-spm"),
                .product(name: "SendbirdMarkdownUI", package: "sendbird-ios-distribution"),
                .product(name: "Splash", package: "Splash"),
                .product(name: "SendbirdChatSDK", package: "sendbird-chat-sdk-ios")
            ],
            path: "Framework/Dependency"
        )
    ]
)
