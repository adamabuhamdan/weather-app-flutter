import 'package:flutter/material.dart';
export 'package:weather_app/additional_info.dart';

class AdditionalInfoItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final double numInfo;
  const AdditionalInfoItem({
    super.key,
    required this.icon,
    required this.label,
    required this.numInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 48),
        const SizedBox(height: 10),
        Text('$label', style: TextStyle(fontSize: 20)),

        const SizedBox(height: 10),
        Text(
          '$numInfo',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
