// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "TOCropViewController",
    defaultLocalization: "en",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "TOCropViewController",
            type: .dynamic,
            targets: ["TOCropViewController"]
        ),
        .library(
            name: "CropViewController",
            type: .dynamic,
            targets: ["CropViewController"]
        )
    ],
    targets: [
        .target(
            name: "TOCropViewController",
            path: "Objective-C/TOCropViewController/",
			exclude:["Supporting/Info.plist"],
            resources: [.process("Resources")],
            publicHeadersPath: "include"
        ),
        .target(
            name: "CropViewController",
            dependencies: ["TOCropViewController"],
            path: "Swift/CropViewController/",
			exclude:["Info.plist"],
            sources: ["CropViewController.swift"]
        )
    ]
)
