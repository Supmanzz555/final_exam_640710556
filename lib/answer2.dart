// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Answer2 extends StatefulWidget {
  const Answer2({super.key});

  @override
  Answer2State createState() => Answer2State();
}

class Answer2State extends State<Answer2> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _namecontoller = TextEditingController();
  String? _selectedValue;
  bool _ischecked = false;
  String? _type = "ปกติ";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "คำนวณค่าจัดส่ง",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: _namecontoller,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: "น้ำหนักสินค้า (ก.ก.):",
                labelStyle: TextStyle(color: Colors.white),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "กรุณากรอกน้ำหนักสินค้า";
                }
                return null;
              },
              onChanged: (value) {
                print(value);
              },
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField(
              //add dropdown bg color
              dropdownColor: const Color.fromARGB(255, 52, 51, 51),
              decoration: const InputDecoration(
                labelText: "เลือกระยะทาง:",
                labelStyle: TextStyle(color: Colors.white),
              ),
              value: _selectedValue,

              style: const TextStyle(color: Colors.white),
              items: const [
                DropdownMenuItem(
                  value: "ต่างประเทศ",
                  child: Text(
                    "ต่างประเทศ",
                  ),
                ),
                DropdownMenuItem(
                  value: "ในเมือง",
                  child: Text("ในเมือง"),
                ),
                DropdownMenuItem(
                  value: "ต่างจังหวัด",
                  child: Text("ต่างจังหวัด"),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                });
              },
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                CheckboxListTile(
                  title: const Text(
                    "แพ็คกิ้งพิเศษ (+20 บาท)",
                    style: TextStyle(color: Colors.white),
                  ),
                  value: _ischecked,
                  onChanged: (value) {
                    setState(() {
                      _ischecked = value!;
                    });
                  },
                ),

                const SizedBox(height: 5),
                CheckboxListTile(
                  title: const Text(
                    "ประกันพัสดุ (+50 บาท)",
                    style: TextStyle(color: Colors.white),
                  ),
                  value: _ischecked,
                  onChanged: (value) {
                    setState(() {
                      _ischecked = value!;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                RadioListTile(
                    title: const Text(
                      "ปกติ",
                      style: TextStyle(color: Colors.white),
                    ),
                    value: "ปกติ",
                    groupValue: _type,
                    onChanged: (value) {
                      setState(() {
                        _type = value.toString();
                      });
                    }),
                const SizedBox(height: 5),
                RadioListTile(
                    title: const Text(
                      "ด่วน",
                      style: TextStyle(color: Colors.white),
                    ),
                    value: "ด่วน",
                    groupValue: _type,
                    onChanged: (value) {
                      setState(() {
                        _type = value.toString();
                      });
                    }),
                const SizedBox(height: 5),
                RadioListTile(
                    title: const Text(
                      "ด่วนพิเศษ",
                      style: TextStyle(color: Colors.white),
                    ),
                    value: "ด่วนพิเศษ",
                    groupValue: _type,
                    onChanged: (value) {
                      setState(() {
                        _type = value.toString();
                      });
                    }),
              ],
            ),
            ElevatedButton(
              onPressed: () {
              },
              style: const ButtonStyle(
                fixedSize: WidgetStatePropertyAll(Size(150, 40)),
                backgroundColor: WidgetStatePropertyAll(Color.fromARGB(115, 171, 169, 169)),
              ),
              child: const Text(
                "คำนวณราคา",
                style: TextStyle(color: Color.fromARGB(255, 223, 155, 235)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
