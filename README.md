# Neon Sound Lab (Flutter)

A tactile audio-control console built with Flutter and Dart. The interface
combines a neon instrumentation theme with physical-feeling controls for
scanning, pulsing, charging, and ejecting signal data.

## Features

- **Neon Sound Lab controls**: Four personalized actions with icons, labels,
	accent colors, and live status messages.
- **Physical button feedback**: `GestureDetector` captures press, release, and
	cancellation stages while opposing `BoxShadow`s create neomorphic depth.
- **Live signal monitoring**: Tap counts, a power calibration slider, and an
	overload background warning update through `setState()`.
- **Adaptive theme system**: Switch between dark instrumentation mode and a
	light neomorphic mode from the app bar.
- **Reusable component design**: `TactileButton` packages the interaction and
	visual behavior into a reusable `StatefulWidget`.

## Tech Stack

- **Framework**: Flutter with Material 3
- **Language**: Dart
- **Key widgets**: `StatefulWidget`, `GestureDetector`, `AnimatedContainer`,
	`Slider`, and `Wrap`

## Run Locally

```bash
flutter pub get
flutter run
```
