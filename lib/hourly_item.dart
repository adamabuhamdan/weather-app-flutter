import 'package:flutter/material.dart';
export 'hourly_item.dart';

class HourlyForecastItem extends StatelessWidget {
  final String time;

  final IconData icon;
  final String tempretuer;

  const HourlyForecastItem({
    super.key,
    required this.time,
    required this.icon,
    required this.tempretuer,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(18.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Text(
              '$time',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Icon(icon, size: 32),
            const SizedBox(height: 10),
            Text('$tempretuer', style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
