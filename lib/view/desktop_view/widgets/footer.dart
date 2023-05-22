import 'package:flutter/material.dart';
import 'package:hidoc_app/res/app_constatns.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: const Color.fromARGB(255, 7, 22, 49),
      child: Row(
        children: [
          const SizedBox(width: AppConstants.extraLargeMargin),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'hiDoc Dr.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: AppConstants.smallMargin),
                const Text(
                  "Medical App for Doctors in India",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  maxLines: 2,
                ),
                const SizedBox(height: AppConstants.mediumMargin),
                Row(
                  children: const [
                    Icon(
                      Icons.facebook,
                      color: Colors.white,
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.facebook,
                      color: Colors.white,
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.facebook,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Reach Us',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: AppConstants.smallMargin),
                Text(
                  'Email: example@example.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Address: 123 Main St, City',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                  children: [
                    buildTableCell('Social Network',
                        const Color.fromARGB(255, 244, 154, 148)),
                    buildTableCell('Case Presentation',
                        const Color.fromARGB(255, 148, 222, 150)),
                    buildTableCell(
                        'Quizzes', const Color.fromARGB(255, 133, 191, 238)),
                    buildTableCell(
                        'Articles', const Color.fromARGB(255, 235, 179, 95)),
                  ],
                ),
                TableRow(
                  children: [
                    buildTableCell(
                        'Drugs', const Color.fromARGB(255, 233, 221, 119)),
                    buildTableCell(
                        'Webinar', const Color.fromARGB(255, 222, 118, 240)),
                    buildTableCell(
                        'Calculator', const Color.fromARGB(255, 99, 227, 214)),
                    buildTableCell(
                        'Guidelines', const Color.fromARGB(255, 237, 119, 159)),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: AppConstants.extraLargeMargin),
        ],
      ),
    );
  }

  TableCell buildTableCell(String text, Color color) {
    return TableCell(
      child: Container(
        height: 80,
        color: color,
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
