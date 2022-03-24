import 'package:design_patterns__composite/form_element.dart';

class Input extends FormElement {
  final String type;
  Input({
    required String name,
    required String title,
    required this.type,
  }) : super(name: name, title: title);

  @override
  String render() {
    return "<label for=\"$name\">$title</label>\n<input name=\"$name\" type=\"$type\" value=\"${getData() as String}\">\n";
  }
}
