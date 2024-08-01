import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {

   const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Points Counter"),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("Team A", style: TextStyle(fontSize: 30)),
                       Text("$teamAPoints", style: const TextStyle(fontSize: 150)),
                      ElevatedButton(onPressed: (){
                        setState(() {
                          teamAPoints ++;
                        });
                      //  print("add one point!");
                      },
                         style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,minimumSize: const Size(150, 50)),
                          child: const Text("Add 1 point", style: TextStyle(color: Colors.black, fontSize: 18))),
                      ElevatedButton(onPressed: (){
                        setState(() {
                          teamAPoints += 2;
                        });
                      },
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,minimumSize: const Size(150, 50)),
                          child: const Text("Add 2 points", style: TextStyle(color: Colors.black, fontSize: 18))),
                      ElevatedButton(onPressed: (){
                        setState(() {
                          teamAPoints += 3;
                        });
                      },
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,minimumSize: const Size(150, 50)),
                          child: const Text("Add 3 points", style: TextStyle(color: Colors.black, fontSize: 18)))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    indent: 50,
                    endIndent: 50,
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("Team B", style: TextStyle(fontSize: 30)),
                       Text("$teamBPoints", style: const TextStyle(fontSize: 150)),
                      ElevatedButton(onPressed: (){
                        setState(() {
                          teamBPoints ++;
                        });
                      },
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,minimumSize: const Size(150, 50)),
                          child: const Text("Add 1 point", style: TextStyle(color: Colors.black, fontSize: 18))),
                      ElevatedButton(onPressed: (){
                        setState(() {
                          teamBPoints += 2;
                        });
                      },
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,minimumSize: const Size(150, 50)),
                          child: const Text("Add 2 points", style: TextStyle(color: Colors.black, fontSize: 18))),
                      ElevatedButton(onPressed: (){
                        setState(() {
                          teamBPoints += 3;
                        });
                      },
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,minimumSize: const Size(150, 50)),
                          child: const Text("Add 3 points", style: TextStyle(color: Colors.black, fontSize: 18)))
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                teamAPoints = 0;
               // teamBPoints; // هالصيغة فسرها بأنو حافظ عحالتو وما تغيرت
                teamBPoints = 0;
              });
            },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,minimumSize: const Size(150, 50)),
                child: const Text("Reset", style: TextStyle(color: Colors.black, fontSize: 18)))
          ],
        ),
      ),
    );
  }
}
