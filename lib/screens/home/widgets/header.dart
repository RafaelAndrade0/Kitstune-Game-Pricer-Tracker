import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 35,
        bottom: 15,
        left: 20,
        right: 20,
      ),
      // padding: EdgeInsets.symmetric(
      //   vertical: 35,
      //   horizontal: 20,
      // ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Kitsune',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[800],
                backgroundImage: NetworkImage(
                  'https://avatarfiles.alphacoders.com/170/170299.jpg',
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.4),
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintStyle: TextStyle(color: Colors.grey[400]),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey[400],
                ),
                // border: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(8),
                // ),
                hintText: 'Search',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
