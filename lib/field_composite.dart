import 'package:design_patterns__composite/form_element.dart';

abstract class FieldComposite extends FormElement {
  final Map<String, FormElement> fields = {};
  FieldComposite({required String name, required String title})
      : super(name: name, title: title);
  add(FormElement field) {
    name = field.getName();
    fields.addAll({name: field});
  }

  remove(FormElement component) {
    fields.removeWhere((key, value) => value == component);
  }

  @override
  void setData(dynamic data) {
    fields.forEach((key, value) {
      if (data[key] != null) {
        value.setData(key);
      }
    });
  }

  @override
  dynamic getData() {
    dynamic _data;
    fields.forEach((key, value) {
      _data[key] = value.getData();
    });
    return _data;
  }

  @override
  String render() {
    var output = '';
    fields.forEach((key, value) {
      output = output + value.render();
    });
    return output;
  }
}
