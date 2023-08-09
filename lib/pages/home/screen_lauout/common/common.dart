import 'package:general_register/pages/home/screen_lauout/model/home_page_menu_list_item_model.dart';

List<HomePageMenuListItemModel> getMenuListItem() {
  List<HomePageMenuListItemModel> menuItems = [
    HomePageMenuListItemModel(index: 1, name: "Home"),
    HomePageMenuListItemModel(index: 2, name: "School"),
    HomePageMenuListItemModel(index: 3, name: "Students"),
    HomePageMenuListItemModel(index: 4, name: "Leaving Certificate"),
    HomePageMenuListItemModel(index: 5, name: "Domicile"),
    HomePageMenuListItemModel(index: 6, name: "Logout"),
  ];
  return menuItems;
}
