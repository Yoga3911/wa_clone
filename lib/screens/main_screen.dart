import 'package:flutter/material.dart';
import 'package:whatsapp/themes/app_color.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  final int _tabLength = 4;
  final int _index = 0;

  late final TabController _tabController = TabController(
    length: _tabLength,
    vsync: this,
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
                  child: const Text(
                    "4",
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

  List<Widget> _actions() {
    return <Widget>[
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
