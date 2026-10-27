# Flutter E-Commerce UI

A modern, clean e-commerce mobile app UI built with Flutter. This project showcases a complete shopping app interface with beautiful animations and user-friendly design.

## Features

- **Splash Screen** - Animated welcome screen
- **Home Page** - Product browsing with carousel and product sliders
- **Product Catalog** - Organized product displays
- **Shopping Cart** - Cart management interface
- **Feedback Form** - User feedback collection

## Screenshots

*Screenshots coming soon*

## Tech Stack

- [Flutter](https://flutter.dev/) - UI framework
- [Dart](https://dart.dev/) - Programming language
- [Material Design](https://material.io/) - Design system

## Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (>= 2.0.0)
- [Dart SDK](https://dart.dev/get-dart)
- Android Studio / VS Code with Flutter extensions

### Installation

1. Clone the repository:
```bash
git clone https://github.com/aamirali65/Flutter-Ecommerce-UI.git
cd Flutter-Ecommerce-UI
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## Project Structure

```
lib/
├── main.dart          # App entry point
├── splash.dart        # Splash screen
├── home.dart          # Home screen
├── pages/             # App pages
│   ├── cart.dart
│   └── feedback.dart
└── widget/            # Reusable widgets
    ├── carousel.dart
    ├── product_slider.dart
    └── products.dart
```

## Notes

- This is a UI-only implementation with static content
- Package name is `practice` in `pubspec.yaml` - update before publishing
- Update `applicationId` in `android/app/build.gradle` if deploying to Play Store

## License

This project is open source and available for learning purposes.

## Author

[Aamir Ali](https://github.com/aamirali65)
