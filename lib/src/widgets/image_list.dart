import 'package:flutter/material.dart'; // Almost used in all the dart files
import '../../src/models/image_model.dart';

class ImageList extends StatelessWidget{
  final List<ImageModel> images;
  const ImageList({super.key, required this.images});
  @override
  Widget build(context){
    return ListView.builder(itemCount: images.length,
    itemBuilder: (context, int index){
      print(images[index]);
      return Image.network(images[index].url ?? '');
    });
  }
}