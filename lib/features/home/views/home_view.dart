import 'package:adaptive_app/features/home/views/widgets/custom_drawer.dart';
import 'package:adaptive_app/features/home/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
bool isDrawerOpend = false;

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: const CustomDrawer(),
        onDrawerChanged: (isOpened) {
          setState(() {
            isDrawerOpend = isOpened;
          });
        },
        appBar: buildAppBar(context),
        body: const HomeViewBody());
  }

  AppBar? buildAppBar(BuildContext context) {
    return MediaQuery.of(context).size.width - 32 < 900
        ? AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              onPressed: () {
                scaffoldKey.currentState!.openDrawer();
                if (scaffoldKey.currentState!.isDrawerOpen) {
                  setState(() {
                    isDrawerOpend = true;
                  });
                } else {
                  setState(() {
                    isDrawerOpend = false;
                  });
                }
              },
              icon: isDrawerOpend
                  ? const Icon(
                      Icons.menu_open,
                      color: Colors.white,
                    )
                  : const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
            ),
          )
        : null;
  }
}
