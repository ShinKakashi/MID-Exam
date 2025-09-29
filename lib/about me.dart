import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GRC'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20),

              // Profile picture
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.red, width: 4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image.network(
                    'https://yt3.googleusercontent.com/ytc/AIdro_kQFQKAvUvEKH9qCIpryzJgcPOvD2Sqa8oKy6LZqALHnw=s900-c-k-c0x00ffffff-no-rj',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 25),

              // Name and title
              Text(
                'Global Reciprocal Colleges',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),

              // About me card
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About GRC',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Global Reciprocal Colleges (GRC) is a private college in Caloocan, Philippines, founded in 2008 by businessman Vicente N. Ongtenco to provide affordable, values-based education and skills training to deserving Filipinos, especially the marginalized and less privileged.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[700],
                        height: 1.6,
                      ),
                    ),
    Text(
    'MISSION\n'
        'The mission of Global Reciprocal Colleges (GRC) is to create successful, socially responsible, and morally upright skilled workers and highly competent professionals through values-based quality education',
    style: TextStyle(
    fontSize: 16,
    color: Colors.grey[700],
    height: 1.6,
    ),
    ),

                    Text(
                      'VISION\n'
                          'global community of excellent individuals with values. ',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[700],
                        height: 1.6,
                      ),
                    ),



                  ],


                ),


              ),
            ],
          ),
        ),
      ),
    );
  }
}