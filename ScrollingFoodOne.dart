import 'package:flutter/material.dart';



class ScrollingFoodOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(scrollDirection: Axis.horizontal, child: 
    Row(
          children: [
            ItemCard(),
            ItemCard2(),
          ],
        ),
      
    );
  }
}

// Below are dishes

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 20,
                  color: Color(0xFFB0CCE1).withOpacity(0.3))
            ]),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("Assets/Images/avocadotoast.jpg"),
                  Text(
                    "Avocado Toast",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    "Enjoy this delicious recipe",
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                  ),
                  Text("from Little Italy.",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 12))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemCard2 extends StatelessWidget {
  const ItemCard2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 20,
                  color: Color(0xFFB0CCE1).withOpacity(0.3))
            ]),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("Assets/Images/fruttidimare.jpg"),
                  Text(
                    "Frutti Di Mare",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    "Taste the ocean here",
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                  ),
                  Text("at Little Italy.",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 12))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


