# blurrycontainer

Make lovely Container with Frosty Glass effect where you can controll blur radius , height , blur color etc.

### Show some :heart: and star the repo to support the project

## Getting Started

To use this package, add `blurry_container` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

The child can be set with the **child** property.
The color can be set with the **bgColor** property.
The border radius can be set with the **borderRadius** property.
The height can be set with the **height** property.
The width can be set with the **width** property.
The padding can be set with the **padding** property.
The blur amount can be set with the **blur** property.


## Demo

<img src="https://raw.githubusercontent.com/ranjeetrocky/blurry_container/master/Screenshot.png" height="35%" width="35%"  alt="Screenshot"/>

### Example

```dart
import 'package:flutter/material.dart';
import 'package:podo/widgets/blurry_container.dart';

main() => runApp(TestApp());

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage('https://ranjeetrocky.000webhostapp.com/bg5.jpg'),
            ),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                BlurryContainer(
                  borderRadius: BorderRadius.circular(20),
                  bgColor: Colors.white,
                  height: 150,
                  width: 250,
                ),
                BlurryContainer(
                  borderRadius: BorderRadius.circular(20),
                  bgColor: Colors.black,
                  height: 150,
                  width: 350,
                ),
                BlurryContainer(
                  borderRadius: BorderRadius.circular(20),
                  bgColor: Colors.purple,
                  blur: 2,
                  height: 120,
                  width: 150,
                ),
                BlurryContainer(
                  borderRadius: BorderRadius.circular(20),
                  bgColor: Colors.lightBlueAccent,
                  height: 180,
                  width: 180,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```