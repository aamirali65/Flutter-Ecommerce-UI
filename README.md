# Flutter-Ecommerce-UI

A Flutter UI kit for a shopping app — the screens and widgets, with no backend behind them. Use it as a starting point to hang real data on.

## Screens and widgets

| File | What it is |
|---|---|
| `lib/splash.dart` | Animated splash screen |
| `lib/home.dart` | Home page assembling the sections below |
| `lib/pages/cart.dart` | Cart screen |
| `lib/pages/feedback.dart` | Feedback form |
| `lib/widget/carousel.dart` | Promotional carousel |
| `lib/widget/product_slider.dart` | Horizontally scrolling product rail |
| `lib/widget/products.dart` | Product grid/list item |

## Running

```bash
flutter pub get
flutter run
```

The Dart package name in `pubspec.yaml` is `practice`; rename it (and the `applicationId` in `android/app/build.gradle`) before shipping anything.

## Notes

UI practice: layout, carousel and slider behaviour against static content. Adding state management and a data source is what would turn it into an app.
