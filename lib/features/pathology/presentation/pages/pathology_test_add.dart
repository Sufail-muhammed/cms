import 'package:flutter/material.dart';
import '../../../../common/custom_dropdown.dart';
import '../../../../common/custom_text.dart';
import '../../../../common/sized_box/sized_box.dart';
import '../../../../common/widgets/test_selection_frame.dart';

class PathologyTestAdd extends StatefulWidget {
  const PathologyTestAdd({super.key});

  @override
  State<PathologyTestAdd> createState() => _PathologyTestAddState();
}

class _PathologyTestAddState extends State<PathologyTestAdd> {
  String selectedDoctor = 'Doctor';
  String testName = 'test';


  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Lab Test",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          style: ButtonStyle(
            minimumSize: MaterialStatePropertyAll(Size(40, 40)),
            backgroundColor: MaterialStatePropertyAll(Color(0xffebfafc)),
          ),
          onPressed: () {},
          icon: const Center(
            child: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff0867A6),
              size: 16,
            ),
          ),
          constraints: const BoxConstraints(
            maxHeight: 40,
            maxWidth: 40,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(text: "Doctor"),
              CustomDropdown(
                hint: "doctor",
                items: const [
                  'Dr. Sarah Thompson',
                  'Dr. Michael Anderson',
                  'Dr. Thomas',
                  'Dr. Devid',
                  'Dr. Jessica Lee'
                ],
                onChanged: (value) {
                  setState(() {
                    selectedDoctor = value!;
                  });
                },
                value: selectedDoctor,
              ),
              SizedBoxes.smallSizedBox,
              const CustomText(text: "Test"),
              TestSelectionFrame(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffF1FDFF),
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: Table(
                    columnWidths: const {
                      0: FlexColumnWidth(1),
                      1: FlexColumnWidth(1),
                      2: FlexColumnWidth(1),
                      3: FlexColumnWidth(1),
                      4: FlexColumnWidth(1),
                    },
                    children: const [
                      TableRow(
                        children: [
                          Text(
                            'Test No',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff01BFE1),
                            ),
                          ),
                          Text(
                            'Test Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff01BFE1),
                            ),
                          ),
                          Text(
                            'Report Heading',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff01BFE1),
                            ),
                          ),
                          Text(
                            'Charges',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff01BFE1),
                            ),
                          ),
                          Text(
                            '',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff01BFE1),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Text('1'),
                          Text('Haemoglobin'),
                          Text('Complete Blood Count'),
                          Text(
                            '₹1500',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0867A6),
                            ),
                          ),
                          Icon(Icons.delete,color: Color(0xff9DB2CE)),

                        ],
                      ),
                   TableRow(
                        children: [
                          SizedBox(height: 10),
                          SizedBox(),
                          SizedBox(),
                          SizedBox(),
                          SizedBox(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Text('13'),
                          Text('Vitamin B2'),
                          Text('Vitamins'),
                          Text(
                            '₹2500',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0867A6),
                            ),
                          ),
                          Icon(Icons.delete,color: Color(0xff9DB2CE)),

                        ],
                      ),  TableRow(
                        children: [
                          SizedBox(height: 10),
                          SizedBox(),
                          SizedBox(),
                          SizedBox(),
                          SizedBox(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Text('30'),
                          Text('Vitamin C'),
                          Text('Vitamins'),
                          Text(
                            '₹500',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0867A6),
                            ),
                          ),
                          Icon(Icons.delete,color: Color(0xff9DB2CE)),

                        ],
                      ),  TableRow(
                        children: [
                          SizedBox(height: 10),
                          SizedBox(),
                          SizedBox(),
                          SizedBox(),
                          SizedBox(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Text('24'),
                          Text('HDL Cholesterol'),
                          Text('Cholesterol'),
                          Text(
                            '₹500',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0867A6),
                            ),
                          ),
                          Icon(Icons.delete,color: Color(0xff9DB2CE)),

                        ],
                      ),  TableRow(
                        children: [
                          SizedBox(height: 10),
                          SizedBox(),
                          SizedBox(),
                          SizedBox(),
                          SizedBox(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Text('44'),
                          Text('Albumin'),
                          Text('Liver & Gastrointestinal'),
                          Text(
                            '₹1000',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0867A6),
                            ),
                          ),
                          Icon(Icons.delete,color: Color(0xff9DB2CE)),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Headings
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Text(
                            'Discount',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff01BFE1),
                            ),
                          ),
                        ),
                        SizedBoxes.smallSizedBox,
                        Expanded(
                          child: Text(
                            'Discount Type',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff01BFE1),
                            ),
                          ),
                        ),
                        SizedBoxes.smallSizedBox,
                        Expanded(
                          child: Text(
                            'Discount Amount',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff01BFE1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBoxes.smallSizedBox,
                    // Containers
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(5),

                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffF1FDFF),
                            ),
                            child: const Center(
                              child: Text(
                                '0',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                            ),
                          ),
                        ),
                        SizedBoxes.smallSizedBox,
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(5),

                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffF1FDFF),
                            ),
                            child: Center(
                              child: DropdownButton<String>(
                                hint: Center(
                                  child: const Text(
                                    'Amt',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 12),
                                  ),
                                ),
                                onChanged: (String? newValue) {},
                                items: <String>['amt1', 'amt2', 'amt3']
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                isExpanded: true,
                                underline: const SizedBox(),
                              ),
                            ),
                          ),
                        ),
                        SizedBoxes.smallSizedBox,
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffF1FDFF),
                            ),
                            child: const Center(
                              child: Text(
                                '₹0.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
,
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffF1FDFF),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sub Total :'),
                        Text('₹24000'),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Grand Total :',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff0867A6),
                          ),
                        ),
                        Text(
                          '₹24000',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff0867A6),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBoxes.largeSizedBox,
              Center(
                child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor:
                      MaterialStatePropertyAll(Color(0xff01BFE1))),
                  onPressed: () {},
                  child: const Text(
                    "SUBMIT",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
