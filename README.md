# blurrycontainer

[![likes](https://badges.bar/blurrycontainer/likes)](https://pub.dev/packages/blurrycontainer/score)
[![popularity](https://badges.bar/blurrycontainer/popularity)](https://pub.dev/packages/blurrycontainer/score)
[![pub points](https://badges.bar/blurrycontainer/pub%20points)](https://pub.dev/packages/blurrycontainer/score)

# Introduction

Make lovely Container with Frosty Glass effect where you can control blur, height, width, color, elevation, padding, borderRadius etc.

# Screenshots

<img src="https://raw.githubusercontent.com/ranjeetrocky/blurry_container/master/preview.png" height="300px" alt="Screenshot"/>

# Installation

```yaml
dependencies:
  blurrycontainer: 1.0.2
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


## Support

Show some :heart: and star the repo to support the project

<a href="https://www.buymeacoffee.com/MananDomadiya"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a Pizza&emoji=🍕&slug=MananDomadiya&button_colour=5F7FFF&font_colour=ffffff&font_family=Cookie&outline_colour=000000&coffee_colour=FFDD00" /></a>