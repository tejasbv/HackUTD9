// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_notifier.dart';

import '../../constants.dart';
import '../../models/Blog.dart';
import '../../responsive.dart';
import 'components/blog_post.dart';
import 'components/categories.dart';
import 'components/recent_posts.dart';
import 'components/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selected;
  var flags = [];
  var selectedBlogs = blogPosts;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: List.generate(
              selectedBlogs.length,
              (index) => BlogPostCard(blog: selectedBlogs[index]),
            ),
          ),
        ),
        if (!Responsive.isMobile(context)) SizedBox(width: kDefaultPadding),
        // Sidebar
        if (!Responsive.isMobile(context))
          Expanded(
            child: Column(
              children: [
                Search(),
                SizedBox(height: kDefaultPadding),
                Categories(
                  press: (value) {
                    flags = [];
                    selectedBlogs = [];
                    setState(() {
                      selected = value;

                      if (selected[0]) flags.add("AA");
                      if (selected[1]) flags.add("H");
                      if (selected[2]) flags.add("ENV");
                      if (selected[3]) flags.add("LGBT");
                      if (selected[4]) flags.add("GE");
                      if (selected[5]) flags.add("EDU");
                      if (selected[6]) flags.add("V");
                      if (selected[7]) flags.add("CANC");
                      if (selected[8]) flags.add("EJ");
                      if (selected[9]) flags.add("NP");

                      
                      if(flags.length==0)
                      {
                        selectedBlogs = blogPosts;
                      }
                      else{
                        for (var blog in blogPosts) {
                          for (var flag in flags) {
                            // print(blog.name+" "+blog.tags.contains(flag).toString());
                            if(blog.tags.contains(flag) && !selectedBlogs.contains(blog))
                              selectedBlogs.add(blog);
                          }
                        }
                      }
                    });
                    print(selectedBlogs);
                  },
                ),
                SizedBox(height: kDefaultPadding),
                RecentPosts(),
              ],
            ),
          ),
      ],
    );
  }
}
