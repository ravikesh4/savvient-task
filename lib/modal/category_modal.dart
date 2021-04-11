class Category {
  String catgoryId;
  String categoryName;
  String itemId;
  String itemName;

  Category({this.catgoryId, this.categoryName, this.itemId, this.itemName});

  Category.fromJson(Map<String, dynamic> json) {
    catgoryId = json['catgory_id'];
    categoryName = json['category_name'];
    itemId = json['item_id'];
    itemName = json['item_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['catgory_id'] = this.catgoryId;
    data['category_name'] = this.categoryName;
    data['item_id'] = this.itemId;
    data['item_name'] = this.itemName;
    return data;
  }
}