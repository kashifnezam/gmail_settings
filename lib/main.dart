import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var gmailLanguages = [
      "Arabic",
      "Bulgarian",
      "Chinese (Simplified)",
      "Chinese (Traditional)",
      "Croatian",
      "Czech",
      "Danish",
      "Dutch",
      "English (UK)",
      "English (US)",
      "Estonian",
      "Finnish",
      "Filipino",
      "French",
      "German",
      "Greek",
      "Hebrew",
      "Hindi",
      "Hungarian",
      "Indonesian",
      "Italian",
      "Japanese",
      "Korean",
      "Latvian",
      "Lithuanian",
      "Malay",
      "Macedonian",
      "Norwegian",
      "Polish",
      "Portuguese (Brazil)",
      "Romanian",
      "Russian",
      "Serbian",
      "Slovak",
      "Slovenian",
      "Spanish",
      "Swedish",
      "Thai",
      "Turkish",
      "Ukrainian",
      "Vietnamese",
    ];
    String myVal = "English (UK)";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Gmail Settings",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Settings",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(42.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    left: BorderSide.none,
                    right: BorderSide.none,
                    top: BorderSide.none,
                    bottom: BorderSide(
                      width: 2,
                      color: Colors.blue,
                    ),
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "General",
                    style: TextStyle(
                        color: Colors.blue[400],
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const Divider(
                thickness: 0.1,
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Language:",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 250,
                      ),
                      const Text(
                        "Gmail display language:",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        width: 500,
                        height: 25,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(3))),
                        child: DropdownButton<String>(
                          dropdownColor: null,
                          iconSize: 1,
                          isDense: true,
                          elevation: 1,
                          icon: null,
                          padding: const EdgeInsets.all(3),
                          value: myVal,
                          items: gmailLanguages.map((String item) {
                            return DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (selected) {
                            setState(() {
                              myVal = selected!;
                            });
                          },
                        ),
                      ),
                      const Text(
                        "Change language settings for other Google products",
                        style: TextStyle(fontSize: 14, color: Colors.blue),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 316),
                    child: Text(
                      "Show all language options",
                      style: TextStyle(fontSize: 14, color: Colors.blue),
                    ),
                  ),
                ],
              ),
              const Divider(
                thickness: 0.6,
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Phone numbers:",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 212.5,
                  ),
                  const Text(
                    "Default country code:",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: 400,
                    height: 22,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(3))),
                    child: DropdownButton<String>(
                      dropdownColor: null,
                      iconSize: 1,
                      isDense: true,
                      elevation: 1,
                      icon: null,
                      padding: const EdgeInsets.only(
                        bottom: 5,
                        left: 3,
                        right: 3,
                      ),
                      value: "India",
                      items: [
                        "United States",
                        "United Kingdom",
                        "Canada",
                        "Australia",
                        "India",
                      ].map((String item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (selected) {
                        setState(() {
                          myVal = selected!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const Divider(
                thickness: 0.6,
                height: 25,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Default text style:",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "(Use the 'Remove formatting' button on the toolbar to reset the default text style)",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(230, 0, 0, 0)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 64,
                  ),
                  SizedBox(
                    height: 80,
                    width: 420,
                    child: Card(
                      surfaceTintColor: Colors.white,
                      shape: const BeveledRectangleBorder(),
                      elevation: 15,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  // width: 100,
                                  height: 22,
                                  decoration: BoxDecoration(
                                      border: Border.all(width: 1),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(3))),
                                  child: DropdownButton<String>(
                                    dropdownColor: null,
                                    iconSize: 1,
                                    isDense: true,
                                    elevation: 1,
                                    icon: null,
                                    padding: const EdgeInsets.only(
                                      bottom: 5,
                                      left: 3,
                                      right: 3,
                                    ),
                                    value: "Sans Serif",
                                    items: [
                                      "Sans Serif",
                                      "Serif",
                                      "Fixeds Width",
                                      "Wide",
                                      "Narrow",
                                      "Verdana"
                                    ].map((String item) {
                                      return DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (selected) {
                                      setState(() {
                                        myVal = selected!;
                                      });
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  width: 17,
                                ),
                                DropdownButton(
                                  items: const [],
                                  icon: const Icon(
                                    Icons.text_fields,
                                    color: Colors.black54,
                                  ),
                                  onChanged: null,
                                ),
                                const SizedBox(
                                  width: 17,
                                ),
                                DropdownButton(
                                  items: const [],
                                  icon: const Icon(
                                    Icons.text_format,
                                    color: Colors.black54,
                                  ),
                                  onChanged: null,
                                ),
                                const SizedBox(
                                  width: 17,
                                ),
                                DropdownButton(
                                  items: const [],
                                  icon: const Icon(
                                    Icons.font_download_off,
                                    color: Colors.black54,
                                  ),
                                  onChanged: null,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "This is what your body text will look like.",
                              style: TextStyle(
                                fontSize: 12.5,
                                color: Color.fromARGB(230, 0, 0, 0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(
                thickness: 0.6,
                height: 25,
              ),
              Row(
                children: [
                  const Text(
                    "Stars",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 287),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "Drag the stars between the lists. ",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                                  "The stars will rotate in the order shown below when you click successively. \nTo learn the name of a star for search, hover your mouse over the image.",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(220, 0, 0, 0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Row(
                        children: [
                          Text(
                            "Presets: ",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(220, 0, 0, 0),
                            ),
                          ),
                          SizedBox(width: 40),
                          Text(
                            "1 star",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 40),
                          Text(
                            "4 stars",
                            style: TextStyle(fontSize: 14, color: Colors.blue),
                          ),
                          SizedBox(width: 40),
                          Text(
                            "all stars",
                            style: TextStyle(fontSize: 14, color: Colors.blue),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          const Text(
                            "In use: ",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 61),
                          Icon(
                            Icons.star,
                            color: Colors.orange[300],
                            size: 19,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            "Not in use: ",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 35),
                          Icon(
                            Icons.star,
                            color: Colors.orange[300],
                            size: 19,
                          ),
                          const SizedBox(width: 20),
                          Icon(
                            Icons.star,
                            color: Colors.pink[300],
                            size: 19,
                          ),
                          const SizedBox(width: 20),
                          Icon(
                            Icons.star,
                            color: Colors.purple[300],
                            size: 19,
                          ),
                          const SizedBox(width: 20),
                          Icon(
                            Icons.star,
                            color: Colors.blue[300],
                            size: 19,
                          ),
                          const SizedBox(width: 20),
                          Icon(
                            Icons.star,
                            color: Colors.green[300],
                            size: 19,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const Divider(
                thickness: 0.6,
                height: 25,
              ),
              Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Signature",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "(appended at the end of all outgoing \nmessages)",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(220, 0, 0, 0),
                        ),
                      ),
                      Text(
                        "Learn more",
                        style: TextStyle(fontSize: 14, color: Colors.blue),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 99,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "No signatures",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration:
                            BoxDecoration(border: Border.all(width: 0.1)),
                        child: TextButton(
                            onPressed: () {},
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.add,
                                ),
                                Text(
                                  "Create new",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.blue),
                                ),
                              ],
                            )),
                      )
                    ],
                  )
                ],
              ),
              const Divider(
                thickness: 0.6,
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
