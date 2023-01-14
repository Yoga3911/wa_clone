import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat.dart';
import 'package:whatsapp/models/community.dart';
import 'package:whatsapp/screens/chat/widgets/chat_tile.dart';

import '../../../themes/app_color.dart';

class CommunityTileWidget extends StatelessWidget {
  final CommunityModel? community;
  const CommunityTileWidget({
    super.key,
    this.community,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.grey4,
      margin: community != null
          ? const EdgeInsets.symmetric(vertical: 3)
          : const EdgeInsets.only(bottom: 3),
      child: Column(
        children: [
          ListTile(
            title: _username(),
            leading: _leading(),
            onTap: () {},
          ),
          if (community != null)
            const Divider(
              color: AppColor.grey1,
              height: 1,
            ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: community?.listChat.length ?? 0,
            itemBuilder: (_, idx) {
              final chat = community?.listChat[idx] as ChatModel;
              return ChatTileWidget(chat: chat);
            },
          ),
        ],
      ),
    );
  }

  Text _username() => Text(
        community?.communityName ?? "New community",
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      );

  ClipRRect _leading() => ClipRRect(
        borderRadius: BorderRadius.circular(7),
        child: community != null
            ? CircleAvatar(
                backgroundColor: AppColor.green1,
                radius: 20,
                child: Image.asset(community!.avatar!),
              )
            : Container(
                width: 40,
                height: 40,
                color: Colors.grey,
                child: Stack(
                  alignment: Alignment.center,
                  children: const [
                    Icon(
                      Icons.groups_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 10,
                        child: CircleAvatar(
                          backgroundColor: AppColor.green1,
                          radius: 9,
                          child: Icon(
                            Icons.add_rounded,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
      );
}
