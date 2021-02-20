import 'package:flutter/cupertino.dart';

import "package:flutter/material.dart";
import 'package:trial/scrollable_list.dart';
import "./data.dart";

class HomePage extends StatelessWidget {
  var _deviceWidth;
  var _deviceHeight;

  @override
  Widget build(BuildContext context) {
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        _featuredImages(_deviceHeight * 0.50, _deviceWidth),
        _gradientBox(_deviceHeight * 0.80, _deviceWidth),
        topLayerWidget(_deviceWidth, _deviceHeight)
      ],
    );
  }

  Widget _featuredImages(height, width) {
    return SizedBox(
        height: height,
        width: width,
        child: PageView(
            children: images
                .map((image) => Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(image.url),
                            fit: BoxFit.cover))))
                .toList()));
  }

  Widget _gradientBox(height, width) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromRGBO(35, 45, 59, 1.0), Colors.transparent],
                stops: [0.65, 1.0],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            )));
  }

  Widget topLayerWidget(deviceWidth, deviceHeight) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: deviceWidth * 0.05, vertical: deviceHeight * 0.005),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: _deviceHeight * 0.63),
              Padding(
                padding: EdgeInsets.symmetric(vertical: _deviceHeight * 0.01),
                child:
                    ScrollableList(_deviceHeight * 0.24, _deviceWidth, images),
              )
            ]));
  }
}
