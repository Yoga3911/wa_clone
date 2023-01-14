import 'package:flutter/material.dart';
import 'package:whatsapp/dummy/community.dart';
import 'package:whatsapp/screens/community/widgets/community_tile.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const CommunityTileWidget(),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: communityData.length,
            itemBuilder: (_, idx) {
              final community = communityData[idx];
              return CommunityTileWidget(community: community);
            },
          ),
        ],
      ),
    );
  }
}
