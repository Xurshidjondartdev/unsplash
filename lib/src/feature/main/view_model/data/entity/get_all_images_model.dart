import 'dart:convert';

List<GetAllImageModel> getAllImageModelFromJson(String str) =>
    List<GetAllImageModel>.from(json.decode(str).map((x) => GetAllImageModel.fromJson(x)));

String getAllImageModelToJson(List<GetAllImageModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetAllImageModel {
  final String? id;
  final String? slug;
  final AlternativeSlugs? alternativeSlugs;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? promotedAt;
  final int? width;
  final int? height;
  final String? color;
  final String? blurHash;
  final String? description;
  final String? altDescription;
  final List<dynamic>? breadcrumbs;
  final Urls? urls;
  final GetAllImageModelLinks? links;
  final int? likes;
  final bool? likedByUser;
  final List<dynamic>? currentUserCollections;
  final Sponsorship? sponsorship;
  final TopicSubmissions? topicSubmissions;
  final AssetType? assetType;
  final User? user;

  GetAllImageModel({
    this.id,
    this.slug,
    this.alternativeSlugs,
    this.createdAt,
    this.updatedAt,
    this.promotedAt,
    this.width,
    this.height,
    this.color,
    this.blurHash,
    this.description,
    this.altDescription,
    this.breadcrumbs,
    this.urls,
    this.links,
    this.likes,
    this.likedByUser,
    this.currentUserCollections,
    this.sponsorship,
    this.topicSubmissions,
    this.assetType,
    this.user,
  });

  GetAllImageModel copyWith({
    String? id,
    String? slug,
    AlternativeSlugs? alternativeSlugs,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? promotedAt,
    int? width,
    int? height,
    String? color,
    String? blurHash,
    String? description,
    String? altDescription,
    List<dynamic>? breadcrumbs,
    Urls? urls,
    GetAllImageModelLinks? links,
    int? likes,
    bool? likedByUser,
    List<dynamic>? currentUserCollections,
    Sponsorship? sponsorship,
    TopicSubmissions? topicSubmissions,
    AssetType? assetType,
    User? user,
  }) =>
      GetAllImageModel(
        id: id ?? this.id,
        slug: slug ?? this.slug,
        alternativeSlugs: alternativeSlugs ?? this.alternativeSlugs,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        promotedAt: promotedAt ?? this.promotedAt,
        width: width ?? this.width,
        height: height ?? this.height,
        color: color ?? this.color,
        blurHash: blurHash ?? this.blurHash,
        description: description ?? this.description,
        altDescription: altDescription ?? this.altDescription,
        breadcrumbs: breadcrumbs ?? this.breadcrumbs,
        urls: urls ?? this.urls,
        links: links ?? this.links,
        likes: likes ?? this.likes,
        likedByUser: likedByUser ?? this.likedByUser,
        currentUserCollections: currentUserCollections ?? this.currentUserCollections,
        sponsorship: sponsorship ?? this.sponsorship,
        topicSubmissions: topicSubmissions ?? this.topicSubmissions,
        assetType: assetType ?? this.assetType,
        user: user ?? this.user,
      );

  factory GetAllImageModel.fromJson(Map<String, dynamic> json) => GetAllImageModel(
        id: json["id"],
        slug: json["slug"],
        alternativeSlugs:
            json["alternative_slugs"] == null ? null : AlternativeSlugs.fromJson(json["alternative_slugs"]),
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        promotedAt: json["promoted_at"] == null ? null : DateTime.parse(json["promoted_at"]),
        width: json["width"],
        height: json["height"],
        color: json["color"],
        blurHash: json["blur_hash"],
        description: json["description"],
        altDescription: json["alt_description"],
        breadcrumbs:
            json["breadcrumbs"] == null ? [] : List<dynamic>.from(json["breadcrumbs"]!.map((x) => x)),
        urls: json["urls"] == null ? null : Urls.fromJson(json["urls"]),
        links: json["links"] == null ? null : GetAllImageModelLinks.fromJson(json["links"]),
        likes: json["likes"],
        likedByUser: json["liked_by_user"],
        currentUserCollections: json["current_user_collections"] == null
            ? []
            : List<dynamic>.from(json["current_user_collections"]!.map((x) => x)),
        sponsorship: json["sponsorship"] == null ? null : Sponsorship.fromJson(json["sponsorship"]),
        topicSubmissions:
            json["topic_submissions"] == null ? null : TopicSubmissions.fromJson(json["topic_submissions"]),
        assetType: assetTypeValues.map[json["asset_type"]]!,
        user: json["user"] == null ? null : User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "slug": slug,
        "alternative_slugs": alternativeSlugs?.toJson(),
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "promoted_at": promotedAt?.toIso8601String(),
        "width": width,
        "height": height,
        "color": color,
        "blur_hash": blurHash,
        "description": description,
        "alt_description": altDescription,
        "breadcrumbs": breadcrumbs == null ? [] : List<dynamic>.from(breadcrumbs!.map((x) => x)),
        "urls": urls?.toJson(),
        "links": links?.toJson(),
        "likes": likes,
        "liked_by_user": likedByUser,
        "current_user_collections":
            currentUserCollections == null ? [] : List<dynamic>.from(currentUserCollections!.map((x) => x)),
        "sponsorship": sponsorship?.toJson(),
        "topic_submissions": topicSubmissions?.toJson(),
        "asset_type": assetTypeValues.reverse[assetType],
        "user": user?.toJson(),
      };
}

class AlternativeSlugs {
  final String? en;
  final String? es;
  final String? ja;
  final String? fr;
  final String? it;
  final String? ko;
  final String? de;
  final String? pt;

  AlternativeSlugs({
    this.en,
    this.es,
    this.ja,
    this.fr,
    this.it,
    this.ko,
    this.de,
    this.pt,
  });

  AlternativeSlugs copyWith({
    String? en,
    String? es,
    String? ja,
    String? fr,
    String? it,
    String? ko,
    String? de,
    String? pt,
  }) =>
      AlternativeSlugs(
        en: en ?? this.en,
        es: es ?? this.es,
        ja: ja ?? this.ja,
        fr: fr ?? this.fr,
        it: it ?? this.it,
        ko: ko ?? this.ko,
        de: de ?? this.de,
        pt: pt ?? this.pt,
      );

  factory AlternativeSlugs.fromJson(Map<String, dynamic> json) => AlternativeSlugs(
        en: json["en"],
        es: json["es"],
        ja: json["ja"],
        fr: json["fr"],
        it: json["it"],
        ko: json["ko"],
        de: json["de"],
        pt: json["pt"],
      );

  Map<String, dynamic> toJson() => {
        "en": en,
        "es": es,
        "ja": ja,
        "fr": fr,
        "it": it,
        "ko": ko,
        "de": de,
        "pt": pt,
      };
}

enum AssetType { PHOTO }

final assetTypeValues = EnumValues({"photo": AssetType.PHOTO});

class GetAllImageModelLinks {
  final String? self;
  final String? html;
  final String? download;
  final String? downloadLocation;

  GetAllImageModelLinks({
    this.self,
    this.html,
    this.download,
    this.downloadLocation,
  });

  GetAllImageModelLinks copyWith({
    String? self,
    String? html,
    String? download,
    String? downloadLocation,
  }) =>
      GetAllImageModelLinks(
        self: self ?? this.self,
        html: html ?? this.html,
        download: download ?? this.download,
        downloadLocation: downloadLocation ?? this.downloadLocation,
      );

  factory GetAllImageModelLinks.fromJson(Map<String, dynamic> json) => GetAllImageModelLinks(
        self: json["self"],
        html: json["html"],
        download: json["download"],
        downloadLocation: json["download_location"],
      );

  Map<String, dynamic> toJson() => {
        "self": self,
        "html": html,
        "download": download,
        "download_location": downloadLocation,
      };
}

class Sponsorship {
  final List<String>? impressionUrls;
  final String? tagline;
  final String? taglineUrl;
  final User? sponsor;

  Sponsorship({
    this.impressionUrls,
    this.tagline,
    this.taglineUrl,
    this.sponsor,
  });

  Sponsorship copyWith({
    List<String>? impressionUrls,
    String? tagline,
    String? taglineUrl,
    User? sponsor,
  }) =>
      Sponsorship(
        impressionUrls: impressionUrls ?? this.impressionUrls,
        tagline: tagline ?? this.tagline,
        taglineUrl: taglineUrl ?? this.taglineUrl,
        sponsor: sponsor ?? this.sponsor,
      );

  factory Sponsorship.fromJson(Map<String, dynamic> json) => Sponsorship(
        impressionUrls:
            json["impression_urls"] == null ? [] : List<String>.from(json["impression_urls"]!.map((x) => x)),
        tagline: json["tagline"],
        taglineUrl: json["tagline_url"],
        sponsor: json["sponsor"] == null ? null : User.fromJson(json["sponsor"]),
      );

  Map<String, dynamic> toJson() => {
        "impression_urls": impressionUrls == null ? [] : List<dynamic>.from(impressionUrls!.map((x) => x)),
        "tagline": tagline,
        "tagline_url": taglineUrl,
        "sponsor": sponsor?.toJson(),
      };
}

class User {
  final String? id;
  final DateTime? updatedAt;
  final String? username;
  final String? name;
  final String? firstName;
  final String? lastName;
  final String? twitterUsername;
  final String? portfolioUrl;
  final String? bio;
  final String? location;
  final UserLinks? links;
  final ProfileImage? profileImage;
  final String? instagramUsername;
  final int? totalCollections;
  final int? totalLikes;
  final int? totalPhotos;
  final int? totalPromotedPhotos;
  final int? totalIllustrations;
  final int? totalPromotedIllustrations;
  final bool? acceptedTos;
  final bool? forHire;
  final Social? social;

  User({
    this.id,
    this.updatedAt,
    this.username,
    this.name,
    this.firstName,
    this.lastName,
    this.twitterUsername,
    this.portfolioUrl,
    this.bio,
    this.location,
    this.links,
    this.profileImage,
    this.instagramUsername,
    this.totalCollections,
    this.totalLikes,
    this.totalPhotos,
    this.totalPromotedPhotos,
    this.totalIllustrations,
    this.totalPromotedIllustrations,
    this.acceptedTos,
    this.forHire,
    this.social,
  });

  User copyWith({
    String? id,
    DateTime? updatedAt,
    String? username,
    String? name,
    String? firstName,
    String? lastName,
    String? twitterUsername,
    String? portfolioUrl,
    String? bio,
    String? location,
    UserLinks? links,
    ProfileImage? profileImage,
    String? instagramUsername,
    int? totalCollections,
    int? totalLikes,
    int? totalPhotos,
    int? totalPromotedPhotos,
    int? totalIllustrations,
    int? totalPromotedIllustrations,
    bool? acceptedTos,
    bool? forHire,
    Social? social,
  }) =>
      User(
        id: id ?? this.id,
        updatedAt: updatedAt ?? this.updatedAt,
        username: username ?? this.username,
        name: name ?? this.name,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        twitterUsername: twitterUsername ?? this.twitterUsername,
        portfolioUrl: portfolioUrl ?? this.portfolioUrl,
        bio: bio ?? this.bio,
        location: location ?? this.location,
        links: links ?? this.links,
        profileImage: profileImage ?? this.profileImage,
        instagramUsername: instagramUsername ?? this.instagramUsername,
        totalCollections: totalCollections ?? this.totalCollections,
        totalLikes: totalLikes ?? this.totalLikes,
        totalPhotos: totalPhotos ?? this.totalPhotos,
        totalPromotedPhotos: totalPromotedPhotos ?? this.totalPromotedPhotos,
        totalIllustrations: totalIllustrations ?? this.totalIllustrations,
        totalPromotedIllustrations: totalPromotedIllustrations ?? this.totalPromotedIllustrations,
        acceptedTos: acceptedTos ?? this.acceptedTos,
        forHire: forHire ?? this.forHire,
        social: social ?? this.social,
      );

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        username: json["username"],
        name: json["name"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        twitterUsername: json["twitter_username"],
        portfolioUrl: json["portfolio_url"],
        bio: json["bio"],
        location: json["location"],
        links: json["links"] == null ? null : UserLinks.fromJson(json["links"]),
        profileImage: json["profile_image"] == null ? null : ProfileImage.fromJson(json["profile_image"]),
        instagramUsername: json["instagram_username"],
        totalCollections: json["total_collections"],
        totalLikes: json["total_likes"],
        totalPhotos: json["total_photos"],
        totalPromotedPhotos: json["total_promoted_photos"],
        totalIllustrations: json["total_illustrations"],
        totalPromotedIllustrations: json["total_promoted_illustrations"],
        acceptedTos: json["accepted_tos"],
        forHire: json["for_hire"],
        social: json["social"] == null ? null : Social.fromJson(json["social"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "updated_at": updatedAt?.toIso8601String(),
        "username": username,
        "name": name,
        "first_name": firstName,
        "last_name": lastName,
        "twitter_username": twitterUsername,
        "portfolio_url": portfolioUrl,
        "bio": bio,
        "location": location,
        "links": links?.toJson(),
        "profile_image": profileImage?.toJson(),
        "instagram_username": instagramUsername,
        "total_collections": totalCollections,
        "total_likes": totalLikes,
        "total_photos": totalPhotos,
        "total_promoted_photos": totalPromotedPhotos,
        "total_illustrations": totalIllustrations,
        "total_promoted_illustrations": totalPromotedIllustrations,
        "accepted_tos": acceptedTos,
        "for_hire": forHire,
        "social": social?.toJson(),
      };
}

class UserLinks {
  final String? self;
  final String? html;
  final String? photos;
  final String? likes;
  final String? portfolio;
  final String? following;
  final String? followers;

  UserLinks({
    this.self,
    this.html,
    this.photos,
    this.likes,
    this.portfolio,
    this.following,
    this.followers,
  });

  UserLinks copyWith({
    String? self,
    String? html,
    String? photos,
    String? likes,
    String? portfolio,
    String? following,
    String? followers,
  }) =>
      UserLinks(
        self: self ?? this.self,
        html: html ?? this.html,
        photos: photos ?? this.photos,
        likes: likes ?? this.likes,
        portfolio: portfolio ?? this.portfolio,
        following: following ?? this.following,
        followers: followers ?? this.followers,
      );

  factory UserLinks.fromJson(Map<String, dynamic> json) => UserLinks(
        self: json["self"],
        html: json["html"],
        photos: json["photos"],
        likes: json["likes"],
        portfolio: json["portfolio"],
        following: json["following"],
        followers: json["followers"],
      );

  Map<String, dynamic> toJson() => {
        "self": self,
        "html": html,
        "photos": photos,
        "likes": likes,
        "portfolio": portfolio,
        "following": following,
        "followers": followers,
      };
}

class ProfileImage {
  final String? small;
  final String? medium;
  final String? large;

  ProfileImage({
    this.small,
    this.medium,
    this.large,
  });

  ProfileImage copyWith({
    String? small,
    String? medium,
    String? large,
  }) =>
      ProfileImage(
        small: small ?? this.small,
        medium: medium ?? this.medium,
        large: large ?? this.large,
      );

  factory ProfileImage.fromJson(Map<String, dynamic> json) => ProfileImage(
        small: json["small"],
        medium: json["medium"],
        large: json["large"],
      );

  Map<String, dynamic> toJson() => {
        "small": small,
        "medium": medium,
        "large": large,
      };
}

class Social {
  final String? instagramUsername;
  final String? portfolioUrl;
  final String? twitterUsername;
  final dynamic paypalEmail;

  Social({
    this.instagramUsername,
    this.portfolioUrl,
    this.twitterUsername,
    this.paypalEmail,
  });

  Social copyWith({
    String? instagramUsername,
    String? portfolioUrl,
    String? twitterUsername,
    dynamic paypalEmail,
  }) =>
      Social(
        instagramUsername: instagramUsername ?? this.instagramUsername,
        portfolioUrl: portfolioUrl ?? this.portfolioUrl,
        twitterUsername: twitterUsername ?? this.twitterUsername,
        paypalEmail: paypalEmail ?? this.paypalEmail,
      );

  factory Social.fromJson(Map<String, dynamic> json) => Social(
        instagramUsername: json["instagram_username"],
        portfolioUrl: json["portfolio_url"],
        twitterUsername: json["twitter_username"],
        paypalEmail: json["paypal_email"],
      );

  Map<String, dynamic> toJson() => {
        "instagram_username": instagramUsername,
        "portfolio_url": portfolioUrl,
        "twitter_username": twitterUsername,
        "paypal_email": paypalEmail,
      };
}

class TopicSubmissions {
  final HardLightShadows? streetPhotography;
  final Nature? nature;
  final Nature? spirituality;
  final Nature? texturesPatterns;
  final Nature? travel;
  final Nature? wallpapers;
  final HardLightShadows? hardLightShadows;

  TopicSubmissions({
    this.streetPhotography,
    this.nature,
    this.spirituality,
    this.texturesPatterns,
    this.travel,
    this.wallpapers,
    this.hardLightShadows,
  });

  TopicSubmissions copyWith({
    HardLightShadows? streetPhotography,
    Nature? nature,
    Nature? spirituality,
    Nature? texturesPatterns,
    Nature? travel,
    Nature? wallpapers,
    HardLightShadows? hardLightShadows,
  }) =>
      TopicSubmissions(
        streetPhotography: streetPhotography ?? this.streetPhotography,
        nature: nature ?? this.nature,
        spirituality: spirituality ?? this.spirituality,
        texturesPatterns: texturesPatterns ?? this.texturesPatterns,
        travel: travel ?? this.travel,
        wallpapers: wallpapers ?? this.wallpapers,
        hardLightShadows: hardLightShadows ?? this.hardLightShadows,
      );

  factory TopicSubmissions.fromJson(Map<String, dynamic> json) => TopicSubmissions(
        streetPhotography:
            json["street-photography"] == null ? null : HardLightShadows.fromJson(json["street-photography"]),
        nature: json["nature"] == null ? null : Nature.fromJson(json["nature"]),
        spirituality: json["spirituality"] == null ? null : Nature.fromJson(json["spirituality"]),
        texturesPatterns:
            json["textures-patterns"] == null ? null : Nature.fromJson(json["textures-patterns"]),
        travel: json["travel"] == null ? null : Nature.fromJson(json["travel"]),
        wallpapers: json["wallpapers"] == null ? null : Nature.fromJson(json["wallpapers"]),
        hardLightShadows:
            json["hard-light-shadows"] == null ? null : HardLightShadows.fromJson(json["hard-light-shadows"]),
      );

  Map<String, dynamic> toJson() => {
        "street-photography": streetPhotography?.toJson(),
        "nature": nature?.toJson(),
        "spirituality": spirituality?.toJson(),
        "textures-patterns": texturesPatterns?.toJson(),
        "travel": travel?.toJson(),
        "wallpapers": wallpapers?.toJson(),
        "hard-light-shadows": hardLightShadows?.toJson(),
      };
}

class HardLightShadows {
  final String? status;
  final DateTime? approvedOn;

  HardLightShadows({
    this.status,
    this.approvedOn,
  });

  HardLightShadows copyWith({
    String? status,
    DateTime? approvedOn,
  }) =>
      HardLightShadows(
        status: status ?? this.status,
        approvedOn: approvedOn ?? this.approvedOn,
      );

  factory HardLightShadows.fromJson(Map<String, dynamic> json) => HardLightShadows(
        status: json["status"],
        approvedOn: json["approved_on"] == null ? null : DateTime.parse(json["approved_on"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "approved_on": approvedOn?.toIso8601String(),
      };
}

class Nature {
  final String? status;

  Nature({
    this.status,
  });

  Nature copyWith({
    String? status,
  }) =>
      Nature(
        status: status ?? this.status,
      );

  factory Nature.fromJson(Map<String, dynamic> json) => Nature(
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
      };
}

class Urls {
  final String? raw;
  final String? full;
  final String? regular;
  final String? small;
  final String? thumb;
  final String? smallS3;

  Urls({
    this.raw,
    this.full,
    this.regular,
    this.small,
    this.thumb,
    this.smallS3,
  });

  Urls copyWith({
    String? raw,
    String? full,
    String? regular,
    String? small,
    String? thumb,
    String? smallS3,
  }) =>
      Urls(
        raw: raw ?? this.raw,
        full: full ?? this.full,
        regular: regular ?? this.regular,
        small: small ?? this.small,
        thumb: thumb ?? this.thumb,
        smallS3: smallS3 ?? this.smallS3,
      );

  factory Urls.fromJson(Map<String, dynamic> json) => Urls(
        raw: json["raw"],
        full: json["full"],
        regular: json["regular"],
        small: json["small"],
        thumb: json["thumb"],
        smallS3: json["small_s3"],
      );

  Map<String, dynamic> toJson() => {
        "raw": raw,
        "full": full,
        "regular": regular,
        "small": small,
        "thumb": thumb,
        "small_s3": smallS3,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
