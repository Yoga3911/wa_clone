import 'package:flutter/material.dart';
import 'package:whatsapp/dummy/chat.dart';
import 'package:whatsapp/screens/chat/chat.dart';
import 'package:whatsapp/screens/community/community.dart';
import 'package:whatsapp/themes/app_color.dart';

import 'call/call.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  final int _tabLength = 4;
  final int _index = 1;

  late final List<Widget> _screens = [
    const CommunityScreen(),
    const ChatScreen(),
    const ChatScreen(),
    const CallScreen(),
  ];

  late final TabController _tabController = TabController(
    length: _tabLength,
    vsync: this,
    initialIndex: _index,
  );

  _onPageChanged(idx) {
    _tabController.index = idx;
    setState(() {});
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabLength,
      initialIndex: _index,
      child: Scaffold(
        appBar: _appBar(context),
        floatingActionButton: _floatingActionButton(),
        body: _body(),
      ),
    );
  }

  PreferredSizeWidget _appBar(BuildContext context) => AppBar(
        title: const Text(
          "Whatsapp",
          style: TextStyle(
            color: AppColor.grey1,
          ),
        ),
        bottom: _tabBar(context),
        actions: _actions(),
        elevation: 0,
      );

  PreferredSizeWidget _tabBar(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return TabBar(
      physics: const NeverScrollableScrollPhysics(),
      isScrollable: true,
      controller: _tabController,
      onTap: _onPageChanged,
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
              children: [
                const Text("Chats"),
                const SizedBox(width: 5),
                CircleAvatar(
                  backgroundColor: _tabController.index == 1
                      ? AppColor.green1
                      : AppColor.grey1,
                  radius: 10,
                  child: Text(
                    chatData.length.toString(),
                    style: const TextStyle(
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
              children: [
                const Text("Status"),
                const SizedBox(width: 5),
                CircleAvatar(
                  backgroundColor: _tabController.index == 2
                      ? AppColor.green1
                      : AppColor.grey1,
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

  List<Widget> _actions() => <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.camera_alt_outlined),
          splashRadius: 20,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search_rounded),
          splashRadius: 20,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert_rounded),
          splashRadius: 20,
        ),
      ];

  Widget _floatingActionButton() => FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.message_rounded,
        ),
      );

  IndexedStack _body() => IndexedStack(
        index: _tabController.index,
        children: _screens,
      );
}
