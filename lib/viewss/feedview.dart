import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';



class feedview extends StatelessWidget {
  const feedview({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      itemCount: 10,
      physics:const NeverScrollableScrollPhysics(),
      gridDelegate:const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),itemBuilder: (context, index) => Padding(
      
        padding: const EdgeInsets.all(2.0),
        child: Image.asset('images/image${index + 1}.jpg'),
      ),);
  }
}