
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/utils/app_color.dart';
import 'package:travelapp/widgets/search_field.dart';

class SearchComponent extends StatelessWidget {

  final Function onSearch;
  final Function onFocus;
  final Function onFilter;

  const SearchComponent({Key key, this.onSearch, this.onFocus, this.onFilter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchField(
      onSearch: onSearch,
      onFocus: onFocus,
      leftChild: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: AppColor.btnPrimaryColor,
          ),
          color: AppColor.btnPrimaryColor,
        ),
        child: IconButton(
          icon: Padding(
            padding: EdgeInsets.only(right:8.0),
            child: Icon(Icons.filter_list, color: Colors.white, size: 34.0,
            ),
          ),
          onPressed: onFilter,
        ),
      ),
    );
  }
}
