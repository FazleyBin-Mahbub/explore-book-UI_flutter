import 'package:flutter/material.dart';
import 'package:flutter_practice/this%20months%20challenge/Explore%20Book%20Page/data/bookData.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mdi/mdi.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff151a37),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 15),
              child: Text(
                'Explore',
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 45,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                    'Books',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 30,
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  height: size.height / 14,
                  width: size.width * 0.5,
                  decoration: BoxDecoration(
                    color: Color(0xff1292f53),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Search',
                        style: GoogleFonts.raleway(
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            Container(
              height: size.height * 0.75,
              width: size.width,
              decoration: BoxDecoration(
                color: Color(0xff292f53),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 27,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    height: size.height / 4,
                    child: ListView.builder(
                      padding: EdgeInsets.only(left: 10),
                      itemCount: category.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            currentIndex = index;
                            setState(() {});
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              width: size.width * 0.29,
                              decoration: BoxDecoration(
                                color: index == currentIndex
                                    ? Color(0xff806fc0)
                                    : Color(0xff333b60),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(category[index].icon,
                                      size: 50, color: Colors.white),
                                  Text(
                                    category[index].text,
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 17,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: size.height / 3,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'Trending Books',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Mdi.dotsVertical,
                              size: 26,
                            ),
                          ],
                        ),
                        Container(
                          height: size.height / 4.6,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: books.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: size.width * 0.4,
                                  // height: size.height / 1,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(books[index].img),
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 2,
                                          spreadRadius: 1,
                                          color: Colors.black.withOpacity(0.1),
                                          offset: Offset(2.0, 7.0),
                                        )
                                      ]),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
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
