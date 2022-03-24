import 'package:design_patterns__composite/fieldset.dart';
import 'package:design_patterns__composite/form.dart';
import 'package:design_patterns__composite/form_element.dart';
import 'package:design_patterns__composite/input.dart';

void execute() {
  print('Abordando:https://refactoring.guru/pt-br/design-patterns/composite');
  var form = getProductForm();
  loadProductData(form);
  renderProduct(form);
}

FormElement getProductForm() {
  var form = Form(name: 'product', title: 'Add product', url: '/product/add');
  form.add(Input(name: 'name', title: 'Name', type: 'text'));
  form.add(Input(name: 'description', title: 'Description', type: 'text'));
  var picture = Fieldset(name: 'photo', title: 'Product photo');
  picture.add(Input(name: 'caption', title: 'Caption', type: 'text'));
  picture.add(Input(name: 'image', title: 'Image', type: 'file'));
  form.add(picture);
  return form;
}

loadProductData(FormElement form) {
  Map<String, dynamic> data = {
    'name': 'Apple MacBook',
    'description': 'A decent laptop',
    'photo': [
      {'caption': 'Front photo'},
      {'image': 'photo1.png'},
    ]
  };
  form.setData(data);
}

renderProduct(FormElement form) {
  print(form.render());
}
