import 'package:flutter/material.dart';

class BottomGames extends StatelessWidget {
  const BottomGames({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // height: 300,
        margin: EdgeInsets.only(top: 15),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0xFFfefffe),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              spreadRadius: 2,
              offset: Offset(0, 1),
              color: Colors.black.withOpacity(0.1),
            ),
          ],
        ),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Outras Ofertas',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Color(0XFF080509)),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Ver mais',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Color(0XFF0171ce),
                        letterSpacing: 1,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Color(0XFF0171ce),
                    )
                  ],
                )
              ],
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    BottomGameCard(
                      cardImage:
                          'https://mfiles.alphacoders.com/810/810953.jpg',
                    ),
                    BottomGameCard(
                      cardImage:
                          'https://i.pinimg.com/originals/2d/90/00/2d90002edd607464a1baee3c35cf319f.jpg',
                    ),
                    BottomGameCard(
                      cardImage:
                          'https://mfiles.alphacoders.com/794/794662.png',
                    ),
                    BottomGameCard(
                      cardImage: 'https://wallpapercave.com/wp/wp3277347.jpg',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomGameCard extends StatelessWidget {
  final String cardImage;
  const BottomGameCard({
    @required this.cardImage,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10, top: 10),
      width: 130.0,
      decoration: BoxDecoration(
        image:
            DecorationImage(image: NetworkImage(cardImage), fit: BoxFit.cover),
        // color: Colors.red,
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
      ),
    );
  }
}
