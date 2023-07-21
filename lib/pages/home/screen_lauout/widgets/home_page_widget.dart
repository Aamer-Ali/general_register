import 'package:flutter/material.dart';
import 'package:general_register/pages/home/screen_lauout/model/home_page_menu_list_item_model.dart';

//----------------------- Related to web -----------------------
Widget buildMenuListItem(
    HomePageMenuListItemModel item, Function(int) menuItemSelected) {
  return Card(
    elevation: 2,
    child: ListTile(
      onTap: () {
        menuItemSelected(item.index);
      },
      title: Text(item.name),
    ),
  );
}

//----------------------- Related to mobile -----------------------
Widget buildMenuGridItem(
    HomePageMenuListItemModel item, Function(int) itemSelected) {
  return Card(
    elevation: 4,
    child: InkWell(
      onTap: () {
        itemSelected(item.index);
      },
      child: Center(
        child: Text(item.name),
      ),
    ),
  );
}
