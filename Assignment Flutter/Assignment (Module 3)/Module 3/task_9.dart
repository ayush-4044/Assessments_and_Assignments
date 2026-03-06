import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class SimpleCalc extends StatefulWidget {
  const SimpleCalc({super.key});

  @override
  State<SimpleCalc> createState() => _SimpleCalcState();
}

class _SimpleCalcState extends State<SimpleCalc> {
  String _input = "";
  String _output = "0";

  void _btnPressed(String text) {
    setState(() {
      if (text == "AC") { _input = ""; _output = "0"; }
      else if (text == "=") { _calculate(); }
      else { _input += text; }
    });
  }

  void _calculate() {
    try {
      Parser p = Parser();
      String finalInput = _input.replaceAllMapped(RegExp(r'(\d+)%'), (m) => '(${m.group(1)}/100)');
      Expression exp = p.parse(finalInput.replaceAll('x', '*'));
      double eval = exp.evaluate(EvaluationType.REAL, ContextModel());
      setState(() => _output = eval.toStringAsFixed(eval % 1 == 0 ? 0 : 2));
    } catch (e) {
      setState(() => _output = "Error");
    }
  }

  Widget _buildBtn(String txt, {Color? color, Color? txtColor}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? Colors.grey[900],
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.symmetric(vertical: 20),
          ),
          onPressed: () => _btnPressed(txt),
          child: Text(txt, style: TextStyle(fontSize: 22, color: txtColor ?? Colors.white)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          // Display
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(_input, style: const TextStyle(color: Colors.white70, fontSize: 24)),
                  Text(_output, style: const TextStyle(color: Colors.white, fontSize: 64, fontWeight: FontWeight.w300)),
                ],
              ),
            ),
          ),
          // Buttons
          Column(
            children: [
              Row(children: [_buildBtn("AC", color: Colors.grey, txtColor: Colors.black), _buildBtn("%", color: Colors.grey, txtColor: Colors.black), _buildBtn("/", color: Colors.orange)]),
              Row(children: [_buildBtn("7"), _buildBtn("8"), _buildBtn("9"), _buildBtn("x", color: Colors.orange)]),
              Row(children: [_buildBtn("4"), _buildBtn("5"), _buildBtn("6"), _buildBtn("-", color: Colors.orange)]),
              Row(children: [_buildBtn("1"), _buildBtn("2"), _buildBtn("3"), _buildBtn("+", color: Colors.orange)]),
              Row(children: [_buildBtn("0", color: Colors.grey[900]), _buildBtn(".", color: Colors.grey[900]), _buildBtn("=", color: Colors.orange)]),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}