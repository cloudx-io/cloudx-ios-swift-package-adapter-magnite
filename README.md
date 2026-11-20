# CloudX Magnite adapter Swift package

This repository distributes the Magnite adapter for the CloudX iOS SDK.

## Requirements

- iOS 13 or later
- Xcode 15 or later
- CloudX Core 3.9.1 or later

## Installation

Add this package in Xcode:

```text
https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-magnite.git
```

Select an exact package version from the compatibility table. Add the
`CloudXMagniteAdapter` product to the app target.

Add `-ObjC` to the app target's **Other Linker Flags**. The package uses this
flag to retain the adapter registration code.

| Package version | CloudX adapter | Magnite SDK |
| --- | --- | --- |
| `1000600.0.0` | `1.0.6.0` | `1.0.6` |

The package installs CloudX Core and Magnite SDK as dependencies. Import
`CloudXCore` in the application. The adapter registers when the application
loads.

## Versioning

CloudX adapter versions have four components. Swift package versions use three.
The package tag joins the adapter components into the major number. For example,
adapter `1.0.6.0` uses package version `1000600.0.0`.

## License

The CloudX adapter uses the Business Source License 1.1. See [LICENSE](LICENSE).
