import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trial/data.dart';

class ScrollableList extends StatelessWidget {
  final double _width;
  final double _height;
  final List<ImageData> _imageData;

  ScrollableList(this._height, this._width, this._imageData);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: this._height,
      width: this._width,
      child: ListView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          children: this._imageData.map((image) {
            return Container(
                height: this._height,
                width: this._width * .30,
                padding: EdgeInsets.only(right: _width * 0.03),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: _height * 0.80,
                      width: _width * 0.45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(image.url),
                        ),
                      ),
                    ),
                    Text(
                      image.title,
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.white, fontSize: _height * 0.08),
                    )
                  ],
                ));
          }).toList()),
    );
  }
}
