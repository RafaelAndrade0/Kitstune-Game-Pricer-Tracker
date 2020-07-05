import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrailersImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xfffdfdfd),
      margin: const EdgeInsets.only(top: 8),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .20,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 160.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://blog.playstation.com/tachyon/sites/4/2018/03/07_nier.jpg'),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
          Container(
            width: 160.0,
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(
                    right: 5,
                    left: 5,
                    bottom: 8,
                  ),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://proximonivel.pt/wp-content/uploads/2017/04/nier-automata-pn-noticia-3.jpg',
                      ),
                    ),
                    color: Colors.purple,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * .09,
                ),
                Container(
                  margin: const EdgeInsets.only(
                    right: 5,
                    left: 5,
                    // bottom: 5,
                  ),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT8oU0U7INyW6OPbDKw_2BTzeFWNlm46dYv3g&usqp=CAU',
                      ),
                    ),
                    color: Colors.pink,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * .09,
                ),
              ],
            ),
          ),
          Container(
            width: 160.0,
            decoration: BoxDecoration(
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://www.futurebehind.com/wp-content/uploads/2019/03/NieR-Automata_201604_SS_2B9SA2_01_ONLINE.jpg',
                ),
              ),
              color: Colors.green,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
