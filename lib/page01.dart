import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    // ข้อมูลเมนูอาหาร
    final List<Map<String, String>> foodList = [
      {"name": "ข้าวผัด", "route": "/page2", "image": "images/ข้าวผัด.jpg", "icon": "🍛"},
      {"name": "ต้มยำกุ้ง", "route": "/page03", "image": "images/ต้มยำกุ้ง.jpg", "icon": "🍤"},
      {"name": "แกงฮังเล", "route": "/page4", "image": "images/แกงฮังเล.jpg", "icon": "🍲"},
      {"name": "ส้มตำ", "route": "/page05", "image": "images/ส้มตำ.jpg", "icon": "🥗"},
      {"name": "ยำทะเล", "route": "/page6", "image": "images/ยำทะเล.jpg", "icon": "🦀"},
    ];

    // ข้อมูลของว่าง
    final List<Map<String, String>> snackList = [
      {"name": "ขนมครก", "route": "/page07", "image": "images/ขนมครก.jpg", "icon": "🍡"},
      {"name": "ติ่มซำ", "route": "/page8", "image": "images/ติ่มซำ.jpg", "icon": "🥟"},
      {"name": "นักเก็ต", "route": "/page09", "image": "images/นักเก็ต.jpg", "icon": "🍗"},
      {"name": "ขนมปังสังขยา", "route": "/page10", "image": "images/ขนมปังสังขยา.jpg", "icon": "🍞"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("เมนูหลัก"),
        backgroundColor: Colors.pink[200], // สีหัวข้อ AppBar
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ส่วนอาหาร
              Text(
                "อาหาร",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepOrange),
              ),
              SizedBox(height: 10),
              // ignore: unnecessary_to_list_in_spreads
              ...foodList.map((food) => _buildMenuItem(context, food)).toList(),
              SizedBox(height: 30),

              // ส่วนของว่าง
              Text(
                "ของว่าง",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
              ),
              SizedBox(height: 10),
              // ignore: unnecessary_to_list_in_spreads
              ...snackList.map((snack) => _buildMenuItem(context, snack)).toList(),
            ],
          ),
        ),
      ),
    );
  }

  // ฟังก์ชันสร้างรายการเมนู
  Widget _buildMenuItem(BuildContext context, Map<String, String> item) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(item["image"]!), // รูปภาพเมนู
        ),
        title: Text(item["name"]!),
        subtitle: Text(item["icon"]!, style: TextStyle(fontSize: 20)), // ไอคอนใต้เมนู
        trailing: Icon(Icons.arrow_forward, color: Colors.pink), // ลูกศรนำทาง
        onTap: () {
          Navigator.pushNamed(context, item["route"]!);
        },
      ),
    );
  }
}
