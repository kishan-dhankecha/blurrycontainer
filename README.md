# blurrycontainer

[![pub package](https://img.shields.io/pub/v/blurrycontainer.svg)](https://pub.dev/packages/blurrycontainer)

[![likes](https://img.shields.io/pub/likes/blurrycontainer)](https://pub.dev/packages/blurrycontainer/score)
[![popularity](https://img.shields.io/pub/popularity/blurrycontainer)](https://pub.dev/packages/blurrycontainer/score)
[![pub points](https://img.shields.io/pub/points/blurrycontainer)](https://pub.dev/packages/blurrycontainer/score)

# Introduction

A Flutter package to create a frosted glass effect on a container.

# Screenshots

<img src="https://raw.githubusercontent.com/kishan-dhankecha/blurrycontainer/master/screenshots/preview.png" height="300px" alt="Screenshot"/>

# Installation

```yaml
dependencies:
  blurrycontainer: 2.1.0
```

```dart
import 'package:blurrycontainer/blurrycontainer.dart';
```

# Example

### Using `BlurryContainer` widget

```dart
BlurryContainer(
  child: YOUR_WIDGET(),
  blur: 5,
  width: 200,
  height: 200,
  elevation: 0,
  color: Colors.transparent,
  padding: const EdgeInsets.all(8),
  borderRadius: const BorderRadius.all(Radius.circular(20)),
),
```

```dart
BlurryContainer.square(
  child: YOUR_WIDGET(),
  dimension: 200,
),
```

```dart
BlurryContainer.expand(
  child: YOUR_WIDGET(),
),
```


### Using `blurry` extension method on 

```dart
YOUR_WIDGET().blurry(
  blur: 5,
  width: 200,
  height: 200,
  elevation: 0,
  color: Colors.transparent,
  padding: const EdgeInsets.all(8),
  borderRadius: const BorderRadius.all(Radius.circular(20)),
),
```

## Support :heart:

Star project on [github.com](https://github.com/kishan-dhankecha/blurrycontainer).

Like on [pub.dev](https://pub.dev/packages/blurrycontainer).
