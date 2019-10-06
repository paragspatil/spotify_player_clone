import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_player_clone/song.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:io';


void main() {
  runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar(
          backgroundColor: Colors.black26,
          centerTitle: true,
          title: Text(
            'Best of Hindi',
          ),
        ),
        body: SpotifyPlayer(),
      )
  ));
}

class SpotifyPlayer extends StatefulWidget {
  @override
  _SpotifyPlayerState createState() => _SpotifyPlayerState();
}

class _SpotifyPlayerState extends State<SpotifyPlayer> {
int p = 0;
  Song dummySong = Song(
      'Duniyaa',
      'https://p.scdn.co/mp3-preview/4efd033217aa13f4625d37f95efa676fb02d4778?cid=774b29d4f13844c495f206cafdad9c86',
      'https://i.scdn.co/image/f218335b215402cc2fb3b8d92652ebad48458805',
      'Luka Chuppi');
  List<Song> allSongs = SongData().songs;

// You are given a list of songs here for Stretch

  @override
  Widget build(BuildContext context) {
    AudioPlayer audioPlayer = AudioPlayer();
    AudioPlayer.logEnabled = true;
    void playaudio() {

      if(p%2==1){
        audioPlayer.play('https://p.scdn.co/mp3-preview/4efd033217aa13f4625d37f95efa676fb02d4778?cid=774b29d4f13844c495f206cafdad9c86');
      }
      else if(p%2==1){
        audioPlayer.stop();
      }

      print(p);
      setState(() {
        p = p+1;
      });
    };
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(
         flex: 8,
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 50, 0, 50),
            child: Image.network('https://i.scdn.co/image/f218335b215402cc2fb3b8d92652ebad48458805'),

          ),

        ),

        Expanded(
          flex:1,
          child: Container(
            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              'Duniyaa',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                  fontWeight: FontWeight.bold,
              ),
            ),

          ),
        ),

        Expanded(
          flex:1,
          child: Container(
            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              'Luka chuppi',
              style: TextStyle(
                color: Colors.white38,
                fontSize: 20,

              ),
            ),


          ),
        ),


        Expanded(
          flex:2,
          child: Container(


            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: FlatButton(
                      child: Icon(Icons.thumb_up, color: Colors.white, size: 30,),
                      onPressed: (){},
                      
                    ),

                  ),
                ),
                Expanded(
                  child: Container(
                    child: FlatButton(
                      child: Icon(Icons.skip_previous, color: Colors.white, size: 30,),
                      onPressed: (){},

                    ),


                  ),
                ),
                Expanded(
                  child: Container(
                    child: FlatButton(
                      child: Icon(Icons.play_circle_filled, color: Colors.white, size: 70,),
                      onPressed: (){
                      playaudio();

                      },

                    ),

                  ),
                ),

                Expanded(
                  child: Container(
                    child: FlatButton(
                      child: Icon(Icons.skip_next, color: Colors.white, size: 30,),
                      onPressed: (){},

                    ),

                  ),
                ),
                Expanded(
                  child: Container(
                    child: FlatButton(
                      child: Icon(Icons.thumb_down, color: Colors.white, size: 30,),
                      onPressed: (){},

                    ),

                  ),
                ),


              ],





            ),

          ),
        )


      ],






    );
  }
}
