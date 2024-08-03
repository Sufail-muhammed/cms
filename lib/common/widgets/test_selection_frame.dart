import 'package:flutter/material.dart';

class TestSelectionFrame extends StatefulWidget {
  const TestSelectionFrame({super.key});

  @override
  State<TestSelectionFrame> createState() => _TestSelectionFrameState();
}

class _TestSelectionFrameState extends State<TestSelectionFrame> {

  final List<bool> selectedItems = List.filled(5, false);

  final TextEditingController _searchController = TextEditingController();
  String searchQuery = '';

  final List<Map<String, dynamic>> items = [
    {'text': 'Haemoglobin', 'subtext': 'Complete blood count', 'number':  '₹500'},
    {'text': 'Vitamin B2', 'subtext': 'Complete vitamins', 'number':  '₹300'},
    {'text': 'Vitamin C', 'subtext': 'Complete vitamins', 'number':  '₹250'},
    {'text': 'HDL Cholesterol', 'subtext': 'Cholesterol', 'number':  '₹500'},
    {'text': 'Albumin', 'subtext': 'Liver & Gastrointestinal', 'number':  '₹500'},
  ];

  List<Map<String, dynamic>> get filteredItems => items
      .where((item) => item['text'].toLowerCase().contains(searchQuery.toLowerCase()))
      .toList();

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {
        searchQuery = _searchController.text;
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: Color(0xffF1FDFF),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          hint: const Text('Select test'),
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Color(0xff01BFE1),
            size: 24,
          ),
          items: [
            DropdownMenuItem<String>(
              enabled: false,
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF3F3F3),
                  hintText: 'Search test',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                ),
              ),
            ),
            ...filteredItems.map((item) {
              final index = filteredItems.indexOf(item);

              return DropdownMenuItem<String>(
                value: item['text'] as String,
                child: ListTile(
                  title: Text(item['text'] as String),
                  subtitle: Text(item['subtext'] as String,
                  style: TextStyle(
                    color: Color(0xFF01BFE1),
                  ),
              ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: 10),
                    Text(style: TextStyle(color: Color(0xff0867A6)),item['number'].toString()), SizedBox(width: 10,),

                      Container(
                        width: 13,
                        height: 13,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: selectedItems[index] ? Colors.blue : Color(0xff01BFE1),
                            width: 2,
                          ),
                        ),
                        child: selectedItems[index]
                            ? Center(
                          child: Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                          ),
                        )
                            : null,
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ],
          onChanged: (value) {},
        ),
      ),
    );
  }
}
