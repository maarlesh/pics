import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;

class App extends StatefulWidget {
  const App({super.key});
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  void  fetchImage() async{
    setState(() {
              counter += 1;
    });
    var result = await get(Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter'));
  }
@override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),  
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            fetchImage();
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