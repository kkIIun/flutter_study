import 'package:flutter/material.dart';

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget1 extends StatefulWidget {
  const MyStatefulWidget1({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget1.
/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<MyStatefulWidget1>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )
    ..repeat(reverse: true)
    // ..addStatusListener((status) {print('$status');});
    ..addListener(() {
      setState(() {
        // print(_tween.animate(_controller));
      });
    });

  late final Animation<double> _animation =
      CurvedAnimation(parent: _controller, curve: Curves.easeIn);
  late final Animatable<double> _tween = Tween(begin: 0.0, end: 2.0);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.animation),
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
          ),
          body: FadeTransition(
            opacity: _tween.animate(_animation),
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: FlutterLogo()),
          ),
        ));
  }
}
