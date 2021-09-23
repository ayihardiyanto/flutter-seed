import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterseed/domain/entities/song_entity.dart';
import 'package:flutterseed/presentation/themes/custom_colors.dart';
import 'package:flutterseed/presentation/widgets/molecules/song_tile.dart';

class NavigationBarItem extends StatelessWidget {
  final Function()? onTap;
  final Widget icon;
  final Song? song;
  final String? title;
  const NavigationBarItem({
    Key? key,
    this.onTap,
    required this.icon,
    this.title,
    this.song,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(height: 5),
            if (title != null)
              Text(
                title!,
                style: TextStyle(color: Colors.white),
              )
          ],
        ),
      ),
    );
  }
}

class NavigationBar extends StatelessWidget {
  final List<NavigationBarItem> menus;
  const NavigationBar({Key? key, required this.menus}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height * 0.22,
          color: CColors.grey[1]!.withOpacity(0.5),
          child: Column(
            children: [
              Container(
                height: 80,
                width: double.infinity,
                child: SongTile(),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(20),
                    right: Radius.circular(20),
                  ),
                  color: Colors.black,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: menus,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
