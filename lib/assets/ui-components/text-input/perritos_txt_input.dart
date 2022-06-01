
import 'package:flutter/material.dart';

import '../../styles/perritos-colors.dart';
import '../../styles/perritos-fonts.dart';

class PerritosTxtInput extends StatefulWidget{

  const PerritosTxtInput ({
    Key? key,
    this.hintTxt = "Text Input",
    this.label = "",
    this.optlabel = "",
    this.width = double.infinity,
    this.password = false,
    required this.onSubmit
  }) : super (key: key);

  final String hintTxt;
  final String label;
  final String optlabel;
  final double width;
  final bool password;
  final Function(String) onSubmit;

  @override
  _PerritosTxtInputState createState() => _PerritosTxtInputState();
}

class _PerritosTxtInputState extends State<PerritosTxtInput> {
  late FocusNode myFocusNode;
  final myController = TextEditingController();
  String result = "";

  @override
  void initState() {
    myFocusNode = FocusNode();
    myFocusNode.addListener(() {
      setState(() {
        myFocusNode.hasFocus;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 94,
      width: widget.width,
        child: Column(
          children: [
            Row(children: [
              const SizedBox(width: 20),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  widget.label,
                  style: myFocusNode.hasFocus ? perritosParagonMaizeCrayola : perritosParagonOpacity,
                  textAlign: TextAlign.left,
                ),
              ),
              const Spacer(),
              Container(
                  alignment: Alignment.topRight,
                  child: Text(
                    widget.optlabel,
                    style: perritosParagonOpacity,
                    textAlign: TextAlign.right,
                  )),
              const SizedBox(width: 20)
            ]),
            TextFormField(
              obscureText: widget.password,
              enableSuggestions: !widget.password,
              autocorrect: false,
              cursorColor: PerritosColor.perritosCharcoal.color,
              style: perritosDoublePica,
              onFieldSubmitted: widget.onSubmit,
              controller: myController,
              focusNode: myFocusNode,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                        color: perritosCharcoal.withOpacity(0.7), width: 2.0)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                    const BorderSide(color: perritosMaizeCrayola, width: 2.0)),
                hintText: widget.hintTxt,
                contentPadding: const EdgeInsets.all(20)
          ),
        )
      ],
    ));
  }
}