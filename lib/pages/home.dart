import 'package:flutter/material.dart';
import 'package:kanye/services/emotions.dart';
import 'package:kanye/pages/song.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Mood> moods = [
    Mood(emotion: 'happy ye', image: 'assets/happy_ye.png'),
    Mood(emotion: "in ye's feels", image: 'assets/sad_ye.png'),
    Mood(emotion: 'ye ready?', image: 'assets/ready_ye.png'),
    Mood(emotion: 'angry ye', image: 'assets/angry_ye.png'),
  ];
  
  void setUpMood(index) async{
    Mood instance = moods[index];
    Future.delayed(Duration(seconds: 2), (){
      Navigator.pushNamed(context, 
      '/song',
      arguments:instance,
      );
    });
  }
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ye's mood"),
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 30,0,0),
        child: 
          Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment,
          children: [
            TextButton.icon(
              onPressed: (){
                print('pressed');
              },
              icon: Image.asset('assets/kanye_main.png'),
              label: Text(''),
            ),
            SizedBox(height: 30),
            Text(
              'What mood you in?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              )
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: moods.length,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                    child: Card(
                    child: ListTile(
                      onTap: (){
                        print('pressed ${moods[index].emotion}');
                        setUpMood(index);
                      },
                      title: Text(
                        '${moods[index].emotion}',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        )
                      ),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('${moods[index].image}'),
                        radius: 30
                      )
                    )
                    ),
                  );
                }
                
              ),
            )
            
          ],
        ),
      ),
      
    );
  }
}
