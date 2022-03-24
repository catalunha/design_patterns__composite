import 'package:design_patterns__composite/field_composite.dart';

class Form extends FieldComposite {
  final String url;
  Form({
    required String name,
    required String title,
    required this.url,
  }) : super(name: name, title: title);

  @override
  String render() {
    // TODO: implement render
    var output = super.render();
    return '<form action="$url">\n<h3>$title</h3>\n$output</form>';
  }
}
