class MSearch {
  final String imageURL;
  final String description;
  final double amount;

  const MSearch({this.imageURL, this.description, this.amount});

  Map<String, dynamic> toJson() => {
        'imageURL': this.imageURL,
        'description': this.description,
        'amount': this.amount
      };
}
