import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import '../src/models/image_model.dart';
import '../src/widgets/image_list.dart';
import 'dart:convert';

class App extends StatefulWidget {
  const App({super.key});
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];
  void  fetchImage() async{
    counter++;
    var response = await get(Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter'));
    var imageModel = ImageModel.fromJson(json.decode(response.body));
    setState(() {
        images.add(imageModel);
    });
  }
@override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images:images),  
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