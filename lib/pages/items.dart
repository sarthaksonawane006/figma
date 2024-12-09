import 'package:flutter/material.dart';

class FoodMenuScreen extends StatefulWidget {
  @override
  _FoodMenuScreenState createState() => _FoodMenuScreenState();
}

class _FoodMenuScreenState extends State<FoodMenuScreen> {
  int selectedTabIndex = 0;

  final List<String> tabs = ["Starters", "Mains", "Sweets"];
  final Map<String, List<Map<String, String>>> items = {
    "Starters": [
      {
        "name": "Idli Sambar",
        "image":
            "https://lh4.googleusercontent.com/proxy/OA3ZtpzgAAEC2jEceQzAHzcsun5Fc-wVTR5hkGhXVB_hfFdZ1qkcCnOOFAotRSGABkDYZ5dDYMVhH6BFsLTOZ_KJB4s-wQJwVKPCpiVUaP_Cg-BP7B5sHZ5423aYdw"
      },
      {"name": "Appam", "image": "https://via.placeholder.com/150"},
    ],
    "Mains": [
      {"name": "Dosa", "image": "https://via.placeholder.com/150"},
      {"name": "Wada", "image": "https://via.placeholder.com/150"},
    ],
    "Sweets": [
      {"name": "Payasam", "image": "https://via.placeholder.com/150"},
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("South Indian Breakfast"),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {},
          ),
        ],
      ),
      body: Row(
        children: [
          // Left vertical section for tabs
          Container(
            width: 120,
            color: Colors.grey[200],
            child: ListView.builder(
              itemCount: tabs.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTabIndex = index;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                    margin: EdgeInsets.symmetric(vertical: 4),
                    decoration: BoxDecoration(
                      color: selectedTabIndex == index
                          ? Colors.pink[100]
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.pink[200],
                          child: Text((index + 1).toString()),
                        ),
                        SizedBox(width: 8),
                        Text(
                          tabs[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: selectedTabIndex == index
                                ? Colors.pink
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          // Right section for items
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(8),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: items[tabs[selectedTabIndex]]!.length,
              itemBuilder: (context, index) {
                final item = items[tabs[selectedTabIndex]]![index];
                return Card(
                  elevation: 4,
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.network(
                          item["image"]!,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              item["name"]!,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pink,
                              ),
                              child: Text("Add"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Price per plate: ₹240/Plate",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
              ),
              child: Text("Fill Details"),
            ),
          ],
        ),
      ),
    );
  }
}
