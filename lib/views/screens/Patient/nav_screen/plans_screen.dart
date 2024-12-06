import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:medi_app/widgets/background.dart';

class PlansScreen extends StatefulWidget {
  @override
  State<PlansScreen> createState() => _PlansScreen();
}

class _PlansScreen extends State<PlansScreen> {
  DateTime _selectedDate = DateTime.now();
  Map<DateTime, List<String>> _tasks = {};
  TextEditingController _taskController = TextEditingController();


  void _addTask() {
    if (_taskController.text.isNotEmpty) {
      setState(() {

        if (_tasks[_selectedDate] == null) {
          _tasks[_selectedDate] = [];
        }
        _tasks[_selectedDate]!.add(_taskController.text);
      });
      _taskController.clear();
    }
  }

  // Get upcoming tasks (tasks on or after today)
  List<Map<String, dynamic>> _getUpcomingTasks() {
    List<Map<String, dynamic>> upcomingTasks = [];
    DateTime today = DateTime.now();
    _tasks.forEach((date, taskList) {
      if (date.isAfter(today) || isSameDay(date, today)) {
        for (var task in taskList) {
          upcomingTasks.add({
            'task': task,
            'date': date,
          });
        }
      }
    });
    return upcomingTasks;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(
          children: [
            // Calendar widget
            TableCalendar(
              firstDay: DateTime.utc(2020, 1, 1),
              lastDay: DateTime.utc(2030, 12, 31),
              focusedDay: _selectedDate,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDate, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDate = selectedDay;
                });
              },
              calendarStyle: CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                selectedDecoration: BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Task input and button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _taskController,
                      decoration: InputDecoration(
                        hintText: 'Enter a task...',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: _addTask,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Display upcoming tasks in a scrollable view
            Expanded(
              child: ListView.builder(
                itemCount: _getUpcomingTasks().length,
                itemBuilder: (context, index) {
                  var taskData = _getUpcomingTasks()[index];
                  var task = taskData['task'];
                  var date = taskData['date'];

                  return ListTile(
                    title: Text(task,style: TextStyle(fontSize: 20),),
                    subtitle: Text(
                      '${date.day}-${date.month}-${date.year}', // Showing the date
                      style: TextStyle(color: Colors.black,fontSize: 14),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
