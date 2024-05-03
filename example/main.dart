import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BlurContainerDemo());

class BlurContainerDemo extends StatelessWidget {
  const BlurContainerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BlurryContainer Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF21262d),
        body: SizedBox.expand(
          child: Stack(
            alignment: Alignment.center,
            children: [
              const Positioned(
                top: 200,
                left: 10,
                child: GradientBall(colors: [Colors.deepOrange, Colors.amber]),
              ),
              const Positioned(
                top: 400,
                right: 10,
                child: GradientBall(
                  size: Size.square(200),
                  colors: [Colors.blue, Colors.purple],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: BlurryContainer(
                  blur: 8,
                  height: 240,
                  elevation: 6,
                  padding: const EdgeInsets.all(32),
                  color: Colors.white.withOpacity(0.15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage(
                          'https://img.indiaforums.com/person/480x360/0/0211-hrithik-roshan.jpg?c=4lP5F3',
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        "0100 0010 0100 0011",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            "John Doe".toUpperCase(),
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "VALID",
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            "06/24",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GradientBall extends StatelessWidget {
  final List<Color> colors;
  final Size size;
  const GradientBall({
    Key? key,
    required this.colors,
    this.size = const Size.square(150),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: colors,
        ),
      ),
    );
  }
}
