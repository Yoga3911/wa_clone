import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp/dummy/chats.dart';
import 'package:whatsapp/themes/app_color.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chatData.length,
        itemBuilder: (_, idx) {
          final chat = chatData[idx];
          return ListTile(
            title: Text(
              chat.username,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              chat.message,
              style: const TextStyle(
                color: AppColor.grey1,
              ),
            ),
            leading: CircleAvatar(
              backgroundColor: AppColor.green1,
              radius: 20,
              child: Padding(
                padding: EdgeInsets.all(chat.isStatus! ? 2 : 0),
                child: ClipOval(
                  child: Image.asset(chat.avatar!),
                ),
              ),
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  DateFormat("HH:mm").format(
                    DateTime.now(),
                  ),
                  style: TextStyle(
                    color: chat.isMessage! ? AppColor.green1 : AppColor.grey1,
                  ),
                ),
                const SizedBox(height: 5),
                if (chat.isMessage!)
                  CircleAvatar(
                    backgroundColor: AppColor.green1,
                    radius: 10,
                    child: Text(
                      chatData.length.toString(),
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  )
                else if (chat.isMute!)
                  const Icon(
                    Icons.volume_off_rounded,
                    color: AppColor.grey1,
                  )
              ],
            ),
            onTap: () {},
          );
        },
      ),
    );
  }
}
