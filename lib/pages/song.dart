import 'package:flutter/material.dart';
import 'package:kanye/services/songLibrary.dart';
import 'package:kanye/pages/home.dart';
import 'package:kanye/services/emotions.dart';
import 'package:kanye/services/getRandom.dart';

class Song extends StatefulWidget {
  @override
  State<Song> createState() => _SongState();
}

class _SongState extends State<Song> {
  List<songName> library =[
    songName(album: '808s and HeartBreaks', song: 'Heartless', emotion: "in ye's feels", img: '808s'),
    songName(album: 'The Life of Pablo', song: 'No more parties in LA', emotion: 'happy ye', img: 'TLOP'),
    songName(album: 'My Beautiful Dark Twisted Fantasy', song: 'Monster', emotion: 'angry ye', img: 'MBDTF'),
    songName(album: '808s and Heart Breaks', song: 'Paranoid', emotion: 'happy ye', img: '808s')
  ];
  
  //Mood instance = Mood(emotion: 'angry ye', image: '');
  
  @override
  Widget build(BuildContext context) {
    
    
    final instance = ModalRoute.of(context)!.settings.arguments as Mood;
    songName element = getRandom(library, instance.emotion);
    print(element.song);
    
  
    return Scaffold(
      appBar: AppBar(
        title: Text('Listen To'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 120),
            Image.asset(
                'assets/albumCovers/${element.img}.jpg',
              fit: BoxFit.cover,
              ),
            SizedBox(height: 30),
            Text(
              '${element.song}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              )
            ),
            Text(
              '${element.album}',
              style: TextStyle(
                fontSize: 18
              )
            )
          ],
        ),
      )
    );
  }
}