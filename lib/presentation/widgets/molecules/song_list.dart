import 'package:flutter/material.dart';
import 'package:flutterseed/domain/entities/song_entity.dart';
import 'package:flutterseed/presentation/widgets/molecules/song_tile.dart';

class SongList extends StatelessWidget {
  final List<Song>? songs;
  const SongList({Key? key, this.songs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: 'Search...', prefixIcon: Icon(Icons.search)),
          ),
        ),
        Expanded(
          child: Scrollbar(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: songs?.length ?? 0,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              physics: BouncingScrollPhysics(),
              controller: ScrollController(),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: InkWell(onTap: () {}, child: SongTile()),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
