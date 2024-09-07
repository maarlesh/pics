import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
@override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),  
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          child: const Icon(Icons.add_a_photo_outlined),
        ),
        appBar: AppBar(
          title: const Text('Gallery'),
        ),
    ));
  }
}

// class App extends StatelessWidget
// {
//   Widget build(context){
//     return MaterialApp(
//       home: Scaffold(
//         floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.add_a_photo),
//         onPressed: () 
//         { 
//           print('the button is clicked');
//         },
//         ),
//         appBar: AppBar(
//           title: const Text('Gallery'),
//         )
//       )
//     );
//   }
// }