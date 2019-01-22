import 'package:meta/meta.dart';
import '../utils/conatus_enums.dart';

class Faculty {
  String name;
  String profileUrl;
  String department;
  String position;

  Faculty({
    @required this.name,
    @required this.profileUrl,
    @required this.department,
    @required this.position,
  });
}
