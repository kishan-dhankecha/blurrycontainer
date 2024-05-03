# blurrycontainer

[![pub package](https://img.shields.io/pub/v/blurrycontainer.svg)](https://pub.dev/packages/blurrycontainer)

[![likes](https://img.shields.io/pub/likes/blurrycontainer)](https://pub.dev/packages/blurrycontainer/score)
[![popularity](https://img.shields.io/pub/popularity/blurrycontainer)](https://pub.dev/packages/blurrycontainer/score)
[![pub points](https://img.shields.io/pub/points/blurrycontainer)](https://pub.dev/packages/blurrycontainer/score)

# Introduction

Make lovely Container with Frosty Glass effect where you can control blur, height, width, color, elevation, padding, borderRadius etc.

# Screenshots

<img src="https://raw.githubusercontent.com/kishan-dhankecha/blurrycontainer/master/preview.png" height="300px" alt="Screenshot"/>

# Installation

```yaml
dependencies:
  blurrycontainer: 2.0.1+1
```

```dart
import 'package:blurrycontainer/blurrycontainer.dart';
```

# Example


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

___


## Support :heart:

Star project on [github.com](https://github.com/kishan-dhankecha/blurrycontainer).

Like on [pub.dev](https://pub.dev/packages/blurrycontainer).
