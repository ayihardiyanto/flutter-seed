import 'package:flutter/material.dart';
import 'package:flutterseed/presentation/widgets/molecules/bottom_navigation_bar.dart';
import 'package:flutterseed/presentation/widgets/molecules/song_list.dart';

class SepotipayHome extends StatelessWidget {
  const SepotipayHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_SepotipayHomeStrings.appTitle),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.black,
            width: double.infinity,
            child: const SongList(),
          ),
          const _BottomNavigationBar()
        ],
      ),
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  const _BottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: NavigationBar(
        menus: [
          NavigationBarItem(
            icon: Icon(Icons.queue_music, color: Colors.white),
            onTap: () {},
            title: _SepotipayHomeStrings.songs,
          ),
          NavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.white),
            onTap: () {},
            title: _SepotipayHomeStrings.account,
          ),
        ],
      ),
    );
  }
}

class _SepotipayHomeStrings {
  static const String appTitle = 'Sepotipay';
  static const String songs = 'Songs';
  static const String account = 'Account';
}
