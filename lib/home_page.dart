import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_spinning_wheel/flutter_spinning_wheel.dart';
import 'package:spinning_flutter/rouletteScore.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final StreamController _dividerController = StreamController<int>();

  final _wheelNotifier = StreamController<double>();

  @override
  void dispose() {
    super.dispose();
    _dividerController.close();
    _wheelNotifier.close();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spinning Wheel '),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SpinningWheel(
                Image.asset('assets/images/wheel-6-300.png'),
                width: 310,
                height: 310,
                initialSpinAngle: _generateRandomAngle(),
                spinResistance: 0.6,
                canInteractWhileSpinning: false,
                dividers: 8,
                onUpdate: _dividerController.add,
                onEnd: _dividerController.add,
                secondaryImage:
                Image.asset('assets/images/roulette-center-300.png'),
                secondaryImageHeight: 110,
                secondaryImageWidth: 110,
                shouldStartOrStop: _wheelNotifier.stream,
              ),
              SizedBox(height: 30),
              StreamBuilder(
                stream: _dividerController.stream,
                builder: (context, snapshot) =>
                snapshot.hasData ? RouletteScore(snapshot.data) : Container(),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                child: Text("Spin"),
                onPressed: () =>
                    _wheelNotifier.sink.add(_generateRandomVelocity()),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(200, 50), primary: Colors.red,
              )
              )],
          ),
        ),
    );
  }

  double _generateRandomVelocity() => (Random().nextDouble() * 6000) + 2000;

  double _generateRandomAngle() => Random().nextDouble() * pi * 2;
}

