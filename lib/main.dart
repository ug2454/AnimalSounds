import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(
      AnimalsSoundApp(),
    );

class AnimalsSoundApp extends StatefulWidget {
  @override
  _AnimalsSoundAppState createState() => _AnimalsSoundAppState();
}

class _AnimalsSoundAppState extends State<AnimalsSoundApp> {
  //MAKE AN ANIMAL SOUND APP

  Future<void> playAudio(bool isAudioPlaying) async {
    final player = AudioCache();
    AudioPlayer pl;

    pl = await player.play('thunder.wav');
    print(pl);
  }

  InkWell buttonImage({String image, String sound}) => InkWell(
        onTap: () {
          final player = AudioCache();
          player.play(sound);
        },
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
          color: Colors.white,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.green,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            title: Text("Animal Sounds"),
            centerTitle: true,
          ),
          body: SafeArea(
              child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/background.jpg'),
                  fit: BoxFit.cover),
            ),
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(30.0),
              crossAxisSpacing: 30,
              mainAxisSpacing: 30,
              crossAxisCount: 2,
              children: <Widget>[
                buttonImage(image: 'images/cat.jpg', sound: 'cat.wav'),
                buttonImage(image: 'images/chicken.jpg', sound: 'chicken.wav'),
                buttonImage(image: 'images/cow.jpg', sound: 'cow.wav'),
                buttonImage(image: 'images/dog.jpg', sound: 'dog.wav'),
                buttonImage(image: 'images/frog.jpg', sound: 'frog.wav'),
                buttonImage(image: 'images/horse.jpg', sound: 'horse.wav'),
                buttonImage(image: 'images/monkey.jpg', sound: 'monkey.wav'),
                buttonImage(image: 'images/owl.jpg', sound: 'owl.wav'),
                buttonImage(image: 'images/pig.jpg', sound: 'pig.wav'),
                buttonImage(
                    image: 'images/elephant.jpg', sound: 'elephant.wav'),
                buttonImage(image: 'images/lion.jpg', sound: 'lion.wav'),
                buttonImage(image: 'images/sheep.jpg', sound: 'sheep.wav'),
              ],
            ),
          ))),
    );
  }
}
