

import 'package:flutter/widgets.dart';

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var image = Image(image: AssetImage("images/diagramArtboard.png"),);
    return Container(child: image, width: 100, height: 100);
  }
}
