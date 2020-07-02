import 'package:flutter/material.dart';

class BottomGames extends StatelessWidget {
  const BottomGames({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xfffefffe),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              spreadRadius: 2,
              offset: const Offset(0, 1),
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
                      color: const Color(0xff080509)),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Ver mais',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: const Color(0xff0171ce),
                        letterSpacing: 1,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: const Color(0xff0171ce),
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
                  children: const <Widget>[
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(right: 10, top: 10),
            width: 130.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(cardImage),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(18),
              ),
            ),
          ),
        ),
        Text(
          'Control',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        Row(
          children: <Widget>[
            Text(
              'R\$80,00',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w900,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                'R\$150,00',
                style: TextStyle(decoration: TextDecoration.lineThrough),
              ),
            ),
          ],
        )
      ],
    );
  }
}
