class TaskModel{

  late String name;
  late bool isDone;

  TaskModel({required this.name, this.isDone = false});

  void toggleDone(){
    isDone = !isDone;
  }


}