class ItemData {
  final String id;
  final bool isChecked;
  final String image;
  final String title;

  const ItemData({
    required this.id,
    required this.isChecked,
    required this.image,
    required this.title,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemData &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          isChecked == other.isChecked &&
          image == other.image &&
          title == other.title);

  @override
  int get hashCode =>
      id.hashCode ^ isChecked.hashCode ^ image.hashCode ^ title.hashCode;

  @override
  String toString() {
    return 'ItemData{' +
        ' id: $id,' +
        ' isChecked: $isChecked,' +
        ' image: $image,' +
        ' title: $title,' +
        '}';
  }

  ItemData copyWith({
    String? id,
    bool? isChecked,
    String? image,
    String? title,
  }) {
    return ItemData(
      id: id ?? this.id,
      isChecked: isChecked ?? this.isChecked,
      image: image ?? this.image,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'isChecked': this.isChecked,
      'image': this.image,
      'title': this.title,
    };
  }

  factory ItemData.fromMap(Map<String, dynamic> map) {
    return ItemData(
      id: map['id'] as String,
      isChecked: map['isChecked'] as bool,
      image: map['image'] as String,
      title: map['title'] as String,
    );
  }
}