.class public Lcom/google/gdata/data/docs/DocumentListEntry;
.super Lcom/google/gdata/data/media/MediaEntry;
.source "DocumentListEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/docs/2007#item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/media/MediaEntry",
        "<",
        "Lcom/google/gdata/data/docs/DocumentListEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final FOLDERS_NAMESPACE:Ljava/lang/String; = "http://schemas.google.com/docs/2007/folders"

.field private static final FOLDER_PATTERN:Ljava/util/regex/Pattern;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/docs/2007#item"

.field public static final LABEL:Ljava/lang/String; = "item"

.field public static final PARENT_NAMESPACE:Ljava/lang/String; = "http://schemas.google.com/docs/2007#parent"

.field public static final REVISIONS_NAMESPACE:Ljava/lang/String; = "http://schemas.google.com/docs/2007/revisions"

.field public static final THUMBNAIL_NAMESPACE:Ljava/lang/String; = "http://schemas.google.com/docs/2007/thumbnail"

.field public static final UNKNOWN_CATEGORY:Lcom/google/gdata/data/Category;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNKNOWN_KIND:Ljava/lang/String; = "http://schemas.google.com/docs/2007#unknown"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNKNOWN_LABEL:Ljava/lang/String; = "unknown"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 146
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string/jumbo v1, "http://schemas.google.com/g/2005#kind"

    const-string/jumbo v2, "http://schemas.google.com/docs/2007#unknown"

    const-string/jumbo v3, "unknown"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry;->UNKNOWN_CATEGORY:Lcom/google/gdata/data/Category;

    .line 164
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string/jumbo v1, "http://schemas.google.com/g/2005#kind"

    const-string/jumbo v2, "http://schemas.google.com/docs/2007#item"

    const-string/jumbo v3, "item"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "http://schemas.google.com/docs/2007/folders"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(:?/[^/]+)?$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/docs/DocumentListEntry;->FOLDER_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/google/gdata/data/media/MediaEntry;-><init>()V

    .line 185
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
    .line 192
    invoke-direct {p0, p1}, Lcom/google/gdata/data/media/MediaEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 193
    return-void
.end method

.method protected static getMimeTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    invoke-static {p0}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->fromFileName(Ljava/lang/String;)Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/data/docs/DocumentListEntry$MediaType;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addFolder(Lcom/google/gdata/data/Person;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://schemas.google.com/docs/2007/folders/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/gdata/data/Person;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    new-instance v1, Lcom/google/gdata/data/Category;

    invoke-direct {v1, v0, p2, p2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 434
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2

    .prologue
    .line 197
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/MediaEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 198
    const-class v0, Lcom/google/gdata/data/docs/DocumentListEntry;

    const-class v1, Lcom/google/gdata/data/docs/Description;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 199
    const-class v0, Lcom/google/gdata/data/docs/DocumentListEntry;

    const-class v1, Lcom/google/gdata/data/docs/DocumentListAclFeedLink;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 200
    const-class v0, Lcom/google/gdata/data/docs/DocumentListEntry;

    const-class v1, Lcom/google/gdata/data/docs/Filename;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 201
    const-class v0, Lcom/google/gdata/data/docs/DocumentListEntry;

    const-class v1, Lcom/google/gdata/data/docs/LastCommented;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 202
    const-class v0, Lcom/google/gdata/data/docs/DocumentListEntry;

    const-class v1, Lcom/google/gdata/data/extensions/LastModifiedBy;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 203
    const-class v0, Lcom/google/gdata/data/docs/DocumentListEntry;

    const-class v1, Lcom/google/gdata/data/extensions/LastViewed;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 204
    const-class v0, Lcom/google/gdata/data/docs/DocumentListEntry;

    const-class v1, Lcom/google/gdata/data/docs/Md5Checksum;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 205
    const-class v0, Lcom/google/gdata/data/docs/DocumentListEntry;

    const-class v1, Lcom/google/gdata/data/extensions/QuotaBytesUsed;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 206
    const-class v0, Lcom/google/gdata/data/docs/DocumentListEntry;

    const-class v1, Lcom/google/gdata/data/extensions/ResourceId;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 207
    const-class v0, Lcom/google/gdata/data/docs/DocumentListEntry;

    const-class v1, Lcom/google/gdata/data/docs/SuggestedFilename;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 208
    const-class v0, Lcom/google/gdata/data/docs/DocumentListEntry;

    const-class v1, Lcom/google/gdata/data/docs/WritersCanInvite;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 209
    return-void
.end method

.method public getAclFeed()Lcom/google/gdata/data/acl/AclFeed;
    .locals 1

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getAclFeedLink()Lcom/google/gdata/data/docs/DocumentListAclFeedLink;

    move-result-object v0

    .line 471
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/data/docs/DocumentListAclFeedLink;->getFeed()Lcom/google/gdata/data/BaseFeed;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/acl/AclFeed;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAclFeedLink()Lcom/google/gdata/data/docs/DocumentListAclFeedLink;
    .locals 4

    .prologue
    .line 459
    const-class v0, Lcom/google/gdata/data/docs/DocumentListAclFeedLink;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 461
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/DocumentListAclFeedLink;

    .line 462
    const-string/jumbo v2, "http://schemas.google.com/acl/2007#accessControlList"

    invoke-virtual {v0}, Lcom/google/gdata/data/docs/DocumentListAclFeedLink;->getRel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 485
    const-class v0, Lcom/google/gdata/data/docs/Description;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/Description;

    .line 486
    if-nez v0, :cond_0

    .line 487
    const/4 v0, 0x0

    .line 489
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/docs/Description;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/gdata/data/docs/Description;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDocId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getResourceId()Ljava/lang/String;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_0

    .line 261
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 262
    if-lez v1, :cond_0

    .line 263
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    :cond_0
    return-object v0
.end method

.method public getDocumentLink()Lcom/google/gdata/data/Link;
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Lcom/google/gdata/data/media/MediaEntry;->getHtmlLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    const-class v0, Lcom/google/gdata/data/docs/Filename;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/Filename;

    .line 512
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/docs/Filename;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFolders()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 444
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 445
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Category;

    .line 446
    sget-object v1, Lcom/google/gdata/data/docs/DocumentListEntry;->FOLDER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Lcom/google/gdata/data/Category;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 447
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    invoke-virtual {v0}, Lcom/google/gdata/data/Category;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 449
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 450
    :cond_1
    invoke-virtual {v0}, Lcom/google/gdata/data/Category;->getTerm()Ljava/lang/String;

    move-result-object v0

    .line 452
    :goto_1
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 455
    :cond_2
    return-object v2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public getKey()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/gdata/data/docs/DocumentListEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->id:Ljava/lang/String;

    .line 237
    if-eqz v0, :cond_0

    .line 238
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 240
    if-lez v1, :cond_0

    .line 241
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    :cond_0
    return-object v0
.end method

.method public getLastCommented()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 557
    const-class v0, Lcom/google/gdata/data/docs/LastCommented;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/LastCommented;

    .line 558
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/docs/LastCommented;->getValue()Lcom/google/gdata/data/DateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastModifiedBy()Lcom/google/gdata/data/extensions/LastModifiedBy;
    .locals 1

    .prologue
    .line 672
    const-class v0, Lcom/google/gdata/data/extensions/LastModifiedBy;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/LastModifiedBy;

    .line 673
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getLastViewed()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 580
    const-class v0, Lcom/google/gdata/data/extensions/LastViewed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/LastViewed;

    .line 581
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/extensions/LastViewed;->getValue()Lcom/google/gdata/data/DateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public getMd5Checksum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 603
    const-class v0, Lcom/google/gdata/data/docs/Md5Checksum;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/Md5Checksum;

    .line 604
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/docs/Md5Checksum;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParentLinks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/Link;",
            ">;"
        }
    .end annotation

    .prologue
    .line 475
    const-string/jumbo v0, "http://schemas.google.com/docs/2007#parent"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/docs/DocumentListEntry;->getLinks(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getQuotaBytesUsed()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 626
    const-class v0, Lcom/google/gdata/data/extensions/QuotaBytesUsed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/QuotaBytesUsed;

    .line 627
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/extensions/QuotaBytesUsed;->getValue()Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 695
    const-class v0, Lcom/google/gdata/data/extensions/ResourceId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/ResourceId;

    .line 696
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/extensions/ResourceId;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSuggestedFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    const-class v0, Lcom/google/gdata/data/docs/SuggestedFilename;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/SuggestedFilename;

    .line 535
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/docs/SuggestedFilename;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getResourceId()Ljava/lang/String;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_0

    .line 280
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 281
    if-lez v1, :cond_0

    .line 282
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 285
    :cond_0
    return-object v0
.end method

.method public isHidden()Z
    .locals 2

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/extensions/Labels;->HIDDEN:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRestrictedDownload()Z
    .locals 2

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/extensions/Labels;->RESTRICTED_DOWNLOAD:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isStarred()Z
    .locals 2

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/extensions/Labels;->STARRED:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTrashed()Z
    .locals 2

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/extensions/Labels;->TRASHED:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/google/gdata/data/extensions/Deleted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewed()Z
    .locals 2

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/extensions/Labels;->VIEWED:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWritersCanInvite()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 649
    const-class v0, Lcom/google/gdata/data/docs/WritersCanInvite;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/WritersCanInvite;

    .line 650
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/docs/WritersCanInvite;->getValue()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 498
    if-nez p1, :cond_0

    .line 499
    const-class v0, Lcom/google/gdata/data/docs/Description;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->removeExtension(Ljava/lang/Class;)V

    .line 503
    :goto_0
    return-void

    .line 501
    :cond_0
    new-instance v0, Lcom/google/gdata/data/docs/Description;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/docs/Description;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setFile(Ljava/io/File;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 296
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getMimeTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->setFile(Ljava/io/File;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public setFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 303
    new-instance v0, Lcom/google/gdata/data/media/MediaFileSource;

    invoke-direct {v0, p1, p2}, Lcom/google/gdata/data/media/MediaFileSource;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 304
    new-instance v1, Lcom/google/gdata/data/MediaContent;

    invoke-direct {v1}, Lcom/google/gdata/data/MediaContent;-><init>()V

    .line 305
    invoke-virtual {v1, v0}, Lcom/google/gdata/data/MediaContent;->setMediaSource(Lcom/google/gdata/data/media/MediaSource;)V

    .line 306
    new-instance v0, Lcom/google/gdata/util/ContentType;

    invoke-direct {v0, p2}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/gdata/data/MediaContent;->setMimeType(Lcom/google/gdata/util/ContentType;)V

    .line 307
    invoke-virtual {p0, v1}, Lcom/google/gdata/data/docs/DocumentListEntry;->setContent(Lcom/google/gdata/data/Content;)V

    .line 308
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 521
    if-nez p1, :cond_0

    .line 522
    const-class v0, Lcom/google/gdata/data/docs/Filename;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->removeExtension(Ljava/lang/Class;)V

    .line 526
    :goto_0
    return-void

    .line 524
    :cond_0
    new-instance v0, Lcom/google/gdata/data/docs/Filename;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/docs/Filename;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 2

    .prologue
    .line 317
    if-eqz p1, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/extensions/Labels;->HIDDEN:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/extensions/Labels;->HIDDEN:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setLastCommented(Lcom/google/gdata/data/DateTime;)V
    .locals 1

    .prologue
    .line 567
    if-nez p1, :cond_0

    .line 568
    const-class v0, Lcom/google/gdata/data/docs/LastCommented;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->removeExtension(Ljava/lang/Class;)V

    .line 572
    :goto_0
    return-void

    .line 570
    :cond_0
    new-instance v0, Lcom/google/gdata/data/docs/LastCommented;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/docs/LastCommented;-><init>(Lcom/google/gdata/data/DateTime;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setLastModifiedBy(Lcom/google/gdata/data/extensions/LastModifiedBy;)V
    .locals 1

    .prologue
    .line 682
    if-nez p1, :cond_0

    .line 683
    const-class v0, Lcom/google/gdata/data/extensions/LastModifiedBy;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->removeExtension(Ljava/lang/Class;)V

    .line 687
    :goto_0
    return-void

    .line 685
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/DocumentListEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setLastViewed(Lcom/google/gdata/data/DateTime;)V
    .locals 1

    .prologue
    .line 590
    if-nez p1, :cond_0

    .line 591
    const-class v0, Lcom/google/gdata/data/extensions/LastViewed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->removeExtension(Ljava/lang/Class;)V

    .line 595
    :goto_0
    return-void

    .line 593
    :cond_0
    new-instance v0, Lcom/google/gdata/data/extensions/LastViewed;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/extensions/LastViewed;-><init>(Lcom/google/gdata/data/DateTime;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setMd5Checksum(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 613
    if-nez p1, :cond_0

    .line 614
    const-class v0, Lcom/google/gdata/data/docs/Md5Checksum;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->removeExtension(Ljava/lang/Class;)V

    .line 618
    :goto_0
    return-void

    .line 616
    :cond_0
    new-instance v0, Lcom/google/gdata/data/docs/Md5Checksum;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/docs/Md5Checksum;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setQuotaBytesUsed(Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 636
    if-nez p1, :cond_0

    .line 637
    const-class v0, Lcom/google/gdata/data/extensions/QuotaBytesUsed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->removeExtension(Ljava/lang/Class;)V

    .line 641
    :goto_0
    return-void

    .line 639
    :cond_0
    new-instance v0, Lcom/google/gdata/data/extensions/QuotaBytesUsed;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/extensions/QuotaBytesUsed;-><init>(Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 705
    if-nez p1, :cond_0

    .line 706
    const-class v0, Lcom/google/gdata/data/extensions/ResourceId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->removeExtension(Ljava/lang/Class;)V

    .line 710
    :goto_0
    return-void

    .line 708
    :cond_0
    new-instance v0, Lcom/google/gdata/data/extensions/ResourceId;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/extensions/ResourceId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setRestrictedDownload(Z)V
    .locals 2

    .prologue
    .line 407
    if-eqz p1, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/extensions/Labels;->RESTRICTED_DOWNLOAD:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/extensions/Labels;->RESTRICTED_DOWNLOAD:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setStarred(Z)V
    .locals 2

    .prologue
    .line 339
    if-eqz p1, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/extensions/Labels;->STARRED:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 344
    :goto_0
    return-void

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/extensions/Labels;->STARRED:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setSuggestedFilename(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 544
    if-nez p1, :cond_0

    .line 545
    const-class v0, Lcom/google/gdata/data/docs/SuggestedFilename;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->removeExtension(Ljava/lang/Class;)V

    .line 549
    :goto_0
    return-void

    .line 547
    :cond_0
    new-instance v0, Lcom/google/gdata/data/docs/SuggestedFilename;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/docs/SuggestedFilename;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setTrashed(Z)V
    .locals 2

    .prologue
    .line 383
    if-eqz p1, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/extensions/Labels;->TRASHED:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v0, Lcom/google/gdata/data/extensions/Deleted;

    invoke-direct {v0}, Lcom/google/gdata/data/extensions/Deleted;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 390
    :goto_0
    return-void

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/extensions/Labels;->TRASHED:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 388
    const-class v0, Lcom/google/gdata/data/extensions/Deleted;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setViewed(Z)V
    .locals 2

    .prologue
    .line 361
    if-eqz p1, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/extensions/Labels;->VIEWED:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/DocumentListEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/extensions/Labels;->VIEWED:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setWritersCanInvite(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 659
    if-nez p1, :cond_0

    .line 660
    const-class v0, Lcom/google/gdata/data/docs/WritersCanInvite;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->removeExtension(Ljava/lang/Class;)V

    .line 664
    :goto_0
    return-void

    .line 662
    :cond_0
    new-instance v0, Lcom/google/gdata/data/docs/WritersCanInvite;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/docs/WritersCanInvite;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentListEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method
