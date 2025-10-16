import 'package:flutter/material.dart';
import '../../constants/my_colors.dart';
import '../../data/models/characters.dart';

class CharactersDetailesScreen extends StatelessWidget {
  final Results character;
  const CharactersDetailesScreen({super.key, required this.character});

  Widget buildSliverAppBar(BuildContext context) {
    return SliverAppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.white,
          size: 28,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      expandedHeight: 600,
      pinned: true,
      stretch: true,
      backgroundColor: MyColors.myGrey,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          character.name,
          style: TextStyle(
            color: MyColors.myWhite,
            fontWeight: FontWeight.bold,
          ),
        ),
        background: Hero(
          tag: character.id,
          child: Image.network(character.image, fit: BoxFit.cover),
        ),
      ),
    );
  }

  Widget characterInfo(String title, String value) {
    return RichText(
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style: TextStyle(color: MyColors.myWhite, fontSize: 16),
          ),
          TextSpan(
            text: value,
            style: TextStyle(color: MyColors.myWhite, fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget buildDvider(double endIndent) {
    return Divider(
      color: MyColors.myYellow,
      height: 30,
      endIndent: endIndent,
      thickness: 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myGrey,
      body: CustomScrollView(
        slivers: [
          buildSliverAppBar(context),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                margin: EdgeInsets.fromLTRB(14, 14, 14, 0),
                padding: EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    characterInfo("Episode: ", character.episode.join(" / ")),
                    buildDvider(290),
                    characterInfo("Species: ", character.species),
                    buildDvider(290),
                    characterInfo("Gender: ", character.gender),
                    buildDvider(300),
                    characterInfo("Status: ", character.status),
                    buildDvider(300),
                    characterInfo("Location: ", character.location.name),
                    buildDvider(285),
                    characterInfo("Origin: ", character.origin.name),
                    buildDvider(305),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              SizedBox(height: 500),
            ]),
          ),
        ],
      ),
    );
  }
}
