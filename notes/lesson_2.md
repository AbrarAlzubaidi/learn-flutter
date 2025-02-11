# flutter architecture

1. flutter build a widget tree (UI as code). which is like component in react.js or a dom tree in html
2. produce platform differences.
3. one code only.

## dose flutter use platform primitives

Flutter does not use native UI components like React Native or SwiftUI.
Instead, it renders everything using Skia, a high-performance 2D graphics engine.
Skia interacts with OpenGL, Metal (iOS), and Vulkan to draw the UI efficiently.

![dose flutter use platform primitives](./assets/images/flutter-platform-primitives.png)

Dart is not cross-compiled or mapped to any native widgets etc. Instead Flutter controls 100% of the pixels on the screen.

## 🟢 1. What Does "Dart is Not Cross-Compiled" Mean?

- Some frameworks, like React Native, SwiftUI, or Jetpack Compose, use native UI components.

- They map their code (JavaScript in React Native, Swift in SwiftUI) to native UI elements (Android’s TextView, iOS’s UILabel, etc.).

- Flutter does NOT do this—Dart code is not compiled into Android/iOS native UI widgets.

- 💡 Instead: Flutter compiles Dart into highly optimized native machine code, but it does NOT map to platform-native UI elements.

## 🔵 2. What Does "Flutter Controls 100% of the Pixels" Mean?

- Flutter doesn’t rely on native UI components (like buttons, text fields, or scroll views).
- Instead, Flutter renders everything from scratch using its own high-performance Skia graphics engine.
- This means Flutter draws every pixel on the screen, making its UI fully customizable and consistent across platforms.

## 💡 Example Comparison

| Framework    | Uses Native UI? | Draws Own UI? |
| -------- | ------- |------- |
| React Native  | ✅ Yes    | ❌ No |
| SwiftUI (iOS) | ✅ Yes    | ❌ No |
| Jetpack Compose (Android)    | ✅ Yes    | ❌ No |
| Flutter  | ❌ No    | ✅ Yes (Skia) |

## 🔥 Why Is This Important?

- ✅ Consistent UI Across Platforms → Looks the same on iOS, Android, Windows, etc.
- ✅ High Performance → No need for a "bridge" between Dart and native UI.
- ✅ Full Control Over UI → Custom animations, effects, and styles without native restrictions.

## 🎯 Conclusion

Flutter does not "translate" Dart into platform-native widgets.
Flutter directly renders everything itself using Skia (a 2D graphics engine).
That’s why Flutter apps look and behave consistently across devices.
