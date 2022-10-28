import 'package:flutter/material.dart';
import 'package:nan/utils/constant.dart';

class RadioButton extends StatelessWidget {
  const RadioButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nancolor,
      body: Center(child: MyStatefulWidget()),
    );
  }
}

enum SingingCharacter { lafayette, jefferson, clinton, churchill }

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      color: nanpurple,
      child: Column(
        children: [
          Text("1. What is Flutter"),
          SizedBox(height: 5),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    color: contColor),
                child: ListTile(
                  title: const Text('Lafayette',
                      style: TextStyle(color: Colors.white, fontSize: 12)),
                  leading: Radio<SingingCharacter>(
                    value: SingingCharacter.lafayette,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    color: contColor),
                child: ListTile(
                  title: const Text('Thomas Jefferson',
                      style: TextStyle(color: Colors.white, fontSize: 12)),
                  leading: Radio<SingingCharacter>(
                    value: SingingCharacter.jefferson,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    color: contColor),
                child: ListTile(
                  title: const Text('Bill Clinton',
                      style: TextStyle(color: Colors.white, fontSize: 12)),
                  leading: Radio<SingingCharacter>(
                    value: SingingCharacter.clinton,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    color: contColor),
                child: ListTile(
                  title: const Text('Wiston Churchill',
                      style: TextStyle(color: Colors.white, fontSize: 12)),
                  leading: Radio<SingingCharacter>(
                    value: SingingCharacter.churchill,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
