class Link {
  final String? name;
  final String? link;

  Link({this.name, this.link});

  factory Link.fromJson(Map<String, dynamic> json) {
    return Link(
      name: json['name'] as String?,
      link: json['link'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'link': link,
    };
  }

  Link copyWith({
    String? name,
    String? link,
  }) {
    return Link(
      name: name ?? this.name,
      link: link ?? this.link,
    );
  }
}

class UserModel {
  final String? name;
  final String? uid;
  final String? memberId;
  final String? bloodgroup;
  final String? role;
  final String? chapter;
  final String? image;
  final String? email;
  final String? phone;
  final SecondaryPhone? secondaryPhone;
  final String? bio;
  final String? status;
  final String? address;
  final Company? company;
  final String? businessCategory;
  final String? businessSubCategory;
  final List<String>? file;
  final List<Link>? social;
  final List<Link>? websites;
  final List<Award>? awards;
  final List<Link>? videos;
  final List<Link>? certificates;
  final int? otp;
  final List<String>? blockedUsers;
    final int? feedCount;
  final int? productCount;
  final String? subscription;
  final String? fcm;

  UserModel({
    this.name,
    this.uid,
    this.memberId,
    this.bloodgroup,
    this.role,
    this.chapter,
    this.image,
    this.email,
    this.phone,
    this.secondaryPhone,
    this.bio,
    this.status,
    this.address,
    this.company,
    this.businessCategory,
    this.businessSubCategory,
    this.file,
    this.social,
    this.websites,
    this.awards,
    this.videos,
    this.certificates,
    this.otp,
    this.blockedUsers,
        this.feedCount,
    this.productCount,
    this.subscription,
    this.fcm,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'] as String?,
      uid: json['_id'] as String?,
      memberId: json['memberId'] as String?,
      bloodgroup: json['bloodgroup'] as String?,
      role: json['role'] as String?,
      chapter: json['chapter'] as String?,
      image: json['image'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      secondaryPhone: json['secondaryPhone'] != null
          ? SecondaryPhone.fromJson(json['secondaryPhone'])
          : null,
      bio: json['bio'] as String?,
      status: json['status'] as String?,
      address: json['address'] as String?,
      company:
          json['company'] != null ? Company.fromJson(json['company']) : null,
      businessCategory: json['businessCategory'] as String?,
      businessSubCategory: json['businessSubCategory'] as String?,
      file: (json['file'] as List<dynamic>?)?.map((e) => e as String).toList(),
      social: (json['social'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      websites: (json['websites'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      awards: (json['awards'] as List<dynamic>?)
          ?.map((e) => Award.fromJson(e as Map<String, dynamic>))
          .toList(),
      videos: (json['videos'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      certificates: (json['certificates'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      otp: json['otp'] as int?,
      blockedUsers: (json['blockedUsers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
                     feedCount: json['feedCount']!=null? json['feedCount'] as int:0,
           productCount: json['productCount']!=null? json['productCount'] as int:0,
      subscription: json['subscription'] as String?,
      fcm: json['fcm'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'uid': uid,
      'memberId': memberId,
      'bloodgroup': bloodgroup,
      'role': role,
      'chapter': chapter,
      'image': image,
      'email': email,
      'phone': phone,
      'secondaryPhone': secondaryPhone?.toJson(),
      'bio': bio,
      'status': status,
      'address': address,
      'company': company?.toJson(),
      'businessCategory': businessCategory,
      'businessSubCategory': businessSubCategory,
      'file': file,
      'social': social?.map((e) => e.toJson()).toList(),
      'websites': websites?.map((e) => e.toJson()).toList(),
      'awards': awards?.map((e) => e.toJson()).toList(),
      'videos': videos?.map((e) => e.toJson()).toList(),
      'certificates': certificates?.map((e) => e.toJson()).toList(),
      'otp': otp,
      'blockedUsers': blockedUsers,
            'feedCount':feedCount,
      'productCount':productCount,
      'subscription': subscription,
      'fcm': fcm,
    };
  }

  UserModel copyWith({
    String? name,
    String? uid,
    String? memberId,
    String? bloodgroup,
    String? role,
    String? chapter,
    String? image,
    String? email,
    String? phone,
    SecondaryPhone? secondaryPhone,
    String? bio,
    String? status,
    String? address,
    Company? company,
    String? businessCategory,
    String? businessSubCategory,
    List<String>? file,
    List<Link>? social,
    List<Link>? websites,
    List<Award>? awards,
    List<Link>? videos,
    List<Link>? certificates,
    int? otp,
    List<String>? blockedUsers,
    String? subscription,
    String? fcm,
  }) {
    return UserModel(
      name: name ?? this.name,
      uid: uid ?? this.uid,
      memberId: memberId ?? this.memberId,
      bloodgroup: bloodgroup ?? this.bloodgroup,
      role: role ?? this.role,
      chapter: chapter ?? this.chapter,
      image: image ?? this.image,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      secondaryPhone: secondaryPhone ?? this.secondaryPhone,
      bio: bio ?? this.bio,
      status: status ?? this.status,
      address: address ?? this.address,
      company: company ?? this.company,
      businessCategory: businessCategory ?? this.businessCategory,
      businessSubCategory: businessSubCategory ?? this.businessSubCategory,
      file: file ?? this.file,
      social: social ?? this.social,
      websites: websites ?? this.websites,
      awards: awards ?? this.awards,
      videos: videos ?? this.videos,
      certificates: certificates ?? this.certificates,
      otp: otp ?? this.otp,
      blockedUsers: blockedUsers ?? this.blockedUsers,
      subscription: subscription ?? this.subscription,
      fcm: fcm ?? this.fcm,
    );
  }
}

class SecondaryPhone {
  final String? whatsapp;
  final String? business;

  SecondaryPhone({this.whatsapp, this.business});

  factory SecondaryPhone.fromJson(Map<String, dynamic> json) {
    return SecondaryPhone(
      whatsapp: json['whatsapp'] as String?,
      business: json['business'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'whatsapp': whatsapp,
      'business': business,
    };
  }
}

class Company {
  final String? name;
  final String? designation;
  final String? email;
  final String? websites;
  final String? phone;

  Company({this.name, this.designation, this.email, this.websites, this.phone});

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      name: json['name'] as String?,
      designation: json['designation'] as String?,
      email: json['email'] as String?,
      websites: json['websites'] as String?,
      phone: json['phone'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'designation': designation,
      'email': email,
      'websites': websites,
      'phone': phone,
    };
  }
}

class Award {
  final String? image;
  final String? name;
  final String? authority;

  Award({this.image, this.name, this.authority});

  factory Award.fromJson(Map<String, dynamic> json) {
    return Award(
      image: json['image'] as String?,
      name: json['name'] as String?,
      authority: json['authority'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'name': name,
      'authority': authority,
    };
  }
}
