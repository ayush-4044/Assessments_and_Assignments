import 'package:flutter/material.dart';

class ExpandableSection extends StatefulWidget {
  const ExpandableSection({super.key});

  @override
  State<ExpandableSection> createState() => _ExpandableSectionState();
}

class _ExpandableSectionState extends State<ExpandableSection> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => setState(() => isExpanded = !isExpanded),
              child: Text(isExpanded ? 'Collapse' : 'Expand'),
            ),

             SizedBox(height: 20),

            AnimatedContainer(
              duration:  Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              width: 300,
              height: isExpanded ? 200 : 0,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRect(
                child: Center(
                  child:  Text(
                    'Surprise! Extra Content.',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}