import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FoodAndSnackApp(),
  ));
}

class FoodAndSnackApp extends StatelessWidget {
  const FoodAndSnackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ร้านอาหารน้องถ่าน'),
        backgroundColor: Colors.purple[200],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // ส่วนอาหาร
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'อาหารแนะนำ',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),

            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _foodItem(
                      'https://scontent-bkk1-1.xx.fbcdn.net/v/t39.30808-6/455356371_3768267923412999_2797470450728805737_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=aa7094&_nc_eui2=AeG9WB9KSorpwZ9-dZEC6F4E2VW17gWkYkDZVbXuBaRiQKzk9F6SSmFNoMl744K64JHogUkBvmCEkWmcsIbzekUE&_nc_ohc=N0Q9NVtrKT0Q7kNvgGMMjmJ&_nc_zt=23&_nc_ht=scontent-bkk1-1.xx&_nc_gid=A4j7f6xnM4Oc2HgmpnjPPvP&oh=00_AYDzswLc38EeNvpvfYVdDfLJpq5_dFhviNorodB50r2Sjw&oe=673893F4',
                      'ข้าวผัด',
                      context),
                  _foodItem(
                      'https://scontent-bkk1-2.xx.fbcdn.net/v/t1.6435-9/59879576_1060321497497461_7300709229352976384_n.jpg?stp=dst-jpg_p180x540&_nc_cat=103&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeHX8ntrKJ5-bdqVeGy9SCDrvBiT10URIxC8GJPXRREjEOYQHt2wshSaRNt663R2wkHfea213N-mpfTOoN7rElxY&_nc_ohc=K7FKTf0Yq0IQ7kNvgFsR1VK&_nc_zt=23&_nc_ht=scontent-bkk1-2.xx&_nc_gid=AmIOqFd2XWJmROPu_LOhO3M&oh=00_AYBa3jco1Ww8dAAoSKgPs5R6AWs_Ak9_B2fdtluBC0lswA&oe=675A2273',
                      'ต้มยำกุ้ง',
                      context),
                  _foodItem(
                      'https://scontent-bkk1-2.xx.fbcdn.net/v/t39.30808-6/300835023_503635711765924_4603401074820300015_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeEi_EXosskgw_mnBDdWHQTnqqP5mZlv8-Kqo_mZmW_z4kaZud0zySlBrBgnUj_bchxv8HYoxIhvxYR6uTjaHIgu&_nc_ohc=Y1Is7dlVwF4Q7kNvgFlpa-j&_nc_zt=23&_nc_ht=scontent-bkk1-2.xx&_nc_gid=A0Aw4NqZg0UDFCmCRIIDKzI&oh=00_AYA-M9pmuUiKjTzc5XoZQjOLpyJbJ97m0Otmy5YH0S1lfQ&oe=6738956F',
                      'แกงฮังเล',
                      context),
                  _foodItem(
                      'data:image/jpeg;base64,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',
                      'ส้มตำ',
                      context),
                  _foodItem(
                      'https://scontent-bkk1-2.xx.fbcdn.net/v/t39.30808-6/305272928_455253016648980_5968450035637348583_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeFyTol1c8oQrhOYixwuQQIZ43iFw_YxS8LjeIXD9jFLwnI3o0izcml_XCifboF_qjmeN3P921ARzEtsn6mLboIu&_nc_ohc=XtgG0ec91PwQ7kNvgEMw81q&_nc_zt=23&_nc_ht=scontent-bkk1-2.xx&_nc_gid=ARgvobXCoG-UZE2eKMCcSvV&oh=00_AYAk1Up1nEsvsA-EuYNin1aybJ3QzkVLPOZlY_-3oQqR-g&oe=67388802',
                      'ยำทะเล',
                      context),
                ],
              ),
            ),

            SizedBox(height: 30),

            // ส่วนของว่าง
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'ของว่างแนะนำ',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _snackItem(
                      'https://scontent-bkk1-1.xx.fbcdn.net/v/t39.30808-6/278231357_135772125691236_1151168430232808784_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeHcsGLstS6U7ikjzF_10Gk6QECuGLJvWFVAQK4Ysm9YVVrNXmIowp3TMnWINgoXDVIsKxrlmNnsu8UEUqcTIMut&_nc_ohc=aus7NgNzav0Q7kNvgFssChP&_nc_zt=23&_nc_ht=scontent-bkk1-1.xx&_nc_gid=AqzHdM0gM7T51-9PgF7RVms&oh=00_AYDkm1kr3MzZWVnZJ0L_IVzHF7o41heS6jGKxm_21Lap6A&oe=6738A9DA ',
                      'ขนมครก',
                      context),
                  _snackItem(
                      'https://scontent-bkk1-1.xx.fbcdn.net/v/t1.6435-9/131472129_3504703826274029_7318697516420686215_n.png?stp=dst-png_p180x540&_nc_cat=106&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeEqAoikQwph8ncAqSsz8LFasaI76-3IL3axojvr7cgvdlw_wabK9ren3_u-N_QFWyZnCKtPXw3Y4O9bUWxPY5X9&_nc_ohc=Ek7fs1QGhFQQ7kNvgHqooHq&_nc_zt=23&_nc_ht=scontent-bkk1-1.xx&_nc_gid=Axxe1M91aJ6jIgZCBznfzwX&oh=00_AYDwAzXjo_1C91s9Pbrqjf-O6nh3-TlFLgGpXH9qUyYgyg&oe=675A5559 ',
                      'ขนมจีบ',
                      context),
                  _snackItem(
                      'https://scontent-bkk1-2.xx.fbcdn.net/v/t39.30808-6/305415816_609009290917525_6736907346926249580_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeFeBcFHfThzxchWTmGOD_c7Ch_xr7xW82QKH_GvvFbzZIx8LDIsQEltZmxW3XFN54H3FY4voXC332muayczK-j7&_nc_ohc=bvSVtXac2CsQ7kNvgHH15Zz&_nc_zt=23&_nc_ht=scontent-bkk1-2.xx&_nc_gid=A5uj_Kv_ScTOhmNeated7uD&oh=00_AYDsYNJVSaHLukoSHpxzR2rap18Tc_8k1I9eZ9-NfDz7Eg&oe=67389C58 ',
                      'เปาะเปี๊ยะ',
                      context),
                  _snackItem(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS08MOPdsjfjhL8NA5NhfChdPYAvX4sJs8t0A&s ',
                      'เกี๊ยวทอด',
                      context),
                  _snackItem(
                      'https://scontent-bkk1-2.xx.fbcdn.net/v/t39.30808-6/406775435_18401528230027296_4610293317037104377_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeF9Dggok_gsRBuu8tUqSm9AzH-j6m-A5ODMf6Pqb4Dk4J3-enP51PjU9j_zgMtoyJhLouSA0YRW7tRWi5_N3nSU&_nc_ohc=fjjsREWXnhYQ7kNvgE_h6Dk&_nc_zt=23&_nc_ht=scontent-bkk1-2.xx&_nc_gid=Aqgt_HjFkErlVnhuYLLTLp1&oh=00_AYD74IK_HH9TQwM-X8CVSr334nPehgl_fRiSIR5asHN9fA&oe=67388689 ',
                      'ขนมปังสังขยาโทสต์',
                      context),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ฟังก์ชันสำหรับลิงค์ไปยังหน้าอื่น
          if (kDebugMode) {
            print("ไปหน้าต่อไป");
          }
        },
        backgroundColor: Colors.green[400],
        child: Icon(Icons.arrow_forward),
      ),
    );
  }

  // ฟังก์ชันสร้าง item ของอาหาร
  Widget _foodItem(String imageUrl, String name, BuildContext context) {
    return GestureDetector(
      onTap: () {
        // ลิงค์ไปยังหน้ารายละเอียดอาหาร
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FoodDetailPage(foodName: name),
          ),
        );
      },
      child: Container(
        width: 150,
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Image.network(imageUrl, width: 150, height: 150, fit: BoxFit.cover),
            SizedBox(height: 8),
            Text(name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                // ลิงค์ไปยังหน้ารายละเอียดอาหาร
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodDetailPage(foodName: name),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // ฟังก์ชันสร้าง item ของของว่าง
  Widget _snackItem(String imageUrl, String name, BuildContext context) {
    return GestureDetector(
      onTap: () {
        // ลิงค์ไปยังหน้ารายละเอียดของว่าง
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SnackDetailPage(snackName: name),
          ),
        );
      },
      child: Container(
        width: 150,
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Image.network(imageUrl, width: 150, height: 150, fit: BoxFit.cover),
            SizedBox(height: 8),
            Text(name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                // ลิงค์ไปยังหน้ารายละเอียดของว่าง
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SnackDetailPage(snackName: name),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FoodDetailPage extends StatelessWidget {
  final String foodName;

  const FoodDetailPage({super.key, required this.foodName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$foodName รายละเอียด'),
      ),
      body: Center(
        child: Text('รายละเอียดของ $foodName'),
      ),
    );
  }
}

class SnackDetailPage extends StatelessWidget {
  final String snackName;

  const SnackDetailPage({super.key, required this.snackName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$snackName รายละเอียด'),
      ),
      body: Center(
        child: Text('รายละเอียดของ $snackName'),
      ),
    );
  }
}
