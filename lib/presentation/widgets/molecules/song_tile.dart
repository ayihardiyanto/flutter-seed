import 'package:flutter/material.dart';
import 'package:flutterseed/presentation/themes/custom_colors.dart';
import 'package:flutterseed/presentation/widgets/atoms/typography.dart';

class SongTile extends StatelessWidget {
  final Function()? onDismiss;
  const SongTile({Key? key, this.onDismiss}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(),
          SizedBox(width: 20),
          _SongTileInfo(),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.play_arrow),
            color: Colors.white,
          ),
          if (onDismiss != null)
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.close),
              color: Colors.white,
            ),
        ],
      ),
    );
  }
}

class _SongTileInfo extends StatelessWidget {
  const _SongTileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Subheading('Song title', color: Colors.white),
        Caption('Singer', color: CColors.grey[1]),
      ],
    );
  }
}
