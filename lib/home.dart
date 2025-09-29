import 'package:flutter/material.dart';
import 'ccs.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Home'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(Icons.home, size: 100, color: Colors.blue),
                ),
                SizedBox(height: 30),
                Text(
                  'Click to choose courses',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 15),
                Text(
                  'Explore my work and get to know me better',
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildQuickNavCard(
                        context,
                        Icons.work,
                        'CCS',
                        Colors.green,
                            () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => CCSPage()),
                        ),
                      ),
                      SizedBox(width: 10),
                      _buildQuickNavCard(context, Icons.work, 'EDUC', Colors.orange, () {}),
                      SizedBox(width: 10),
                      _buildQuickNavCard(context, Icons.work, 'CBAE', Colors.purple, () {}),
                      SizedBox(width: 10),
                      _buildQuickNavCard(context, Icons.work, 'COA', Colors.red, () {}),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildQuickNavCard(
      BuildContext context,
      IconData icon,
      String label,
      Color color,
      VoidCallback onTap,
      ) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 100,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Icon(icon, size: 30, color: color),
            SizedBox(height: 8),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: color,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}