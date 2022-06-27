import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/views/add_post_screen.dart';
import 'package:instagram_clone/views/feed_screen.dart';
import 'package:instagram_clone/views/profile_screen.dart';
import 'package:instagram_clone/views/search_screen.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  const FeedScreen(),
  const SearchScreen(),
  const AddPostScreen(),
  const Text('notifications'),
  ProfileScreen(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];