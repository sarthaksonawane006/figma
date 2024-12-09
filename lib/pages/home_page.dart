import 'package:flutter/material.dart';

class WeddingScreen extends StatefulWidget {
  @override
  State<WeddingScreen> createState() => _WeddingScreenState();
}

class _WeddingScreenState extends State<WeddingScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Two main tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text(
            "Wedding",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: "Bulk Food Delivery"),
              Tab(text: "Catering Service"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Tab 1: Bulk Food Delivery
            FoodDeliveryTab(),
            // Tab 2: Catering Services
            CateringServiceTab(),
          ],
        ),
      ),
    );
  }
}

class FoodDeliveryTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Sub-tabs for food categories
      child: Column(
        children: [
          TabBar(
            indicatorColor: Colors.pink,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: "ALL (8)"),
              Tab(text: "Breakfast"),
              Tab(text: "Lunch & Dinner"),
              Tab(text: "Snacks"),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                FoodCategoryList(),
                FoodCategoryList(),
                FoodCategoryList(),
                FoodCategoryList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CateringServiceTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Sub-tabs for catering categories
      child: Column(
        children: [
          TabBar(
            indicatorColor: Colors.pink,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: "ALL (8)"),
              Tab(text: "Breakfast"),
              Tab(text: "Lunch & Dinner"),
              Tab(text: "Snacks"),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                FoodCategoryList(),
                FoodCategoryList(),
                FoodCategoryList(),
                FoodCategoryList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FoodCategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        FoodCard(),
        SizedBox(height: 16),
        FoodCard(),
      ],
    );
  }
}

class FoodCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.asset(
                  "assets/images/dosa.png",
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "Best for Pooja",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Indian Soiree",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 8),
                Text(
                  "7 Categories & 12 Items",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "₹299/guest",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.orange),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white, padding: EdgeInsets.symmetric(horizontal: 16),
                        backgroundColor: Colors.purple,
                      ),
                      child: Text("Customise"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:myapk/widgets/drawer.dart';

// class HomePage extends StatelessWidget {
//   //final int days = 30;
//   //final String name = "Codepur";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.orange,
//         foregroundColor: Colors.white,
//         title: Center(child: Text("Welcome...! Order Now  ")),
//       ),
//       body: Center(
//         child: Container(
//           child: Image.asset(
//             "assets/images/dosa.png",
//             height: 200,
//             width: 200,
//             //fit: BoxFit.cover,
//             alignment: Alignment(0, -6),
//           ),
//         ),
//       ),
//       drawer: MyDrawer(),
//     );
//   }
// }


