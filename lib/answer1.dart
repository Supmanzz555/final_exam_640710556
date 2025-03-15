import 'package:flutter/material.dart';

class Answer1 extends StatelessWidget {
  const Answer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "โปรไฟล์ผู้ใช้",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.grey.shade900,
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 20,
            ),
            const CircleAvatar(
              radius: 65,
              backgroundColor: Colors.amber,
            ),
            const SizedBox(height: 16),
            const Text(
              "ชื่อผู้ใช้: Jonh Doe",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            const SizedBox(
              height: 2,
            ),
            const Text(
              "อีเมล: jonhdoe@example.com",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                  color: Color.fromARGB(255, 123, 123, 123)),
            ),
            const SizedBox(height: 12),

            const ListTile(
              contentPadding: EdgeInsetsDirectional.symmetric(horizontal: 45),
              leading: Icon(Icons.settings, color: Colors.blue),
              title: Text("การตั้งค่า", style: TextStyle(color: Colors.white , fontSize: 25)),
            ),

             const SizedBox(height: 10),

            const ListTile(
              contentPadding: EdgeInsetsDirectional.symmetric(horizontal: 45),
              leading: Icon(Icons.lock, color: Colors.blue),
              title: Text("เปลี่ยนรหัสผ่าน", style: TextStyle(color: Colors.white ,fontSize: 25)),
            ),

             const SizedBox(height: 10),

            const ListTile(
              contentPadding: EdgeInsetsDirectional.symmetric(horizontal: 45),
              leading: Icon(Icons.question_mark_sharp, color: Colors.blue),
              title: Text("ความเป็นส่วนตัว", style: TextStyle(color: Colors.white , fontSize: 25)),
            ),

             const SizedBox(height: 10),

            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("แก้ไขโปรไฟล์")),
                );
              },
              style: const ButtonStyle(
                fixedSize: WidgetStatePropertyAll(Size(150, 40)),
                backgroundColor: WidgetStatePropertyAll(Colors.black45),
              ),
              child: const Text(
                "แก้ไขโปรไฟล์",
                style: TextStyle(color: Color.fromARGB(255, 223, 155, 235)),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("ออกจากระบบ")),
                );
              },
              style: const ButtonStyle(
                fixedSize: WidgetStatePropertyAll(Size(150, 40)),
                backgroundColor: WidgetStatePropertyAll(Colors.black45),
              ),
              child: const Text(
                "ออกจากระบบ",
                style: TextStyle(color: Color.fromARGB(255, 223, 155, 235)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
