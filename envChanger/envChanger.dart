import 'dart:io';
//dart .\envChanger.dart "green"
Future<void> main(List<String> arguments) async {
  if(arguments == null || arguments.length < 1){
    print('No Parameter passed');
    return;
  }
  String param = arguments[0];

//Editing Colors
  File colorFile = new File("changes/color.dart.ren");
  File oldColorFile = new File("../lib/color.dart");
  if(param == "green"){
    String colors = (await colorFile.readAsString()).replaceFirst("{{primarycolor}}", "Colors.green");
    oldColorFile.writeAsString(colors);

  } else {
    String colors = (await colorFile.readAsString()).replaceFirst("{{primarycolor}}", "Colors.blue");
    oldColorFile.writeAsString(colors);
  }
  
}