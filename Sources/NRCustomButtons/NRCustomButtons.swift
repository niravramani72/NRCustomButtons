// The Swift Programming Language
// https://docs.swift.org/swift-book
import SwiftUI


public struct BasicButtonView: View {
    public var title: String
    public var backgroundColor: Color
    public var action: () -> Void
    
    public init(title: String, backgroundColor: Color, action: @escaping () -> Void) {
        self.title = title
        self.backgroundColor = backgroundColor
        self.action = action
    }
    
    public var body: some View {
        Button(action: {
            action()
        }) {
            Text(title)
                .padding()
                .background(backgroundColor)
                .foregroundColor(.white)
                .cornerRadius(8)
        }
    }
}

public struct IconButtonView: View {
    public var iconName: String
    public var backgroundColor: Color
    public var iconColor: Color
    public var action: () -> Void
    
    public init(iconName: String, backgroundColor: Color, iconColor: Color, action: @escaping () -> Void) {
        self.iconName = iconName
        self.backgroundColor = backgroundColor
        self.iconColor = iconColor
        self.action = action
    }
    
    public var body: some View {
        Button(action: {
            action()
        }) {
            Image(systemName: iconName)
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(iconColor)
                .padding()
                .background(backgroundColor)
                .clipShape(Circle())
        }
    }
}

public struct OutlineButtonView: View {
    public var title: String
    public var borderColor: Color
    public var textColor: Color
    public var action: () -> Void
    
    public init(title: String, borderColor: Color, textColor: Color, action: @escaping () -> Void) {
        self.title = title
        self.borderColor = borderColor
        self.textColor = textColor
        self.action = action
    }
    
    public var body: some View {
        Button(action: {
            action()
        }) {
            Text(title)
                .padding()
                .background(Color.clear)
                .foregroundColor(textColor)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(borderColor, lineWidth: 2)
                )
        }
    }
}

public struct GradientButtonView: View {
    public var title: String
    public var gradientColors: [Color]
    public var action: () -> Void
    
    public init(title: String, gradientColors: [Color], action: @escaping () -> Void) {
        self.title = title
        self.gradientColors = gradientColors
        self.action = action
    }
    
    public var body: some View {
        Button(action: {
            action()
        }) {
            Text(title)
                .padding()
                .background(
                    LinearGradient(gradient: Gradient(colors: gradientColors), startPoint: .leading, endPoint: .trailing)
                )
                .foregroundColor(.white)
                .cornerRadius(8)
        }
    }
}

public struct RoundedButtonView: View {
    public var title: String
    public var backgroundColor: Color
    public var cornerRadius: CGFloat
    public var action: () -> Void
    
    public init(title: String, backgroundColor: Color, cornerRadius: CGFloat, action: @escaping () -> Void) {
        self.title = title
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
        self.action = action
    }
    
    public var body: some View {
        Button(action: {
            action()
        }) {
            Text(title)
                .padding()
                .background(backgroundColor)
                .foregroundColor(.white)
                .cornerRadius(cornerRadius)
                .shadow(radius: 10)
        }
    }
}

public struct LoadingButtonView: View {
    @State private var isLoading = false
    public var title: String
    public var backgroundColor: Color
    public var foregroundColor: Color
    public var loadingColor: Color
    public var action: () -> Void
    
    public init(title: String, backgroundColor: Color, foregroundColor: Color, loadingColor: Color, action: @escaping () -> Void) {
        self.title = title
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.loadingColor = loadingColor
        self.action = action
    }
    
    public var body: some View {
        Button(action: {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                isLoading = false
                action()
            }
        }) {
            if isLoading {
                ZStack {
                    Text(title)
                        .foregroundColor(.clear)
                        .padding()
                        .background(backgroundColor)
                        .cornerRadius(8)
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: loadingColor))
                }
            } else {
                Text(title)
                    .padding()
                    .background(backgroundColor)
                    .foregroundColor(foregroundColor)
                    .cornerRadius(8)
            }
        }
    }
}
public struct TexturedButtonView: View {
    public var title: String
    public var textureImageName: String
    public var textColor: Color
    public var action: () -> Void
    
    public init(title: String, textureImageName: String, textColor: Color, action: @escaping () -> Void) {
        self.title = title
        self.textureImageName = textureImageName
        self.textColor = textColor
        self.action = action
    }
    
    public var body: some View {
        Button(action: {
            action()
        }) {
            Text(title)
                .padding()
                .background(
                    Image(textureImageName) // Ensure you have this image in your assets
                        .resizable()
                        .scaledToFill()
                )
                .foregroundColor(textColor)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}
