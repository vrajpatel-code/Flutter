void main() {
  List<String> weekdays = [
    "Sunday",
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
  ];

  Set<String> Week = {
    "Sunday",
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
  };

  print("The list of weekdays is: $weekdays");
  print("The set of weekdays is: $Week");
  print(Week.where((e) => e.startsWith("S")).toList());

  Map<String, String> weekdayDescriptions = {
    "Sunday": "The first day of the week",
    "Monday": "The second day of the week",
    "Tuesday": "The third day of the week",
    "Wednesday": "The fourth day of the week",
    "Thursday": "The fifth day of the week",
    "Friday": "The sixth day of the week",
    "Saturday": "The seventh day of the week",
  };
  print("The map of weekday descriptions is: $weekdayDescriptions");

  print(weekdayDescriptions["Sunday"]);




  weekdayDescriptions.forEach((key, value) {
    print("$key: $value");
  });

  
}
