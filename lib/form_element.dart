abstract class FormElement {
  String name;
  String title;
  dynamic data = '';
  FormElement({
    required this.name,
    required this.title,
  });
  String getName() {
    return name;
  }

  dynamic getData() {
    return data;
  }

  void setData(dynamic data) {
    data = data;
  }

  String render();
}
