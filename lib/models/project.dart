class Project {
  int? projectId;
  String? projectName;
  String? description;
  String? areaName;
  String? fieldName;
  String? image;
  String? createAt;
  String? brand;
  String? startDate;
  String? endDate;
  String? status;

  Project(
      {this.projectId,
      this.projectName,
      this.description,
      this.areaName,
      this.fieldName,
      this.image,
      this.createAt,
      this.brand,
      this.startDate,
      this.endDate,
      this.status});

  Project.fromJson(Map<String, dynamic> json) {
    projectId = json['projectId'];
    projectName = json['projectName'];
    description = json['description'];
    areaName = json['areaName'];
    fieldName = json['fieldName'];
    image = json['image'];
    createAt = json['createAt'];
    brand = json['brand'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['projectId'] = projectId;
    data['projectName'] = projectName;
    data['description'] = description;
    data['areaName'] = areaName;
    data['fieldName'] = fieldName;
    data['image'] = image;
    data['createAt'] = createAt;
    data['brand'] = brand;
    data['startDate'] = startDate;
    data['endDate'] = endDate;
    data['status'] = status;
    return data;
  }
}
