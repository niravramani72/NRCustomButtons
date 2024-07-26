Here's a `README.md` file for Swift package `NRCustomButtons`. This file provides an overview of the package, its components, and how to use them.

---

# NRCustomButtons

`NRCustomButtons` is a Swift package that provides a collection of customizable SwiftUI button components. Each button type is designed to be highly configurable, allowing you to specify dynamic properties such as titles, colors, icons, and actions.

## Features

- **Basic Button**: A simple button with customizable title and background color.
- **Icon Button**: A button with an icon, background color, and icon color.
- **Outline Button**: A button with a border and customizable text color.
- **Gradient Button**: A button with a gradient background.
- **Rounded Button**: A button with a customizable corner radius.
- **Loading Button**: A button that displays a loading spinner while performing an action.
- **Textured Button**: A button with a background image.

## Installation

### Using Swift Package Manager

1. Open your Xcode project.
2. Navigate to `File` > `Add Packages...`.
3. Enter the URL of the `NRCustomButtons` package repository (or choose "Add Local Package" if you're using a local package).
4. Select the package and add it to your project.

### Manual Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/niravramani72/NRCustomButtons.git
   ```
2. Drag the `NRCustomButtons` folder into your Xcode project.

## Usage

### Import the Package

Import the `NRCustomButtons` package in your SwiftUI view file:

```swift
import SwiftUI
import NRCustomButtons
```

### Basic Button

```swift
BasicButtonView(title: "Basic Button", backgroundColor: .blue) {
    print("Basic Button Tapped")
}
```

### Icon Button

```swift
IconButtonView(iconName: "star.fill", backgroundColor: .black, iconColor: .yellow) {
    print("Icon Button Tapped")
}
```

### Outline Button

```swift
OutlineButtonView(title: "Outline Button", borderColor: .blue, textColor: .blue) {
    print("Outline Button Tapped")
}
```

### Gradient Button

```swift
GradientButtonView(title: "Gradient Button", gradientColors: [.blue, .purple]) {
    print("Gradient Button Tapped")
}
```

### Rounded Button

```swift
RoundedButtonView(title: "Rounded Button", backgroundColor: .green, cornerRadius: 25) {
    print("Rounded Button Tapped")
}
```

### Loading Button

```swift
LoadingButtonView(title: "Load Data", backgroundColor: .red, foregroundColor: .white, loadingColor: .white) {
    print("Loading Button Tapped")
}
```

### Textured Button

```swift
TexturedButtonView(title: "Textured Button", textureImageName: "texture", textColor: .white) {
    print("Textured Button Tapped")
}
```

## Configuration

Each button component allows you to customize its appearance and behavior:

- **`title`**: The text displayed on the button.
- **`backgroundColor`**: The background color of the button.
- **`iconName`**: The name of the SF Symbol used in `IconButtonView`.
- **`iconColor`**: The color of the icon in `IconButtonView`.
- **`borderColor`**: The color of the border in `OutlineButtonView`.
- **`textColor`**: The color of the text in `OutlineButtonView` and `TexturedButtonView`.
- **`gradientColors`**: An array of colors for the gradient background in `GradientButtonView`.
- **`cornerRadius`**: The radius of the corners in `RoundedButtonView`.
- **`loadingColor`**: The color of the spinner in `LoadingButtonView`.
- **`textureImageName`**: The name of the image used as the background in `TexturedButtonView`.

## Example

Here is a complete example of using the dynamic buttons in a SwiftUI view:

```swift
import SwiftUI
import NRCustomButtons

struct ContentView: View {
    var body: some View {
        VStack {
            BasicButtonView(title: "Basic Button", backgroundColor: .blue) {
                print("Basic Button Tapped")
            }
            IconButtonView(iconName: "star.fill", backgroundColor: .black, iconColor: .yellow) {
                print("Icon Button Tapped")
            }
            OutlineButtonView(title: "Outline Button", borderColor: .blue, textColor: .blue) {
                print("Outline Button Tapped")
            }
            GradientButtonView(title: "Gradient Button", gradientColors: [.blue, .purple]) {
                print("Gradient Button Tapped")
            }
            RoundedButtonView(title: "Rounded Button", backgroundColor: .green, cornerRadius: 25) {
                print("Rounded Button Tapped")
            }
            LoadingButtonView(title: "Load Data", backgroundColor: .red, foregroundColor: .white, loadingColor: .white) {
                print("Loading Button Tapped")
            }
            TexturedButtonView(title: "Textured Button", textureImageName: "texture", textColor: .white) {
                print("Textured Button Tapped")
            }
        }
        .padding()
    }
}
```

## Contributing

Feel free to open issues or submit pull requests if you have suggestions or improvements. Contributions are welcome!

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

Replace the placeholders and URLs as needed for your actual repository and project details. This `README.md` provides a clear and concise guide to using your `NRCustomButtons` package and should help users get started quickly.
