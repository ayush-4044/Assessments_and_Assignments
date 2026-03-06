import 'package:flutter/material.dart';



class ProfileProductScreen extends StatelessWidget {
  const ProfileProductScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, String>> products = [
      {
        "name": "iPhone 14",
        "price": "₹79,999",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfkWjZtcxfz2h2f5SF2zb-_Zhicliv1I5EDw&s"
      },
      {
        "name": "Smart Watch",
        "price": "₹4,999",
        "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3XWaiQmLE3PWZa8_g7tcGECTr0hWwHU7haw&s"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile & Products",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              color: Colors.blue.shade100,
              child: Column(
                children: const [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/4140/4140037.png",
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Ayush Patel",
                    style: TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "ayush@email.com",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Container(
                  margin:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.network(
                        products[index]["image"]!,
                        height: 70,
                        width: 70,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            products[index]["name"]!,
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            products[index]["price"]!,
                            style: const TextStyle(
                                fontSize: 16,
                                color: Colors.green),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),

            const SizedBox(height: 20),

            // ================= CUSTOM BUTTON =================
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Custom Button Clicked")),
                );
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                padding:
                const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    "Checkout",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}