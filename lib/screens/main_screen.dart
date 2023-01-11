import 'package:flutter/material.dart';
import 'package:whatsapp/themes/app_color.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: _appBar(context),
        floatingActionButton: _floatingActionButton(),
      ),
    );
  }

  PreferredSizeWidget _appBar(BuildContext context) {
    return AppBar(
      title: const Text(
        "Whatsapp",
        style: TextStyle(
          color: AppColor.grey1,
        ),
      ),
      bottom: _tabBar(context),
      actions: _actions(),
    );
  }

  PreferredSizeWidget _tabBar(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return TabBar(
      physics: const NeverScrollableScrollPhysics(),
      isScrollable: true,
      indicatorColor: AppColor.green1,
      tabs: [
        SizedBox(
          width: size.width / 14,
          child: const Tab(
            icon: Icon(Icons.groups_rounded),
          ),
        ),
        SizedBox(
          width: size.width / 5,
          child: Tab(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Chats"),
                SizedBox(width: 5),
                CircleAvatar(
                  backgroundColor: AppColor.green1,
                  radius: 10,
                  child: Text(
                    "0",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: size.width / 5,
          child: Tab(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Status"),
                SizedBox(width: 5),
                CircleAvatar(
                  backgroundColor: AppColor.green1,
                  radius: 4,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: size.width / 5,
          child: const Tab(
            text: "Calls",
          ),
        ),
      ],
    );
  }

  List<Widget> _actions() {
    return <Widget>[
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.search_rounded),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.more_vert_rounded),
      ),
    ];
  }

  Widget _floatingActionButton() {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(
        Icons.message_rounded,
      ),
    );
  }
}
