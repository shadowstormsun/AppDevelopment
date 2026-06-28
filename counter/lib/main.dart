import 'package:flutter/material.dart';

//Example 1:

// void main() {

//   runApp(CounterApp());

// }

// class CounterApp extends StatefulWidget {

//   @override

//   State<CounterApp> createState() => _CounterAppState();

// }

// class _CounterAppState extends State<CounterApp> {

//   int count = 0;

//   void increaseCount() {

//     setState(() {

//       count++;

//     });

//   }

//   @override

//   Widget build(BuildContext context) {

//     return MaterialApp(

//            home: Scaffold(

//             appBar: AppBar(title: Text("Counter")),

//             body: Center(

//               child: Text("Count/Like:  $count  "),

//             ),

//           floatingActionButton: FloatingActionButton(onPressed: increaseCount,   child: Icon(Icons.add)),

//            ),

//     );

//   }

// }

//Example 2:

//void main() {

//  runApp(MyApp());

//}

//class MyApp extends StatefulWidget {

  //@override

//  State<MyApp> createState() => _MyAppState();

//}

//class _MyAppState extends State<MyApp> {

//  bool isDark = false;

//  void changeTheme() {

//    setState(() {

//      isDark = !isDark;

//    });

//  }

  //@override

//  Widget build(BuildContext context) {

  //  return MaterialApp(

    //  themeMode: isDark ? ThemeMode.dark : ThemeMode.light,

      //theme: ThemeData(brightness: Brightness.light),

      //darkTheme: ThemeData(brightness: Brightness.dark),

      //home: Scaffold(

  //      appBar: AppBar(title: Text("Theme Toggle")),

    //    body: Center(

      //    child: Column(

        //    mainAxisAlignment: MainAxisAlignment.center,

          //  children: [

            //  Text(

              //  isDark ? "Dark Mode Enable" : "Light Theme Enalble ",

                //style: TextStyle(fontSize: 20),

//              ),

  //            SizedBox(height: 20),

    //          ElevatedButton(

      //          onPressed: changeTheme,

        //        child: Text("Toogle Theme"),

          //    ),

            //],

          //),

      //  ),

    //  ),

  //  );

//  }

//}

void main() {

  runApp(LikeApp());

}

class LikeApp extends StatefulWidget {

  @override

  State<LikeApp> createState() => _LikeAppState();

}

class _LikeAppState extends State<LikeApp> {

  int likes = 10;

  void addLike() {

    setState(() {

      likes++;

    });

  }

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

           home: Scaffold(

            appBar: AppBar(title: Text("Like Button")),

            body: Column(

              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                    

                    Icon(Icons.favorite , color: Colors.red, size:50),

                    Text("$likes Likes"),

                    SizedBox(height: 20),

                    ElevatedButton(onPressed: addLike, child: Text("Like "))

 

              ],

            )

           ),

    );

  }

}