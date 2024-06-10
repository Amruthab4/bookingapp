import 'package:flutter/material.dart';

class secondpage extends StatefulWidget {
  const secondpage({super.key});

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  String MaritalStatus = "";
  String Siblings = "";
  String MotherName = "";
  String FatherName = "";
  String Name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Name:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35)),
                  hintText: 'Enter your name',
                ),
                onChanged: (value) {
                  Name = (value);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "FatherName:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (value) {
                  FatherName = (value);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35)),
                  hintText: 'Enter details',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "MotherName:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (value) {
                  MotherName = (value);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35)),
                  hintText: 'Enter details',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Brother /SisterName:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (value) {
                  Siblings = (value);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35)),
                  hintText: 'Enter details',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "MaritalStatus:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              ListTile(
                title: const Text("single"),
                leading: Radio<String>(
                  value: "single",
                  groupValue: MaritalStatus,
                  onChanged: (value) {
                    setState(() {
                      MaritalStatus = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text("Married"),
                leading: SizedBox(
                  width: 100,
                  child: Radio<String>(
                    value: "Married",
                    groupValue: MaritalStatus,
                    onChanged: (value) {
                      setState(() {
                        MaritalStatus = value!;
                      });
                    },
                  ),
                ),
              ),
              GestureDetector(
                child: Center(
                  child: Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black.withOpacity(0.6)),
                      child: const Center(
                          child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white),
                      ))),
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Booking Successful'),
                        content: const Text(
                            'Your booking has been completed successfully.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => thirdPage(
                                    name: Name,
                                    father: FatherName,
                                    mother: MotherName,
                                    brother: Siblings,
                                    status: MaritalStatus,
                                  ),
                                ),
                              );
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class thirdPage extends StatefulWidget {
  final String name;
  final String father;
  final String mother;
  final String brother;
  final String status;
  const thirdPage(
      {super.key,
      required this.name,
      required this.father,
      required this.mother,
      required this.brother,
      required this.status});

  @override
  State<thirdPage> createState() => _thirdPageState();
}

class _thirdPageState extends State<thirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Booking Sucessful Check your details",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              " Name: ${widget.name}",
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            Text(
              " FatherName: ${widget.father}",
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            Text(
              " MotherName: ${widget.mother}",
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            Text(
              " Siblings: ${widget.brother}",
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            Text(
              " MaritalStatus: ${widget.status}",
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
