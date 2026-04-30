.class public Lcom/google/gdata/data/photos/PhotoEntry;
.super Lcom/google/gdata/data/photos/GphotoEntry;
.source "PhotoEntry.java"

# interfaces
.implements Lcom/google/gdata/data/photos/AtomData;
.implements Lcom/google/gdata/data/photos/PhotoData;


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/photos/2007#photo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/photos/GphotoEntry",
        "<",
        "Lcom/google/gdata/data/photos/PhotoEntry;",
        ">;",
        "Lcom/google/gdata/data/photos/AtomData;",
        "Lcom/google/gdata/data/photos/PhotoData;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/photos/2007#photo"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string/jumbo v1, "http://schemas.google.com/g/2005#kind"

    const-string/jumbo v2, "http://schemas.google.com/photos/2007#photo"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/photos/PhotoEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/gdata/data/photos/GphotoEntry;-><init>()V

    .line 74
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/photos/PhotoEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/google/gdata/data/photos/GphotoEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 85
    return-void
.end method


# virtual methods
.method public addStreamId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1357
    new-instance v0, Lcom/google/gdata/data/photos/GphotoStreamId;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoStreamId;-><init>(Ljava/lang/String;)V

    .line 1358
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->addStreamIdsExt(Lcom/google/gdata/data/photos/GphotoStreamId;)V

    .line 1359
    return-void
.end method

.method public addStreamIdsExt(Lcom/google/gdata/data/photos/GphotoStreamId;)V
    .locals 1

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoEntry;->getStreamIdsExt()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    return-void
.end method

.method public clearGeoBoundingBox()V
    .locals 0

    .prologue
    .line 1353
    invoke-static {p0}, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->clearBox(Lcom/google/gdata/data/ExtensionPoint;)V

    .line 1354
    return-void
.end method

.method public clearPoint()V
    .locals 0

    .prologue
    .line 1349
    invoke-static {p0}, Lcom/google/gdata/data/geo/impl/PointDataImpl;->clearPoint(Lcom/google/gdata/data/ExtensionPoint;)V

    .line 1350
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 89
    const-class v0, Lcom/google/gdata/data/photos/PhotoEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/photos/GphotoEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 93
    const-class v0, Lcom/google/gdata/data/photos/PhotoEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoAccess;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 94
    const-class v0, Lcom/google/gdata/data/photos/PhotoEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoAlbumId;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 95
    const-class v0, Lcom/google/gdata/data/photos/PhotoEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoChecksum;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 96
    const-class v0, Lcom/google/gdata/data/photos/PhotoEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoClient;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 97
    const-class v0, Lcom/google/gdata/data/photos/PhotoEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoCommentCount;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 98
    const-class v7, Lcom/google/gdata/data/photos/PhotoEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v3, "gphoto"

    const-string/jumbo v5, "http://schemas.google.com/photos/2007"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "commentingEnabled"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 102
    const-class v7, Lcom/google/gdata/data/photos/PhotoEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/photos/ExifTags;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v3, "exif"

    const-string/jumbo v5, "http://schemas.google.com/photos/exif/2007"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "tags"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 106
    new-instance v0, Lcom/google/gdata/data/photos/ExifTags;

    invoke-direct {v0}, Lcom/google/gdata/data/photos/ExifTags;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/photos/ExifTags;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 107
    const-class v0, Lcom/google/gdata/data/photos/PhotoEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoFeaturedDate;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 108
    const-class v7, Lcom/google/gdata/data/photos/PhotoEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/geo/impl/W3CPoint;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v3, "geo"

    const-string/jumbo v5, "http://www.w3.org/2003/01/geo/wgs84_pos#"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Point"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 112
    new-instance v0, Lcom/google/gdata/data/geo/impl/W3CPoint;

    invoke-direct {v0}, Lcom/google/gdata/data/geo/impl/W3CPoint;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/geo/impl/W3CPoint;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 113
    const-class v7, Lcom/google/gdata/data/photos/PhotoEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/geo/impl/GeoRssBox;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v3, "georss"

    const-string/jumbo v5, "http://www.georss.org/georss"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "box"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 116
    const-class v7, Lcom/google/gdata/data/photos/PhotoEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/geo/impl/GeoRssPoint;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v3, "georss"

    const-string/jumbo v5, "http://www.georss.org/georss"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "point"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 119
    const-class v7, Lcom/google/gdata/data/photos/PhotoEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v3, "georss"

    const-string/jumbo v5, "http://www.georss.org/georss"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "where"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 122
    new-instance v0, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    invoke-direct {v0}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 123
    const-class v7, Lcom/google/gdata/data/photos/PhotoEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v3, "gml"

    const-string/jumbo v5, "http://www.opengis.net/gml"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Envelope"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 126
    new-instance v0, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    invoke-direct {v0}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 127
    const-class v7, Lcom/google/gdata/data/photos/PhotoEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/geo/impl/GmlPoint;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v3, "gml"

    const-string/jumbo v5, "http://www.opengis.net/gml"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Point"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 130
    new-instance v0, Lcom/google/gdata/data/geo/impl/GmlPoint;

    invoke-direct {v0}, Lcom/google/gdata/data/geo/impl/GmlPoint;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/geo/impl/GmlPoint;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 131
    const-class v0, Lcom/google/gdata/data/photos/PhotoEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoHeight;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 132
    const-class v0, Lcom/google/gdata/data/photos/PhotoEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoImageVersion;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 133
    const-class v7, Lcom/google/gdata/data/photos/PhotoEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v3, "media"

    const-string/jumbo v5, "http://search.yahoo.com/mrss/"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "group"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 136
    new-instance v0, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    invoke-direct {v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 137
    const-class v0, Lcom/google/gdata/data/photos/PhotoEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoOriginalVideo;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 138
    const-class v0, Lcom/google/gdata/data/photos/PhotoEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoPosition;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 139
    const-class v0, Lcom/google/gdata/data/photos/PhotoEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoRotation;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 140
    const-class v0, Lcom/google/gdata/data/photos/PhotoEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoSize;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 141
    const-class v0, Lcom/google/gdata/data/photos/PhotoEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoStarred;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 142
    const-class v0, Lcom/google/gdata/data/photos/PhotoEntry;

    const/4 v1, 0x1

    invoke-static {v4, v1}, Lcom/google/gdata/data/photos/GphotoStreamId;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 144
    const-class v0, Lcom/google/gdata/data/photos/PhotoEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoTimestamp;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 145
    const-class v0, Lcom/google/gdata/data/photos/PhotoEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoVersion;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 146
    const-class v0, Lcom/google/gdata/data/photos/PhotoEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoVideoStatus;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 147
    const-class v0, Lcom/google/gdata/data/photos/PhotoEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoViewCount;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 148
    const-class v0, Lcom/google/gdata/data/photos/PhotoEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoWidth;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto/16 :goto_0
.end method

.method public getAlbumAccess()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoEntry;->getAlbumAccessExt()Lcom/google/gdata/data/photos/GphotoAccess;

    move-result-object v0

    .line 1082
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoAccess;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAlbumAccessExt()Lcom/google/gdata/data/photos/GphotoAccess;
    .locals 1

    .prologue
    .line 157
    const-class v0, Lcom/google/gdata/data/photos/GphotoAccess;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoAccess;

    return-object v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1076
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoEntry;->getAlbumIdExt()Lcom/google/gdata/data/photos/GphotoAlbumId;

    move-result-object v0

    .line 1077
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoAlbumId;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAlbumIdExt()Lcom/google/gdata/data/photos/GphotoAlbumId;
    .locals 1

    .prologue
    .line 189
    const-class v0, Lcom/google/gdata/data/photos/GphotoAlbumId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoAlbumId;

    return-object v0
.end method

.method public getChecksum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1091
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoEntry;->getChecksumExt()Lcom/google/gdata/data/photos/GphotoChecksum;

    move-result-object v0

    .line 1092
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoChecksum;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getChecksumExt()Lcom/google/gdata/data/photos/GphotoChecksum;
    .locals 1

    .prologue
    .line 221
    const-class v0, Lcom/google/gdata/data/photos/GphotoChecksum;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoChecksum;

    return-object v0
.end method

.method public getClient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoEntry;->getClientExt()Lcom/google/gdata/data/photos/GphotoClient;

    move-result-object v0

    .line 1097
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoClient;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getClientExt()Lcom/google/gdata/data/photos/GphotoClient;
    .locals 1

    .prologue
    .line 255
    const-class v0, Lcom/google/gdata/data/photos/GphotoClient;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoClient;

    return-object v0
.end method

.method public getCommentCount()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1104
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoEntry;->getCommentCountExt()Lcom/google/gdata/data/photos/GphotoCommentCount;

    move-result-object v0

    .line 1105
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoCommentCount;->getValue()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getCommentCountExt()Lcom/google/gdata/data/photos/GphotoCommentCount;
    .locals 1

    .prologue
    .line 287
    const-class v0, Lcom/google/gdata/data/photos/GphotoCommentCount;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoCommentCount;

    return-object v0
.end method

.method public getCommentsEnabled()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1112
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoEntry;->getCommentsEnabledExt()Lcom/google/gdata/data/photos/GphotoCommentsEnabled;

    move-result-object v0

    .line 1113
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;->getValue()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public getCommentsEnabledExt()Lcom/google/gdata/data/photos/GphotoCommentsEnabled;
    .locals 1

    .prologue
    .line 319
    const-class v0, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;

    return-object v0
.end method

.method public getExifTags()Lcom/google/gdata/data/photos/ExifTags;
    .locals 1

    .prologue
    .line 351
    const-class v0, Lcom/google/gdata/data/photos/ExifTags;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/ExifTags;

    return-object v0
.end method

.method public getFeaturedDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 1120
    const-class v0, Lcom/google/gdata/data/photos/GphotoFeaturedDate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoFeaturedDate;

    .line 1121
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoFeaturedDate;->getValue()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getFeaturedDateExt()Lcom/google/gdata/data/photos/GphotoFeaturedDate;
    .locals 1

    .prologue
    .line 384
    const-class v0, Lcom/google/gdata/data/photos/GphotoFeaturedDate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoFeaturedDate;

    return-object v0
.end method

.method public varargs getFeed([Ljava/lang/String;)Lcom/google/gdata/data/photos/PhotoFeed;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1072
    const-class v0, Lcom/google/gdata/data/photos/PhotoFeed;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->getFeed(Ljava/lang/Class;[Ljava/lang/String;)Lcom/google/gdata/data/photos/GphotoFeed;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/PhotoFeed;

    return-object v0
.end method

.method public getGeoBoundingBox()Lcom/google/gdata/data/geo/Box;
    .locals 1

    .prologue
    .line 1345
    invoke-static {p0}, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->getBox(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/geo/Box;

    move-result-object v0

    return-object v0
.end method

.method public getGeoLocation()Lcom/google/gdata/data/geo/Point;
    .locals 1

    .prologue
    .line 1325
    invoke-static {p0}, Lcom/google/gdata/data/geo/impl/PointDataImpl;->getPoint(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/geo/Point;

    move-result-object v0

    return-object v0
.end method

.method public getGeoPoint()Lcom/google/gdata/data/geo/impl/W3CPoint;
    .locals 1

    .prologue
    .line 418
    const-class v0, Lcom/google/gdata/data/geo/impl/W3CPoint;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/geo/impl/W3CPoint;

    return-object v0
.end method

.method public getGeoRssBox()Lcom/google/gdata/data/geo/impl/GeoRssBox;
    .locals 1

    .prologue
    .line 449
    const-class v0, Lcom/google/gdata/data/geo/impl/GeoRssBox;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/geo/impl/GeoRssBox;

    return-object v0
.end method

.method public getGeoRssPoint()Lcom/google/gdata/data/geo/impl/GeoRssPoint;
    .locals 1

    .prologue
    .line 481
    const-class v0, Lcom/google/gdata/data/geo/impl/GeoRssPoint;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/geo/impl/GeoRssPoint;

    return-object v0
.end method

.method public getGeoRssWhere()Lcom/google/gdata/data/geo/impl/GeoRssWhere;
    .locals 1

    .prologue
    .line 513
    const-class v0, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    return-object v0
.end method

.method public getGmlEnvelope()Lcom/google/gdata/data/geo/impl/GmlEnvelope;
    .locals 1

    .prologue
    .line 545
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    return-object v0
.end method

.method public getGmlPoint()Lcom/google/gdata/data/geo/impl/GmlPoint;
    .locals 1

    .prologue
    .line 577
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlPoint;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/geo/impl/GmlPoint;

    return-object v0
.end method

.method public getHeight()Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1128
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoEntry;->getHeightExt()Lcom/google/gdata/data/photos/GphotoHeight;

    move-result-object v0

    .line 1129
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoHeight;->getValue()Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeightExt()Lcom/google/gdata/data/photos/GphotoHeight;
    .locals 1

    .prologue
    .line 608
    const-class v0, Lcom/google/gdata/data/photos/GphotoHeight;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoHeight;

    return-object v0
.end method

.method public getImageVersionExt()Lcom/google/gdata/data/photos/GphotoImageVersion;
    .locals 1

    .prologue
    .line 639
    const-class v0, Lcom/google/gdata/data/photos/GphotoImageVersion;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoImageVersion;

    return-object v0
.end method

.method public getMediaCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1371
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoEntry;->getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;

    move-result-object v0

    .line 1372
    if-nez v0, :cond_0

    .line 1373
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1375
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getCategories()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1379
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoEntry;->getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;

    move-result-object v0

    .line 1380
    if-nez v0, :cond_0

    .line 1381
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1383
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getContents()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaCredits()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaCredit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1387
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoEntry;->getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;

    move-result-object v0

    .line 1388
    if-nez v0, :cond_0

    .line 1389
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1391
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getCredits()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;
    .locals 1

    .prologue
    .line 671
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    return-object v0
.end method

.method public getMediaKeywords()Lcom/google/gdata/data/media/mediarss/MediaKeywords;
    .locals 1

    .prologue
    .line 1395
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoEntry;->getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;

    move-result-object v0

    .line 1396
    if-nez v0, :cond_0

    .line 1397
    const/4 v0, 0x0

    .line 1399
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getKeywords()Lcom/google/gdata/data/media/mediarss/MediaKeywords;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaThumbnails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaThumbnail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1403
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoEntry;->getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;

    move-result-object v0

    .line 1404
    if-nez v0, :cond_0

    .line 1405
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1407
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getThumbnails()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getOriginalVideo()Lcom/google/gdata/data/photos/GphotoOriginalVideo;
    .locals 1

    .prologue
    .line 703
    const-class v0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;

    return-object v0
.end method

.method public getPosition()Ljava/lang/Float;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1136
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoEntry;->getPositionExt()Lcom/google/gdata/data/photos/GphotoPosition;

    move-result-object v0

    .line 1137
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoPosition;->getValue()Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public getPositionExt()Lcom/google/gdata/data/photos/GphotoPosition;
    .locals 1

    .prologue
    .line 735
    const-class v0, Lcom/google/gdata/data/photos/GphotoPosition;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoPosition;

    return-object v0
.end method

.method public getRotation()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1144
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoEntry;->getRotationExt()Lcom/google/gdata/data/photos/GphotoRotation;

    move-result-object v0

    .line 1145
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoRotation;->getValue()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getRotationExt()Lcom/google/gdata/data/photos/GphotoRotation;
    .locals 1

    .prologue
    .line 767
    const-class v0, Lcom/google/gdata/data/photos/GphotoRotation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoRotation;

    return-object v0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1152
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoEntry;->getSizeExt()Lcom/google/gdata/data/photos/GphotoSize;

    move-result-object v0

    .line 1153
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoSize;->getValue()Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public getSizeExt()Lcom/google/gdata/data/photos/GphotoSize;
    .locals 1

    .prologue
    .line 799
    const-class v0, Lcom/google/gdata/data/photos/GphotoSize;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoSize;

    return-object v0
.end method

.method public getStarredExt()Lcom/google/gdata/data/photos/GphotoStarred;
    .locals 1

    .prologue
    .line 830
    const-class v0, Lcom/google/gdata/data/photos/GphotoStarred;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoStarred;

    return-object v0
.end method

.method public getStreamIds()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1362
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoEntry;->getStreamIdsExt()Ljava/util/List;

    move-result-object v0

    .line 1363
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1364
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoStreamId;

    .line 1365
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoStreamId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1367
    :cond_0
    return-object v1
.end method

.method public getStreamIdsExt()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/photos/GphotoStreamId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 864
    const-class v0, Lcom/google/gdata/data/photos/GphotoStreamId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1160
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoEntry;->getTimestampExt()Lcom/google/gdata/data/photos/GphotoTimestamp;

    move-result-object v1

    .line 1161
    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {v1}, Lcom/google/gdata/data/photos/GphotoTimestamp;->getValue()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public getTimestampExt()Lcom/google/gdata/data/photos/GphotoTimestamp;
    .locals 1

    .prologue
    .line 891
    const-class v0, Lcom/google/gdata/data/photos/GphotoTimestamp;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoTimestamp;

    return-object v0
.end method

.method public getTotalStars()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1434
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoEntry;->getStarredExt()Lcom/google/gdata/data/photos/GphotoStarred;

    move-result-object v0

    .line 1435
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoStarred;->getTotal()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1168
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoEntry;->getVersionExt()Lcom/google/gdata/data/photos/GphotoVersion;

    move-result-object v0

    .line 1169
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoVersion;->getValue()Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public getVersionExt()Lcom/google/gdata/data/photos/GphotoVersion;
    .locals 1

    .prologue
    .line 923
    const-class v0, Lcom/google/gdata/data/photos/GphotoVersion;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoVersion;

    return-object v0
.end method

.method public getVideoStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1086
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoEntry;->getVideoStatusExt()Lcom/google/gdata/data/photos/GphotoVideoStatus;

    move-result-object v0

    .line 1087
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoVideoStatus;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoStatusExt()Lcom/google/gdata/data/photos/GphotoVideoStatus;
    .locals 1

    .prologue
    .line 955
    const-class v0, Lcom/google/gdata/data/photos/GphotoVideoStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoVideoStatus;

    return-object v0
.end method

.method public getViewCount()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 1176
    const-class v0, Lcom/google/gdata/data/photos/GphotoViewCount;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoViewCount;

    .line 1177
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoViewCount;->getValue()Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewCountExt()Lcom/google/gdata/data/photos/GphotoViewCount;
    .locals 1

    .prologue
    .line 989
    const-class v0, Lcom/google/gdata/data/photos/GphotoViewCount;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoViewCount;

    return-object v0
.end method

.method public getWidth()Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1184
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoEntry;->getWidthExt()Lcom/google/gdata/data/photos/GphotoWidth;

    move-result-object v0

    .line 1185
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoWidth;->getValue()Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public getWidthExt()Lcom/google/gdata/data/photos/GphotoWidth;
    .locals 1

    .prologue
    .line 1021
    const-class v0, Lcom/google/gdata/data/photos/GphotoWidth;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoWidth;

    return-object v0
.end method

.method public hasAlbumAccessExt()Z
    .locals 1

    .prologue
    .line 180
    const-class v0, Lcom/google/gdata/data/photos/GphotoAccess;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasAlbumIdExt()Z
    .locals 1

    .prologue
    .line 212
    const-class v0, Lcom/google/gdata/data/photos/GphotoAlbumId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasChecksumExt()Z
    .locals 1

    .prologue
    .line 246
    const-class v0, Lcom/google/gdata/data/photos/GphotoChecksum;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasClientExt()Z
    .locals 1

    .prologue
    .line 278
    const-class v0, Lcom/google/gdata/data/photos/GphotoClient;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasCommentCountExt()Z
    .locals 1

    .prologue
    .line 310
    const-class v0, Lcom/google/gdata/data/photos/GphotoCommentCount;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasCommentsEnabledExt()Z
    .locals 1

    .prologue
    .line 342
    const-class v0, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasExifTags()Z
    .locals 1

    .prologue
    .line 374
    const-class v0, Lcom/google/gdata/data/photos/ExifTags;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasFeaturedDateExt()Z
    .locals 1

    .prologue
    .line 409
    const-class v0, Lcom/google/gdata/data/photos/GphotoFeaturedDate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasGeoPoint()Z
    .locals 1

    .prologue
    .line 440
    const-class v0, Lcom/google/gdata/data/geo/impl/W3CPoint;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasGeoRssBox()Z
    .locals 1

    .prologue
    .line 472
    const-class v0, Lcom/google/gdata/data/geo/impl/GeoRssBox;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasGeoRssPoint()Z
    .locals 1

    .prologue
    .line 504
    const-class v0, Lcom/google/gdata/data/geo/impl/GeoRssPoint;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasGeoRssWhere()Z
    .locals 1

    .prologue
    .line 536
    const-class v0, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasGmlEnvelope()Z
    .locals 1

    .prologue
    .line 568
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasGmlPoint()Z
    .locals 1

    .prologue
    .line 599
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlPoint;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasHeightExt()Z
    .locals 1

    .prologue
    .line 630
    const-class v0, Lcom/google/gdata/data/photos/GphotoHeight;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasImageVersionExt()Z
    .locals 1

    .prologue
    .line 662
    const-class v0, Lcom/google/gdata/data/photos/GphotoImageVersion;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasMediaGroup()Z
    .locals 1

    .prologue
    .line 694
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasOriginalVideo()Z
    .locals 1

    .prologue
    .line 726
    const-class v0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasPositionExt()Z
    .locals 1

    .prologue
    .line 758
    const-class v0, Lcom/google/gdata/data/photos/GphotoPosition;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasRotationExt()Z
    .locals 1

    .prologue
    .line 790
    const-class v0, Lcom/google/gdata/data/photos/GphotoRotation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasSizeExt()Z
    .locals 1

    .prologue
    .line 821
    const-class v0, Lcom/google/gdata/data/photos/GphotoSize;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasStarredExt()Z
    .locals 1

    .prologue
    .line 855
    const-class v0, Lcom/google/gdata/data/photos/GphotoStarred;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasStreamIdsExt()Z
    .locals 1

    .prologue
    .line 882
    const-class v0, Lcom/google/gdata/data/photos/GphotoStreamId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasTimestampExt()Z
    .locals 1

    .prologue
    .line 914
    const-class v0, Lcom/google/gdata/data/photos/GphotoTimestamp;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasVersionExt()Z
    .locals 1

    .prologue
    .line 946
    const-class v0, Lcom/google/gdata/data/photos/GphotoVersion;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasVideoStatusExt()Z
    .locals 1

    .prologue
    .line 980
    const-class v0, Lcom/google/gdata/data/photos/GphotoVideoStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasViewCountExt()Z
    .locals 1

    .prologue
    .line 1012
    const-class v0, Lcom/google/gdata/data/photos/GphotoViewCount;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasWidthExt()Z
    .locals 1

    .prologue
    .line 1043
    const-class v0, Lcom/google/gdata/data/photos/GphotoWidth;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isStarred()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1420
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoEntry;->getStarredExt()Lcom/google/gdata/data/photos/GphotoStarred;

    move-result-object v0

    .line 1421
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoStarred;->getValue()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public setAlbumAccess(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1205
    const/4 v0, 0x0

    .line 1206
    if-eqz p1, :cond_0

    .line 1207
    new-instance v0, Lcom/google/gdata/data/photos/GphotoAccess;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoAccess;-><init>(Ljava/lang/String;)V

    .line 1209
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->setAlbumAccessExt(Lcom/google/gdata/data/photos/GphotoAccess;)V

    .line 1210
    return-void
.end method

.method public setAlbumAccessExt(Lcom/google/gdata/data/photos/GphotoAccess;)V
    .locals 1

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 168
    const-class v0, Lcom/google/gdata/data/photos/GphotoAccess;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setAlbumId(Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 1189
    const/4 v0, 0x0

    .line 1190
    if-eqz p1, :cond_0

    .line 1191
    invoke-static {p1}, Lcom/google/gdata/data/photos/GphotoAlbumId;->from(Ljava/lang/Long;)Lcom/google/gdata/data/photos/GphotoAlbumId;

    move-result-object v0

    .line 1193
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->setAlbumIdExt(Lcom/google/gdata/data/photos/GphotoAlbumId;)V

    .line 1194
    return-void
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1197
    const/4 v0, 0x0

    .line 1198
    if-eqz p1, :cond_0

    .line 1199
    new-instance v0, Lcom/google/gdata/data/photos/GphotoAlbumId;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoAlbumId;-><init>(Ljava/lang/String;)V

    .line 1201
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->setAlbumIdExt(Lcom/google/gdata/data/photos/GphotoAlbumId;)V

    .line 1202
    return-void
.end method

.method public setAlbumIdExt(Lcom/google/gdata/data/photos/GphotoAlbumId;)V
    .locals 1

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    const-class v0, Lcom/google/gdata/data/photos/GphotoAlbumId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setChecksum(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1221
    const/4 v0, 0x0

    .line 1222
    if-eqz p1, :cond_0

    .line 1223
    new-instance v0, Lcom/google/gdata/data/photos/GphotoChecksum;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoChecksum;-><init>(Ljava/lang/String;)V

    .line 1225
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->setChecksumExt(Lcom/google/gdata/data/photos/GphotoChecksum;)V

    .line 1226
    return-void
.end method

.method public setChecksumExt(Lcom/google/gdata/data/photos/GphotoChecksum;)V
    .locals 1

    .prologue
    .line 231
    if-nez p1, :cond_0

    .line 232
    const-class v0, Lcom/google/gdata/data/photos/GphotoChecksum;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setClient(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1229
    const/4 v0, 0x0

    .line 1230
    if-eqz p1, :cond_0

    .line 1231
    new-instance v0, Lcom/google/gdata/data/photos/GphotoClient;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoClient;-><init>(Ljava/lang/String;)V

    .line 1233
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->setClientExt(Lcom/google/gdata/data/photos/GphotoClient;)V

    .line 1234
    return-void
.end method

.method public setClientExt(Lcom/google/gdata/data/photos/GphotoClient;)V
    .locals 1

    .prologue
    .line 265
    if-nez p1, :cond_0

    .line 266
    const-class v0, Lcom/google/gdata/data/photos/GphotoClient;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setCommentCount(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 1237
    const/4 v0, 0x0

    .line 1238
    if-eqz p1, :cond_0

    .line 1239
    new-instance v0, Lcom/google/gdata/data/photos/GphotoCommentCount;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoCommentCount;-><init>(Ljava/lang/Integer;)V

    .line 1241
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->setCommentCountExt(Lcom/google/gdata/data/photos/GphotoCommentCount;)V

    .line 1242
    return-void
.end method

.method public setCommentCountExt(Lcom/google/gdata/data/photos/GphotoCommentCount;)V
    .locals 1

    .prologue
    .line 297
    if-nez p1, :cond_0

    .line 298
    const-class v0, Lcom/google/gdata/data/photos/GphotoCommentCount;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setCommentsEnabled(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 1245
    const/4 v0, 0x0

    .line 1246
    if-eqz p1, :cond_0

    .line 1247
    new-instance v0, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;-><init>(Ljava/lang/Boolean;)V

    .line 1249
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->setCommentsEnabledExt(Lcom/google/gdata/data/photos/GphotoCommentsEnabled;)V

    .line 1250
    return-void
.end method

.method public setCommentsEnabledExt(Lcom/google/gdata/data/photos/GphotoCommentsEnabled;)V
    .locals 1

    .prologue
    .line 329
    if-nez p1, :cond_0

    .line 330
    const-class v0, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setExifTags(Lcom/google/gdata/data/photos/ExifTags;)V
    .locals 1

    .prologue
    .line 361
    if-nez p1, :cond_0

    .line 362
    const-class v0, Lcom/google/gdata/data/photos/ExifTags;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 366
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setFeaturedDate(Ljava/util/Date;)V
    .locals 1

    .prologue
    .line 1253
    const/4 v0, 0x0

    .line 1254
    if-eqz p1, :cond_0

    .line 1255
    new-instance v0, Lcom/google/gdata/data/photos/GphotoFeaturedDate;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoFeaturedDate;-><init>(Ljava/util/Date;)V

    .line 1257
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->setFeaturedDateExt(Lcom/google/gdata/data/photos/GphotoFeaturedDate;)V

    .line 1258
    return-void
.end method

.method public setFeaturedDateExt(Lcom/google/gdata/data/photos/GphotoFeaturedDate;)V
    .locals 1

    .prologue
    .line 394
    if-nez p1, :cond_0

    .line 395
    const-class v0, Lcom/google/gdata/data/photos/GphotoFeaturedDate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 399
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setGeoBoundingBox(Lcom/google/gdata/data/geo/Box;)V
    .locals 0

    .prologue
    .line 1341
    invoke-static {p0, p1}, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->setBox(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/geo/Box;)V

    .line 1342
    return-void
.end method

.method public setGeoBoundingBox(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V
    .locals 1

    .prologue
    .line 1337
    new-instance v0, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    invoke-direct {v0, p1, p2}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;-><init>(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->setGeoBoundingBox(Lcom/google/gdata/data/geo/Box;)V

    .line 1338
    return-void
.end method

.method public setGeoLocation(Lcom/google/gdata/data/geo/Point;)V
    .locals 0

    .prologue
    .line 1333
    invoke-static {p0, p1}, Lcom/google/gdata/data/geo/impl/PointDataImpl;->setPoint(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/geo/Point;)V

    .line 1334
    return-void
.end method

.method public setGeoLocation(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 1

    .prologue
    .line 1329
    new-instance v0, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    invoke-direct {v0, p1, p2}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->setGeoLocation(Lcom/google/gdata/data/geo/Point;)V

    .line 1330
    return-void
.end method

.method public setGeoPoint(Lcom/google/gdata/data/geo/impl/W3CPoint;)V
    .locals 1

    .prologue
    .line 427
    if-nez p1, :cond_0

    .line 428
    const-class v0, Lcom/google/gdata/data/geo/impl/W3CPoint;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 432
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setGeoRssBox(Lcom/google/gdata/data/geo/impl/GeoRssBox;)V
    .locals 1

    .prologue
    .line 459
    if-nez p1, :cond_0

    .line 460
    const-class v0, Lcom/google/gdata/data/geo/impl/GeoRssBox;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 464
    :goto_0
    return-void

    .line 462
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setGeoRssPoint(Lcom/google/gdata/data/geo/impl/GeoRssPoint;)V
    .locals 1

    .prologue
    .line 491
    if-nez p1, :cond_0

    .line 492
    const-class v0, Lcom/google/gdata/data/geo/impl/GeoRssPoint;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 496
    :goto_0
    return-void

    .line 494
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setGeoRssWhere(Lcom/google/gdata/data/geo/impl/GeoRssWhere;)V
    .locals 1

    .prologue
    .line 523
    if-nez p1, :cond_0

    .line 524
    const-class v0, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 528
    :goto_0
    return-void

    .line 526
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setGmlEnvelope(Lcom/google/gdata/data/geo/impl/GmlEnvelope;)V
    .locals 1

    .prologue
    .line 555
    if-nez p1, :cond_0

    .line 556
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 560
    :goto_0
    return-void

    .line 558
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setGmlPoint(Lcom/google/gdata/data/geo/impl/GmlPoint;)V
    .locals 1

    .prologue
    .line 586
    if-nez p1, :cond_0

    .line 587
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlPoint;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 591
    :goto_0
    return-void

    .line 589
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setHeight(Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 1261
    const/4 v0, 0x0

    .line 1262
    if-eqz p1, :cond_0

    .line 1263
    new-instance v0, Lcom/google/gdata/data/photos/GphotoHeight;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoHeight;-><init>(Ljava/lang/Long;)V

    .line 1265
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->setHeightExt(Lcom/google/gdata/data/photos/GphotoHeight;)V

    .line 1266
    return-void
.end method

.method public setHeightExt(Lcom/google/gdata/data/photos/GphotoHeight;)V
    .locals 1

    .prologue
    .line 617
    if-nez p1, :cond_0

    .line 618
    const-class v0, Lcom/google/gdata/data/photos/GphotoHeight;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 622
    :goto_0
    return-void

    .line 620
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setImageVersionExt(Lcom/google/gdata/data/photos/GphotoImageVersion;)V
    .locals 1

    .prologue
    .line 649
    if-nez p1, :cond_0

    .line 650
    const-class v0, Lcom/google/gdata/data/photos/GphotoImageVersion;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 654
    :goto_0
    return-void

    .line 652
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setKeywords(Lcom/google/gdata/data/media/mediarss/MediaKeywords;)V
    .locals 1

    .prologue
    .line 1411
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoEntry;->getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;

    move-result-object v0

    .line 1412
    if-nez v0, :cond_0

    .line 1413
    new-instance v0, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    invoke-direct {v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;-><init>()V

    .line 1414
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->setMediaGroup(Lcom/google/gdata/data/media/mediarss/MediaGroup;)V

    .line 1416
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->setKeywords(Lcom/google/gdata/data/media/mediarss/MediaKeywords;)V

    .line 1417
    return-void
.end method

.method public setMediaGroup(Lcom/google/gdata/data/media/mediarss/MediaGroup;)V
    .locals 1

    .prologue
    .line 681
    if-nez p1, :cond_0

    .line 682
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 686
    :goto_0
    return-void

    .line 684
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setOriginalVideo(Lcom/google/gdata/data/photos/GphotoOriginalVideo;)V
    .locals 1

    .prologue
    .line 713
    if-nez p1, :cond_0

    .line 714
    const-class v0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 718
    :goto_0
    return-void

    .line 716
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setPosition(Ljava/lang/Float;)V
    .locals 1

    .prologue
    .line 1269
    const/4 v0, 0x0

    .line 1270
    if-eqz p1, :cond_0

    .line 1271
    new-instance v0, Lcom/google/gdata/data/photos/GphotoPosition;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoPosition;-><init>(Ljava/lang/Float;)V

    .line 1273
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->setPositionExt(Lcom/google/gdata/data/photos/GphotoPosition;)V

    .line 1274
    return-void
.end method

.method public setPositionExt(Lcom/google/gdata/data/photos/GphotoPosition;)V
    .locals 1

    .prologue
    .line 745
    if-nez p1, :cond_0

    .line 746
    const-class v0, Lcom/google/gdata/data/photos/GphotoPosition;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 750
    :goto_0
    return-void

    .line 748
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setRotation(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 1277
    const/4 v0, 0x0

    .line 1278
    if-eqz p1, :cond_0

    .line 1279
    new-instance v0, Lcom/google/gdata/data/photos/GphotoRotation;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoRotation;-><init>(Ljava/lang/Integer;)V

    .line 1281
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->setRotationExt(Lcom/google/gdata/data/photos/GphotoRotation;)V

    .line 1282
    return-void
.end method

.method public setRotationExt(Lcom/google/gdata/data/photos/GphotoRotation;)V
    .locals 1

    .prologue
    .line 777
    if-nez p1, :cond_0

    .line 778
    const-class v0, Lcom/google/gdata/data/photos/GphotoRotation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 782
    :goto_0
    return-void

    .line 780
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setSize(Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 1285
    const/4 v0, 0x0

    .line 1286
    if-eqz p1, :cond_0

    .line 1287
    new-instance v0, Lcom/google/gdata/data/photos/GphotoSize;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoSize;-><init>(Ljava/lang/Long;)V

    .line 1289
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->setSizeExt(Lcom/google/gdata/data/photos/GphotoSize;)V

    .line 1290
    return-void
.end method

.method public setSizeExt(Lcom/google/gdata/data/photos/GphotoSize;)V
    .locals 1

    .prologue
    .line 808
    if-nez p1, :cond_0

    .line 809
    const-class v0, Lcom/google/gdata/data/photos/GphotoSize;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 813
    :goto_0
    return-void

    .line 811
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setStarred(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 1425
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoEntry;->getStarredExt()Lcom/google/gdata/data/photos/GphotoStarred;

    move-result-object v0

    .line 1426
    if-nez v0, :cond_0

    .line 1427
    new-instance v0, Lcom/google/gdata/data/photos/GphotoStarred;

    invoke-direct {v0}, Lcom/google/gdata/data/photos/GphotoStarred;-><init>()V

    .line 1428
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->setStarredExt(Lcom/google/gdata/data/photos/GphotoStarred;)V

    .line 1430
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/photos/GphotoStarred;->setValue(Ljava/lang/Boolean;)V

    .line 1431
    return-void
.end method

.method public setStarredExt(Lcom/google/gdata/data/photos/GphotoStarred;)V
    .locals 1

    .prologue
    .line 840
    if-nez p1, :cond_0

    .line 841
    const-class v0, Lcom/google/gdata/data/photos/GphotoStarred;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 845
    :goto_0
    return-void

    .line 843
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 1

    .prologue
    .line 1293
    const/4 v0, 0x0

    .line 1294
    if-eqz p1, :cond_0

    .line 1295
    new-instance v0, Lcom/google/gdata/data/photos/GphotoTimestamp;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoTimestamp;-><init>(Ljava/util/Date;)V

    .line 1297
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->setTimestampExt(Lcom/google/gdata/data/photos/GphotoTimestamp;)V

    .line 1298
    return-void
.end method

.method public setTimestampExt(Lcom/google/gdata/data/photos/GphotoTimestamp;)V
    .locals 1

    .prologue
    .line 901
    if-nez p1, :cond_0

    .line 902
    const-class v0, Lcom/google/gdata/data/photos/GphotoTimestamp;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 906
    :goto_0
    return-void

    .line 904
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setTotalStars(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 1439
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/PhotoEntry;->getStarredExt()Lcom/google/gdata/data/photos/GphotoStarred;

    move-result-object v0

    .line 1440
    if-nez v0, :cond_0

    .line 1441
    new-instance v0, Lcom/google/gdata/data/photos/GphotoStarred;

    invoke-direct {v0}, Lcom/google/gdata/data/photos/GphotoStarred;-><init>()V

    .line 1442
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->setStarredExt(Lcom/google/gdata/data/photos/GphotoStarred;)V

    .line 1444
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/photos/GphotoStarred;->setTotal(Ljava/lang/Integer;)V

    .line 1445
    return-void
.end method

.method public setVersion(Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 1301
    const/4 v0, 0x0

    .line 1302
    if-eqz p1, :cond_0

    .line 1303
    new-instance v0, Lcom/google/gdata/data/photos/GphotoVersion;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoVersion;-><init>(Ljava/lang/Long;)V

    .line 1305
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->setVersionExt(Lcom/google/gdata/data/photos/GphotoVersion;)V

    .line 1306
    return-void
.end method

.method public setVersionExt(Lcom/google/gdata/data/photos/GphotoVersion;)V
    .locals 1

    .prologue
    .line 933
    if-nez p1, :cond_0

    .line 934
    const-class v0, Lcom/google/gdata/data/photos/GphotoVersion;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 938
    :goto_0
    return-void

    .line 936
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setVideoStatus(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1213
    const/4 v0, 0x0

    .line 1214
    if-eqz p1, :cond_0

    .line 1215
    new-instance v0, Lcom/google/gdata/data/photos/GphotoVideoStatus;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoVideoStatus;-><init>(Ljava/lang/String;)V

    .line 1217
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->setVideoStatusExt(Lcom/google/gdata/data/photos/GphotoVideoStatus;)V

    .line 1218
    return-void
.end method

.method public setVideoStatusExt(Lcom/google/gdata/data/photos/GphotoVideoStatus;)V
    .locals 1

    .prologue
    .line 965
    if-nez p1, :cond_0

    .line 966
    const-class v0, Lcom/google/gdata/data/photos/GphotoVideoStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 970
    :goto_0
    return-void

    .line 968
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setViewCount(Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 1309
    const/4 v0, 0x0

    .line 1310
    if-eqz p1, :cond_0

    .line 1311
    new-instance v0, Lcom/google/gdata/data/photos/GphotoViewCount;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoViewCount;-><init>(Ljava/lang/Long;)V

    .line 1313
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->setViewCountExt(Lcom/google/gdata/data/photos/GphotoViewCount;)V

    .line 1314
    return-void
.end method

.method public setViewCountExt(Lcom/google/gdata/data/photos/GphotoViewCount;)V
    .locals 1

    .prologue
    .line 999
    if-nez p1, :cond_0

    .line 1000
    const-class v0, Lcom/google/gdata/data/photos/GphotoViewCount;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 1004
    :goto_0
    return-void

    .line 1002
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setWidth(Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 1317
    const/4 v0, 0x0

    .line 1318
    if-eqz p1, :cond_0

    .line 1319
    new-instance v0, Lcom/google/gdata/data/photos/GphotoWidth;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoWidth;-><init>(Ljava/lang/Long;)V

    .line 1321
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->setWidthExt(Lcom/google/gdata/data/photos/GphotoWidth;)V

    .line 1322
    return-void
.end method

.method public setWidthExt(Lcom/google/gdata/data/photos/GphotoWidth;)V
    .locals 1

    .prologue
    .line 1030
    if-nez p1, :cond_0

    .line 1031
    const-class v0, Lcom/google/gdata/data/photos/GphotoWidth;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/PhotoEntry;->removeExtension(Ljava/lang/Class;)V

    .line 1035
    :goto_0
    return-void

    .line 1033
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/PhotoEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{PhotoEntry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 1048
    return-void
.end method
