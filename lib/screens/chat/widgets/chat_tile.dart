import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../models/chat.dart';
import '../../../themes/app_color.dart';

class ChatTileWidget extends StatelessWidget {
  final ChatModel chat;
  const ChatTileWidget({
    super.key,
    required this.chat,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: _username(),
      subtitle: _message(),
      leading: _leading(),
      trailing: _trailing(),
      onTap: () {},
    );
  }

  Text _username() => Text(
        chat.username,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      );

  Text _message() => Text(
        chat.message,
        style: const TextStyle(
          color: AppColor.grey1,
        ),
      );

  CircleAvatar _leading() => CircleAvatar(
        backgroundColor: AppColor.green1,
        radius: 20,
        child: Padding(
          padding: EdgeInsets.all(chat.isStatus! ? 2 : 0),
          child: ClipOval(
            child: Image.asset(chat.avatar!),
          ),
        ),
      );

  Column _trailing() => Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            DateFormat("HH:mm").format(
              DateTime.now(),
            ),
            style: TextStyle(
              color: chat.total != 0 ? AppColor.green1 : AppColor.grey1,
            ),
          ),
          const SizedBox(height: 5),
          if (chat.total != 0 || chat.isMute!)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (chat.isMute!)
                  const Icon(
                    Icons.volume_off_rounded,
                    color: AppColor.grey1,
                  ),
                const SizedBox(width: 5),
                if (chat.total != 0)
                  CircleAvatar(
                    backgroundColor: AppColor.green1,
                    radius: 10,
                    child: Text(
                      chat.total.toString(),
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ),
              ],
            )
        ],
      );
}
