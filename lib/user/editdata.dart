import 'package:flutter/material.dart';

class EditdataWidget extends StatefulWidget {
  const EditdataWidget({super.key});

  @override
  State<EditdataWidget> createState() => _EditdataState();
}

class _EditdataState extends State<EditdataWidget> {
  TextEditingController datetimeinput = TextEditingController();
  @override
  void initState() {
    datetimeinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFFFFFFF),
        elevation: 0,
        title: Text(
          "Edit Data",
          style: TextStyle(color: Color(0xFF2F9DF5)),
              //fontWeight: FontWeight.bold, color: Color(0xFFF9683A),
        ),
        leading: Container(),
      ),
      // Body
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFFFFFFF),
                ),
                // Nama Pesanan
                child: TextFormField(
                  style: TextStyle(color: Color(0xFFFFFFFF)),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF2F9DF5))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0x00FFFFFF))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Nama Lengkap",
                      hintStyle: TextStyle(color: Color(0xFF2F9DF5)),
                      labelText: "Nama Lengkap",
                      labelStyle: TextStyle(color: Color(0xFF2F9DF5)),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15)),
                ),
              ),
              // Alamat
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFFFFFFF),
                ),
                // form alamat
                child: TextFormField(
                  style: TextStyle(color: Color(0xFFFFFFFF)),
                  maxLines: 3,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF2F9DF5))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF2F9DF5))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      hintText: "Alamat",
                      hintStyle: TextStyle(color: Color(0xFF2F9DF5)),
                      labelText: "Alamat",
                      labelStyle: TextStyle(color: Color(0xFF2F9DF5)),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15)),
                ),
              ),
              // no.hp
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFFFFFFF),
                ),
                // form no.hp
                child: TextFormField(
                  style: TextStyle(color: Color(0xFFFFFFFF)),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF2F9DF5))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF2F9DF5))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "No.Handphone",
                      hintStyle: TextStyle(color: Color(0xFF2F9DF5)),
                      labelText: "No.Handphone",
                      labelStyle: TextStyle(color: Color(0xFF2F9DF5)),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15)),
                  keyboardType: TextInputType.number,
                ),
              ),
              // deskripsi
              // SizedBox(
              //   height: 15,
              // ),
              // Container(
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     color: Color(0xFF676B77),
              //   ),
              //   // deskripsi
              //   child: TextFormField(
              //     style: TextStyle(color: Color(0xFFFFFFFF)),
              //     maxLines: 3,
              //     decoration: InputDecoration(
              //         focusedBorder: OutlineInputBorder(
              //             borderSide: BorderSide(color: Color(0xFFFFFFFF))),
              //         enabledBorder: OutlineInputBorder(
              //             borderSide: BorderSide(color: Color(0x00FFFFFF))),
              //         border: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(10)),
              //         hintText: "Deskripsi",
              //         hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
              //         labelText: "Deskripsi",
              //         labelStyle: TextStyle(color: Color(0XFFFFFFFF)),
              //         contentPadding:
              //             EdgeInsets.symmetric(horizontal: 15, vertical: 15)),
              //   ),
              // ),
              // tanggal
              // SizedBox(
              //   height: 15,
              // ),
              // Container(
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     color: Color(0xFF676B77),
              //   ),
              //   // tanggal
              //   child: TextFormField(
              //     style: TextStyle(color: Color(0xFFFFFFFF)),
              //     decoration: InputDecoration(
              //         focusedBorder: OutlineInputBorder(
              //             borderSide: BorderSide(color: Color(0xFFFFFFFF))),
              //         enabledBorder: OutlineInputBorder(
              //             borderSide: BorderSide(color: Color(0x00FFFFFF))),
              //         border: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(
              //           10,
              //         )),
              //         hintText: "Tanggal",
              //         hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
              //         labelText: "Tanggal",
              //         labelStyle: TextStyle(color: Color(0XFFFFFFFF)),
              //         contentPadding:
              //             EdgeInsets.symmetric(horizontal: 15, vertical: 15)),
              //     controller: datetimeinput,
              //     readOnly: true,
              //     onTap: () async {
              //       DateTime? pickedDate = await showDatePicker(
              //         context: context,
              //         initialDate: DateTime.now(),
              //         firstDate: DateTime(2020),
              //         lastDate: DateTime(2040),
              //       );
              //       if (pickedDate != null) {
              //         String formatDate =
              //             DateFormat('dd MMMM yyyy').format(pickedDate);
              //         setState(() {
              //           datetimeinput.text = formatDate;
              //         });
              //       } else {
              //         datetimeinput.text = "";
              //       }
              //     },
              //   ),
              // ),
              SizedBox(
                height: 30,
              ),
              // Button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0XFF676B77),
                          onPrimary: Color(0XFFFFFFFF),
                          minimumSize: Size(150, 40),
                          textStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.0),
                          shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          shadowColor: Color(0XFF000000)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Batal"),
                    ),
                  ),
                  // Button
                  Container(
                      // Button Simpan
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color(0XFF2F9DF5),
                              onPrimary: Color(0XFFFFFFFF),
                              minimumSize: Size(150, 40),
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0),
                              shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              shadowColor: Color(0XFF000000)),
                          onPressed: () {},
                          child: Text("Simpan"))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}