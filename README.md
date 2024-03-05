#  RichiesSettings

RichiesSettings is a Swift package that simplifies the management of settings in your iOS, macOS, or tvOS applications. It provides a flexible and easy-to-use interface for handling various types of settings, including user preferences, application configurations, and more.

## Features

- **Type-Safe:** RichiesSettings ensures type safety when accessing and setting values for settings.
- **Flexible Storage:** Settings can be stored in various formats, including UserDefaults, Property Lists, or even custom storage solutions.
- **Easy Integration:** Simple integration with your existing projects, making it effortless to manage settings across your application.

## Installation

### Swift Package Manager

You can use the Swift Package Manager to install RichiesSettings into your Xcode project. Follow these steps:

1. Open your Xcode project.
2. Navigate to "File" > "Swift Packages" > "Add Package Dependency..."
3. Enter the URL of this repository: `https://github.com/yourusername/RichiesSettings.git`
4. Follow the prompts and select the branch to use.
5. Click "Finish" to complete the installation process.

## Usage

### `SettingsFooterView`

`SettingsFooterView` is a component provided by RichiesSettings that can be used to display version information, author credits, and a privacy policy link.

#### Example Usage:

```swift
import SwiftUI
import RichiesSettings

struct ContentView: View {
    var body: some View {
        SettingsFooterView(author: "Richard Simonik", privacyPolicy: "https://en.wikipedia.org/wiki/Wikipedia")
    }
}


