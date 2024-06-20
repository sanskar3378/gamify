import 'package:flutter/material.dart';

import '../data.dart';

class ScrollableGameWidget extends StatelessWidget {
  final double _height;
  final double _width;
  final bool _showTitle;

  final List<Game> _gameData;

  const ScrollableGameWidget(
    this._height,
    this._width,
    this._showTitle,
    this._gameData,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      width: _width,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: _gameData.map((_game) {
          return Container(
            height: _height,
            width: _width * 0.31,
            padding: EdgeInsets.only(right: _width * 0.03),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: _showTitle ? _height * 0.75 : _height,
                  width: _width * 0.45,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(_game.coverImage.url),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                _showTitle
                    ? Text(
                        _game.title,
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: _height * 0.07,
                        ),
                      )
                    : SizedBox(
                        height: 0,
                      ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
