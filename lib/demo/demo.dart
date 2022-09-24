import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    List<String> items = [
      "Home",
      "Explore",
      "Search",
      "Feed",
      // "Post",
      // "Activity",
      // "Setting",
      // "Profile",
    ];

    /// List of body icon
    List<IconData> icons = [
      Icons.home,
      Icons.explore,
      Icons.search,
      Icons.feed,
      // Icons.post_add,
      // Icons.local_activity,
      // Icons.settings,
      // Icons.person
    ];

    return Scaffold(
      backgroundColor: Colors.deepPurple[100],

      /// APPBAR
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          "Custom TabBar",
          style: GoogleFonts.laila(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.all(5),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 60,
              color: Colors.red,
              child: Row(children: [
                InkWell(
                  child: AnimatedContainer(
                    padding: EdgeInsets.all(20),
                    duration: Duration(milliseconds: 300),
                    // decoration: BoxDecoration(
                    //             color: current == index
                    //                 ? Colors.white70
                    //                 : Colors.white54,
                    //             borderRadius: current == index
                    //                 ? BorderRadius.circular(15)
                    //                 : BorderRadius.circular(10),
                    //             border: current == index
                    //                 ? Border.all(
                    //                     color: Colors.deepPurpleAccent, width: 2)
                    //                 : null,
                    //           ),
                    child: Text("Tab1"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text("Tab2"),
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.add))
              ]),
            ),

            /// CUSTOM TABBAR
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.all(5),
                            width: 80,
                            height: 45,
                            decoration: BoxDecoration(
                              color: current == index
                                  ? Colors.white70
                                  : Colors.white54,
                              borderRadius: current == index
                                  ? BorderRadius.circular(15)
                                  : BorderRadius.circular(10),
                              border: current == index
                                  ? Border.all(
                                      color: Colors.deepPurpleAccent, width: 2)
                                  : null,
                            ),
                            child: Center(
                              child: Text(
                                items[index],
                                style: GoogleFonts.laila(
                                    fontWeight: FontWeight.w500,
                                    color: current == index
                                        ? Colors.black
                                        : Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                            visible: current == index,
                            child: Container(
                              width: 5,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color: Colors.deepPurpleAccent,
                                  shape: BoxShape.circle),
                            ))
                      ],
                    );
                  }),
            ),

            /// MAIN BODY
            Container(
              margin: const EdgeInsets.only(top: 30),
              width: double.infinity,
              height: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icons[current],
                    size: 200,
                    color: Colors.deepPurple,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    items[current],
                    style: GoogleFonts.laila(
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                        color: Colors.deepPurple),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
