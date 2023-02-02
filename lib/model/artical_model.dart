class ArticleModel {
  int? id;
  String? date;
  String? dateGmt;
  Guid? guid;
  String? modified;
  String? modifiedGmt;
  String? slug;
  String? status;
  String? type;
  String? link;
  Guid? title;
  Content? content;
  Content? excerpt;
  int? author;
  int? featuredMedia;
  String? commentStatus;
  String? pingStatus;
  bool? sticky;
  String? template;
  String? format;
  List<Null>? meta;
  List<int>? categories;
  List<Null>? tags;
  Links? lLinks;


  ArticleModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    dateGmt = json['date_gmt'];
    guid = json['guid'] != null ? new Guid.fromJson(json['guid']) : null;
    modified = json['modified'];
    modifiedGmt = json['modified_gmt'];
    slug = json['slug'];
    status = json['status'];
    type = json['type'];
    link = json['link'];
    title = json['title'] != null ? new Guid.fromJson(json['title']) : null;
    content =
    json['content'] != null ? new Content.fromJson(json['content']) : null;
    excerpt =
    json['excerpt'] != null ? new Content.fromJson(json['excerpt']) : null;
    author = json['author'];
    featuredMedia = json['featured_media'];
    commentStatus = json['comment_status'];
    pingStatus = json['ping_status'];
    sticky = json['sticky'];
    template = json['template'];
    format = json['format'];

    categories = json['categories'].cast<int>();

    lLinks = json['_links'] != null ? new Links.fromJson(json['_links']) : null;
  }

}

class Guid {
  String? rendered;


  Guid.fromJson(Map<String, dynamic> json) {
    rendered = json['rendered'];
  }

}

class Content {
  String? rendered;
  bool? protected;



  Content.fromJson(Map<String, dynamic> json) {
    rendered = json['rendered'];
    protected = json['protected'];
  }


}

class Links {
  List<Self>? self;


  List<Author>? author;

  List<VersionHistory>? versionHistory;
  List<PredecessorVersion>? predecessorVersion;


  List<WpTerm>? wpTerm;
  List<Curies>? curies;


  Links.fromJson(Map<String, dynamic> json) {
    if (json['self'] != null) {
      self = <Self>[];
      json['self'].forEach((v) {
        self!.add(new Self.fromJson(v));
      });
    }


    if (json['author'] != null) {
      author = <Author>[];
      json['author'].forEach((v) {
        author!.add(new Author.fromJson(v));
      });
    }

    if (json['version-history'] != null) {
      versionHistory = <VersionHistory>[];
      json['version-history'].forEach((v) {
        versionHistory!.add(new VersionHistory.fromJson(v));
      });
    }
    if (json['predecessor-version'] != null) {
      predecessorVersion = <PredecessorVersion>[];
      json['predecessor-version'].forEach((v) {
        predecessorVersion!.add(new PredecessorVersion.fromJson(v));
      });
    }


    if (json['wp:term'] != null) {
      wpTerm = <WpTerm>[];
      json['wp:term'].forEach((v) {
        wpTerm!.add(new WpTerm.fromJson(v));
      });
    }
    if (json['curies'] != null) {
      curies = <Curies>[];
      json['curies'].forEach((v) {
        curies!.add(new Curies.fromJson(v));
      });
    }
  }

}

class Self {
  String? href;



  Self.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }


}

class Author {
  bool? embeddable;
  String? href;



  Author.fromJson(Map<String, dynamic> json) {
    embeddable = json['embeddable'];
    href = json['href'];
  }

}

class VersionHistory {
  int? count;
  String? href;



  VersionHistory.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    href = json['href'];
  }

}

class PredecessorVersion {
  int? id;
  String? href;



  PredecessorVersion.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    href = json['href'];
  }


}

class WpTerm {
  String? taxonomy;
  bool? embeddable;
  String? href;



  WpTerm.fromJson(Map<String, dynamic> json) {
    taxonomy = json['taxonomy'];
    embeddable = json['embeddable'];
    href = json['href'];
  }


}

class Curies {
  String? name;
  String? href;
  bool? templated;



  Curies.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    href = json['href'];
    templated = json['templated'];
  }

}
//
// class ArticleModel {
//   int? id;
//   String? date;
//   String? dateGmt;
//   Guid? guid;
//   String? modified;
//   String? modifiedGmt;
//   String? slug;
//   String? status;
//   String? type;
//   String? link;
//   Guid? title;
//   Content? content;
//   Content? excerpt;
//   int? author;
//   int? featuredMedia;
//   String? commentStatus;
//   String? pingStatus;
//   bool? sticky;
//   String? template;
//   String? format;
//   List<String>? meta;
//   List<int>? categories;
//   List<Null>? tags;
//   Links? lLinks;
//
//
//   ArticleModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     date = json['date'];
//     dateGmt = json['date_gmt'];
//     guid = json['guid'] != null ? new Guid.fromJson(json['guid']) : null;
//     modified = json['modified'];
//     modifiedGmt = json['modified_gmt'];
//     slug = json['slug'];
//     status = json['status'];
//     type = json['type'];
//     link = json['link'];
//     title = json['title'] != null ? new Guid.fromJson(json['title']) : null;
//     content =
//     json['content'] != null ? new Content.fromJson(json['content']) : null;
//     excerpt =
//     json['excerpt'] != null ? new Content.fromJson(json['excerpt']) : null;
//     author = json['author'];
//     featuredMedia = json['featured_media'];
//     commentStatus = json['comment_status'];
//     pingStatus = json['ping_status'];
//     sticky = json['sticky'];
//     template = json['template'];
//     format = json['format'];
//     if (json['meta'] != null) {
//       meta = <Null>[];
//       json['meta'].forEach((v) {
//         meta!.add(new Null.fromJson(v));
//       });
//     }
//     categories = json['categories'].cast<int>();
//     if (json['tags'] != null) {
//       tags = <Null>[];
//       json['tags'].forEach((v) {
//         tags!.add(new Null.fromJson(v));
//       });
//     }
//     lLinks = json['_links'] != null ? new Links.fromJson(json['_links']) : null;
//   }
//
// }
//
// class Guid {
//   String? rendered;
//
//
//
//   Guid.fromJson(Map<String, dynamic> json) {
//     rendered = json['rendered'];
//   }
//
//
// }
//
// class Content {
//   String? rendered;
//   bool? protected;
//
//
//
//   Content.fromJson(Map<String, dynamic> json) {
//     rendered = json['rendered'];
//     protected = json['protected'];
//   }
//
//
// }
//
// class Links {
//   List<Self>? self;
//   List<Collection>? collection;
//   List<About>? about;
//   List<Author>? author;
//   List<Replies>? replies;
//   List<VersionHistory>? versionHistory;
//   List<PredecessorVersion>? predecessorVersion;
//   List<WpFeaturedmedia>? wpFeaturedmedia;
//   List<WpAttachment>? wpAttachment;
//   List<WpTerm>? wpTerm;
//   List<Curies>? curies;
//
//
//
//   Links.fromJson(Map<String, dynamic> json) {
//     if (json['self'] != null) {
//       self = <Self>[];
//       json['self'].forEach((v) {
//         self!.add(new Self.fromJson(v));
//       });
//     }
//     if (json['collection'] != null) {
//       collection = <Collection>[];
//       json['collection'].forEach((v) {
//         collection!.add(new Collection.fromJson(v));
//       });
//     }
//     if (json['about'] != null) {
//       about = <About>[];
//       json['about'].forEach((v) {
//         about!.add(new About.fromJson(v));
//       });
//     }
//     if (json['author'] != null) {
//       author = <Author>[];
//       json['author'].forEach((v) {
//         author!.add(new Author.fromJson(v));
//       });
//     }
//     if (json['replies'] != null) {
//       replies = <Replies>[];
//       json['replies'].forEach((v) {
//         replies!.add(new Replies.fromJson(v));
//       });
//     }
//     if (json['version-history'] != null) {
//       versionHistory = <VersionHistory>[];
//       json['version-history'].forEach((v) {
//         versionHistory!.add(new VersionHistory.fromJson(v));
//       });
//     }
//     if (json['predecessor-version'] != null) {
//       predecessorVersion = <PredecessorVersion>[];
//       json['predecessor-version'].forEach((v) {
//         predecessorVersion!.add(new PredecessorVersion.fromJson(v));
//       });
//     }
//     if (json['wp:featuredmedia'] != null) {
//       wpFeaturedmedia = <WpFeaturedmedia>[];
//       json['wp:featuredmedia'].forEach((v) {
//         wpFeaturedmedia!.add(new WpFeaturedmedia.fromJson(v));
//       });
//     }
//     if (json['wp:attachment'] != null) {
//       wpAttachment = <WpAttachment>[];
//       json['wp:attachment'].forEach((v) {
//         wpAttachment!.add(new WpAttachment.fromJson(v));
//       });
//     }
//     if (json['wp:term'] != null) {
//       wpTerm = <WpTerm>[];
//       json['wp:term'].forEach((v) {
//         wpTerm!.add(new WpTerm.fromJson(v));
//       });
//     }
//     if (json['curies'] != null) {
//       curies = <Curies>[];
//       json['curies'].forEach((v) {
//         curies!.add(new Curies.fromJson(v));
//       });
//     }
//   }
//
// }
//
// class Self {
//   String? href;
//
//
//   Self.fromJson(Map<String, dynamic> json) {
//     href = json['href'];
//   }
//
// }
//
// class Author {
//   bool? embeddable;
//   String? href;
//
//
//   Author.fromJson(Map<String, dynamic> json) {
//     embeddable = json['embeddable'];
//     href = json['href'];
//   }
//
// }
//
// class VersionHistory {
//   int? count;
//   String? href;
//
//
//   VersionHistory.fromJson(Map<String, dynamic> json) {
//     count = json['count'];
//     href = json['href'];
//   }
//
// }
//
// class PredecessorVersion {
//   int? id;
//   String? href;
//
//
//   PredecessorVersion.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     href = json['href'];
//   }
//
// }
//
// class WpTerm {
//   String? taxonomy;
//   bool? embeddable;
//   String? href;
//
//   WpTerm.fromJson(Map<String, dynamic> json) {
//     taxonomy = json['taxonomy'];
//     embeddable = json['embeddable'];
//     href = json['href'];
//   }
//
// }
//
// class Curies {
//   String? name;
//   String? href;
//   bool? templated;
//
//
//   Curies.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     href = json['href'];
//     templated = json['templated'];
//   }
//
// }