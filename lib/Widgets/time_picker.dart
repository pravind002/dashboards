import 'package:flutter/material.dart';


class TimePicker extends StatefulWidget {
  TimePicker({Key? key}) : super(key: key);
  static String startTime = '';
  TextEditingController startTimeController = TextEditingController();

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  TimeOfDay timeOfDay = TimeOfDay.now();
  // TextEditingController endTimeController = TextEditingController();

  //   @override
  // void initState() {

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      // onChanged: (value) {
      //   displayTimePicker(context, startTimeController);
      // },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      // validator: (value) => CustomValidator.basicTextValidation(value: widget.startTimeController.text, text: "start time"),
      controller: widget.startTimeController,
      onTap: () {
        displayTimePicker(context, widget.startTimeController);
      },
      decoration: InputDecoration(
          filled: true,
          // fillColor: formFillColor,
          hintText: 'Start Time',
          border: InputBorder.none,
          suffixIcon: const Icon(
            Icons.timer,
            // onPressed: () {
            //   displayTimePicker(context, startTimeController);
            // }
          )),
    );
  }

  Future displayTimePicker(BuildContext context, textController) async {
    var time = await showTimePicker(context: context, initialTime: timeOfDay);

    if (time != null) {
      setState(() {
        if (time.minute < 10) {
          TimePicker.startTime = "${time.hour}:0${time.minute}";
        } else {
          TimePicker.startTime = "${time.hour}:${time.minute}";
        }
        textController.text = TimePicker.startTime;
        // textController.text = "${time.hour}:${time.minute}";
      });
    }
  }
}
