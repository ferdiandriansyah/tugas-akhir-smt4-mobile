import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFFFFFFFF),
          centerTitle: true,
          ),
      body: SafeArea(
        child: Stack(
          children: [
            // Background
            
            // List
            Padding(
              padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  // Body List
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 400,
                            height: 125,
                            decoration: BoxDecoration(
                              color: Color(0xFF2F9DF5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            // Isi Dalam List
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //  Nama Pemesan
                                children: [
                                  Text(
                                    'Pak Ferdi',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  // Alamat
                                  SizedBox(height: 5),
                                  Text(
                                    'Jl.AYani no.5864',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                  // Tanggal dan Icon Button
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    // Tanggal
                                    children: [
                                      Text(
                                        '08134567890',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                                      // Icon Button
                                      IconButton(
                                        icon: Icon(
                                          Icons.add_to_photos,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        onPressed: () async {
                                        Navigator.pushNamed(context, 'editdata');
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),            
          ],
        ),
      ),
    );
  }
}