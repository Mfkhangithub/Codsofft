import 'package:flutter/material.dart';

class DetailsAlllist extends StatelessWidget {
  final String title;
  final String summary;

  DetailsAlllist({Key? key, required this.title, required this.summary})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String cleanedSummary = _stripHtmlTags(summary);
    List<String> sentences = cleanedSummary.split('.');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 55, 68),
        centerTitle: true,
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Title: $title',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                'Description:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: sentences.asMap().entries.map((entry) {
                  final index = entry.key;
                  final sentence = entry.value;

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        if (index < sentences.length - 1) // Check if it's not the last sentence
                          Text('• ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                        SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            sentence.isNotEmpty ? sentence.trim() + '.' : '',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
              // Add more details or widgets as needed
            ],
          ),
        ),
      ),
    );
  }

  String _stripHtmlTags(String htmlString) {
    RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
    return htmlString.replaceAll(exp, '');
  }
}
