// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "SendbirdAIAgentCore",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "SendbirdAIAgentCore", targets: ["SendbirdAIAgentCore"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "SendbirdAIAgentCore",
            url: "https://github.com/sendbird/sendbird-ai-agent-core-ios/releases/download/0.0.1/SendbirdAIAgentCore.xcframework.zip",
            checksum: "e2c833130d9acc03df44ba703556cd2d6f21d615a98e43dc14e20a883ccc4e6c"
        )
    ]
)
