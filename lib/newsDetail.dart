import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_upwork/sizeConfigh.dart';

class NewsDetail extends StatefulWidget {
  const NewsDetail({super.key});

  @override
  State<NewsDetail> createState() => _NewsDetailState();
}

class _NewsDetailState extends State<NewsDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.blockSizeHorizontal * 4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical * 5,
            ),

            /// search filter api
            Container(
              height: SizeConfig.blockSizeVertical * 6.5,
              width: SizeConfig.screenWidth,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'search for a word to learn a sign',
                  focusColor: Colors.black,
                  suffixIcon: Icon(Icons.search_outlined),
                  suffixIconColor: Colors.blueAccent,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: SizeConfig.blockSizeVertical * 3,
            ),

            /// text Today
            Text(
              'What\'s New Today',
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                fontSize: SizeConfig.fontSize * 3,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 3,
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 60,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: SizeConfig.blockSizeHorizontal * 5,
                  );
                },
                itemBuilder: (context, index) {
                  return Hero(tag: 'dash', child: buildCard(index));
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildCard(int index) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: SizeConfig.blockSizeVertical * 50,
            width: SizeConfig.blockSizeHorizontal * 80,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset('images/News.png'),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.blockSizeHorizontal * 8,
              top: SizeConfig.blockSizeVertical * 2,
            ),
            child: Text(
              'Title',
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                fontSize: SizeConfig.fontSize * 1,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.blockSizeHorizontal * 8,
            ),
            child: Text(
              'Author',
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                fontSize: SizeConfig.fontSize * 1,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      );
}
