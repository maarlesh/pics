import 'package:flutter/material.dart'; // Almost used in all the dart files
import 'package:flutter/widgets.dart';
import '../../src/models/image_model.dart';

class ImageList extends StatelessWidget{
  final List<ImageModel> images;
  const ImageList({super.key, required this.images});
  @override
  Widget build(context){
    return ListView.builder(itemCount: images.length,
    itemBuilder: (context, int index){
      return buildImage(images[index]);
    });
  }
  Widget buildImage(ImageModel image){
    return Container(
        decoration: BoxDecoration(border : Border.all(color: Color.fromARGB(255, 164, 130, 243))),
        margin:EdgeInsets.all(20.0),
        padding:EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Padding(child:Image.network(image.url ?? ''), padding: EdgeInsets.only(bottom: 8.0), ),
            Text(image.title ?? '')
          ],
        ),
      );
  }
}