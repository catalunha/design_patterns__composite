import 'package:design_patterns__composite/field_composite.dart';

class Fieldset extends FieldComposite {
  Fieldset({required String name, required String title})
      : super(name: name, title: title);
  @override
  String render() {
    // TODO: implement render
    var output = super.render();
    return '<fieldset><legend>$title</legend>\n$output</fieldset>\n';
  }
}
