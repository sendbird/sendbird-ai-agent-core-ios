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
            from: "0.10.2"
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
            url: "https://github.com/sendbird/sendbird-ai-agent-core-ios/releases/download/0.10.4/SendbirdAIAgentCore.xcframework.zip",
            checksum: "5317565f839bfec006505848d05644eaa867fbccf87ee2b69406a825ab601a63"
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
