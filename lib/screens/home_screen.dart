import 'package:fcbook_clone/config/palette.dart';
import 'package:fcbook_clone/data/data.dart';
import 'package:fcbook_clone/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fcbook_clone/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  // _HomeScreen({Key? key}) : super(key: key);

  void iconPress(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark,
              statusBarBrightness: Brightness.light
            ),
            backgroundColor: Colors.white,
            title: const Text(
              "Facebook",
              style: TextStyle(
                color: Palette.facebookBlue,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2
              ),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              CircleButton(
                icon: Icons.search, 
                onPressed: () => print("search"), 
                iconSize: 28.0
              ),
              CircleButton(
                icon: MdiIcons.facebookMessenger, 
                onPressed: () => print("facebook messenger"), 
                iconSize: 28.0
              )
            ],
          ),

         const SliverToBoxAdapter(
            child: CreatePostContainer(
              postUser: currentUser
            )
          ),

          const SliverPadding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: Room(onlineUsers: onlineUsers),
            ),
          ),
          
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            sliver: SliverToBoxAdapter(
              child: Stories(stories: stories, currentUser: currentUser,),
            ),
          ),
          

          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final Post post = storyPosts[index];
                return PostContainer(post: post);
              },
              childCount: storyPosts.length
            )
          )
        ],   
      ),
    );
  }
}