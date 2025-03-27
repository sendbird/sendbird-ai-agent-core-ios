// swift-tools-version:5.10
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
            branch: "release/3.30.1-beta.2"
        )
    ],
    targets: [
        .binaryTarget(
            name: "SendbirdAIAgentCore",
            url: "https://github.com/sendbird/sendbird-ai-agent-core-ios/releases/download/0.0.3/SendbirdAIAgentCore.xcframework.zip",
            checksum: "333c583797d17d802ca68ca786bad8e189b0a9649aa28ab5ad80778d7faba62f"
        ),
        .target(
            name: "SendbirdAIAgentCoreTarget",
            dependencies: [
                .target(name: "SendbirdAIAgentCore"),
                .product(name: "SendbirdUIMessageTemplate", package: "sendbird-uikit-ios-spm"),
                .product(name: "MarkdownUI", package: "swift-markdown-ui"),
                .product(name: "Splash", package: "Splash")
            ],
            path: "Framework/Dependency"
        )
    ]
)
