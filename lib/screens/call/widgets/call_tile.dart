import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../models/call.dart';
import '../../../themes/app_color.dart';

class CallTileWidget extends StatelessWidget {
  final CallModel call;
  const CallTileWidget({
    super.key,
    required this.call,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: _username(),
      subtitle: _date(),
      leading: _leading(),
      trailing: _trailing(),
      onTap: () {},
    );
  }

  Text _username() => Text(
        call.username,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      );

  Row _date() => Row(
        children: [
          Icon(
            Icons.call_received_rounded,
            color: call.isComingCall ? Colors.green : Colors.red,
            size: 15,
          ),
          const SizedBox(width: 5),
          Text(
            DateFormat("MMMM dd, HH:mm").format(call.callDate),
            style: const TextStyle(
              color: AppColor.grey1,
            ),
          ),
        ],
      );

  CircleAvatar _leading() => CircleAvatar(
        backgroundColor: AppColor.green1,
        radius: 20,
        child: ClipOval(
          child: Image.asset(call.avatar!),
        ),
      );

  IconButton _trailing() => IconButton(
        onPressed: () {},
        icon: const Icon(Icons.phone_rounded),
        color: AppColor.green1,
      );
}
