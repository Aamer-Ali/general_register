import 'package:general_register/pages/home/screen_lauout/model/home_page_menu_list_item_model.dart';

List<HomePageMenuListItemModel> getMenuListItem() {
  List<HomePageMenuListItemModel> menuItems = [
    HomePageMenuListItemModel(index: 1, name: "School"),
    HomePageMenuListItemModel(index: 2, name: "Admission"),
    HomePageMenuListItemModel(index: 3, name: "Leaving Certificate"),
    HomePageMenuListItemModel(index: 4, name: "Domicile"),
  ];
  return menuItems;
}
