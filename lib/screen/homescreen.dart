import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gamify/widgets/scrollable_games_widget.dart';

import '../data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _deviceHeight;
  var _deviceWidth;

  var _selectedGame;

  late Timer _timer;
  int ind = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedGame = 0;
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      setState(() {
        ind = (ind + 1) % banners.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    _deviceHeight = media.height;
    _deviceWidth = media.width;

    return Scaffold(
      body: Stack(
        children: [
          _featuredGamesWidget(),
          _gradientBoxWidget(),
          _topLayerWidget(),
        ],
      ),
    );
  }

  Widget _gradientBoxWidget() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: _deviceHeight * 0.8,
        width: _deviceWidth,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 35, 45, 59),
              Colors.transparent,
            ],
            stops: [0.65, 1],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
      ),
    );
  }

  Widget _featuredGamesWidget() {
    var media = MediaQuery.of(context).size;
    return SizedBox(
        height: media.height * 0.5,
        width: media.width,
        child: PageView(
          onPageChanged: (_index) {
            setState(() {
              _selectedGame = _index;
            });
          },
          allowImplicitScrolling: true,
          scrollDirection: Axis.horizontal,
          children: featuredGames.map((_game) {
            return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(_game.coverImage.url))),
            );
          }).toList(),
        ));
  }

  Widget _topLayerWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: _deviceWidth * 0.05, vertical: _deviceHeight * 0.005),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _topBarWidget(),
          SizedBox(
            height: _deviceHeight * 0.125,
          ),
          _featuredGamesInfoWidget(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: _deviceHeight * 0.007),
            child: ScrollableGameWidget(
                _deviceHeight * 0.24, _deviceWidth, true, games),
          ),
          _featuredGameBannerWidget(),
          SizedBox(
            height: _deviceHeight * 0.01,
          ),
          ScrollableGameWidget(
              _deviceHeight * 0.20, _deviceWidth, false, games2),
        ],
      ),
    );
  }

  Widget _topBarWidget() {
    return SizedBox(
      height: _deviceHeight * 0.13,
      width: _deviceWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(
                width: _deviceWidth * 0.03,
              ),
              const Icon(
                Icons.notifications_none,
                color: Colors.white,
                size: 30,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _featuredGamesInfoWidget() {
    return SizedBox(
      height: _deviceHeight * 0.14,
      width: _deviceWidth * 0.9,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            featuredGames[_selectedGame].title,
            style:
                TextStyle(color: Colors.white, fontSize: _deviceHeight * 0.04),
            maxLines: 2,
          ),
          SizedBox(
            height: _deviceHeight * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: featuredGames.map((_game) {
              bool _isActive =
                  _game.title == featuredGames[_selectedGame].title;
              double _circleRadius = _deviceHeight * 0.004;
              return Container(
                margin: EdgeInsets.only(right: _deviceWidth * 0.015),
                height: _circleRadius * 2,
                width: _circleRadius * 2,
                decoration: BoxDecoration(
                  color: _isActive ? Colors.green : Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _featuredGameBannerWidget() {
    return Container(
      height: _deviceHeight * 0.13,
      width: _deviceWidth,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(banners[ind].coverImage.url),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
