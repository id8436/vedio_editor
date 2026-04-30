.class public Lcom/google/gdata/data/youtube/UserProfileEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "UserProfileEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://gdata.youtube.com/schemas/2007#userProfile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/youtube/UserProfileEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORIES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "http://gdata.youtube.com/schemas/2007/channeltypes.cat"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/data/youtube/UserProfileEntry;->CATEGORIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 48
    const-string/jumbo v0, "http://gdata.youtube.com/schemas/2007#userProfile"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 53
    const-string/jumbo v0, "http://gdata.youtube.com/schemas/2007#userProfile"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private getCategoryForScheme(Ljava/util/Set;Ljava/lang/String;)Lcom/google/gdata/data/Category;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/data/Category;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/gdata/data/Category;"
        }
    .end annotation

    .prologue
    .line 394
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Category;

    .line 395
    invoke-virtual {v0}, Lcom/google/gdata/data/Category;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2

    .prologue
    .line 490
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 492
    sget-object v0, Lcom/google/gdata/data/youtube/YouTubeNamespace;->NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareAdditionalNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 495
    const-class v0, Lcom/google/gdata/data/youtube/UserProfileEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtAboutMe;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 496
    const-class v0, Lcom/google/gdata/data/youtube/UserProfileEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtAge;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 497
    const-class v0, Lcom/google/gdata/data/youtube/UserProfileEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtBooks;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 498
    const-class v0, Lcom/google/gdata/data/youtube/UserProfileEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtCompany;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 500
    const-class v0, Lcom/google/gdata/data/youtube/UserProfileEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtDescription;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 501
    const-class v0, Lcom/google/gdata/data/youtube/UserProfileEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtGender;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 502
    const-class v0, Lcom/google/gdata/data/youtube/UserProfileEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtHobbies;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 503
    const-class v0, Lcom/google/gdata/data/youtube/UserProfileEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtHometown;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 504
    const-class v0, Lcom/google/gdata/data/youtube/UserProfileEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtLocation;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 505
    const-class v0, Lcom/google/gdata/data/youtube/UserProfileEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtMovies;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 506
    const-class v0, Lcom/google/gdata/data/youtube/UserProfileEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtMusic;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 507
    const-class v0, Lcom/google/gdata/data/youtube/UserProfileEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtOccupation;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 508
    const-class v0, Lcom/google/gdata/data/youtube/UserProfileEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtRelationship;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 509
    const-class v0, Lcom/google/gdata/data/youtube/UserProfileEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtSchool;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 510
    const-class v0, Lcom/google/gdata/data/youtube/UserProfileEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtUsername;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 512
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaThumbnail;

    invoke-static {v0}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 514
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 515
    const-class v1, Lcom/google/gdata/data/youtube/UserProfileEntry;

    invoke-virtual {p1, v1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 517
    const-class v0, Lcom/google/gdata/data/youtube/UserProfileEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 519
    invoke-static {}, Lcom/google/gdata/data/extensions/FeedLink;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 520
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 521
    const-class v1, Lcom/google/gdata/data/youtube/UserProfileEntry;

    invoke-virtual {p1, v1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 523
    const-class v0, Lcom/google/gdata/data/youtube/UserProfileEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtFirstName;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 524
    const-class v0, Lcom/google/gdata/data/youtube/UserProfileEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtLastName;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 526
    const-class v0, Lcom/google/gdata/data/youtube/UserProfileEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;)V

    .line 527
    return-void
.end method

.method public getAboutMe()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    const-class v0, Lcom/google/gdata/data/youtube/YtAboutMe;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtAboutMe;

    .line 358
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtAboutMe;->getContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAge()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/google/gdata/data/youtube/YtAge;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtAge;

    .line 83
    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtAge;->getAge()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getBooks()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/google/gdata/data/youtube/YtBooks;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtBooks;

    .line 66
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtBooks;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChannelType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "http://gdata.youtube.com/schemas/2007/channeltypes.cat"

    invoke-direct {p0, v0, v1}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getCategoryForScheme(Ljava/util/Set;Ljava/lang/String;)Lcom/google/gdata/data/Category;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/data/Category;->getTerm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-class v0, Lcom/google/gdata/data/youtube/YtCompany;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtCompany;

    .line 109
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtCompany;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContactsFeedLink()Lcom/google/gdata/data/extensions/FeedLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/data/extensions/FeedLink",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 440
    const-string/jumbo v0, "http://gdata.youtube.com/schemas/2007#user.contacts"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->getFeedLink(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)Lcom/google/gdata/data/extensions/FeedLink;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 331
    const-class v0, Lcom/google/gdata/data/youtube/YtDescription;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtDescription;

    .line 332
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtDescription;->getContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFavoritesFeedLink()Lcom/google/gdata/data/extensions/FeedLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/data/extensions/FeedLink",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 435
    const-string/jumbo v0, "http://gdata.youtube.com/schemas/2007#user.favorites"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->getFeedLink(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)Lcom/google/gdata/data/extensions/FeedLink;

    move-result-object v0

    return-object v0
.end method

.method public getFeaturedVideoLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 485
    const-string/jumbo v0, "http://gdata.youtube.com/schemas/2007#featured-video"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getFeedLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/extensions/FeedLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 430
    const-class v0, Lcom/google/gdata/data/extensions/FeedLink;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    const-class v0, Lcom/google/gdata/data/youtube/YtFirstName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtFirstName;

    .line 295
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtFirstName;->getContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFriendsActivityFeedLink()Lcom/google/gdata/data/extensions/FeedLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/data/extensions/FeedLink",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 470
    const-string/jumbo v0, "http://gdata.youtube.com/schemas/2007#user.friendsactivity"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->getFeedLink(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)Lcom/google/gdata/data/extensions/FeedLink;

    move-result-object v0

    return-object v0
.end method

.method public getGender()Lcom/google/gdata/data/youtube/YtGender$Value;
    .locals 1

    .prologue
    .line 133
    const-class v0, Lcom/google/gdata/data/youtube/YtGender;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtGender;

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtGender;->getGender()Lcom/google/gdata/data/youtube/YtGender$Value;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHobbies()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    const-class v0, Lcom/google/gdata/data/youtube/YtHobbies;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtHobbies;

    .line 151
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtHobbies;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHometown()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-class v0, Lcom/google/gdata/data/youtube/YtHometown;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtHometown;

    .line 168
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtHometown;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInboxFeedLink()Lcom/google/gdata/data/extensions/FeedLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/data/extensions/FeedLink",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 445
    const-string/jumbo v0, "http://gdata.youtube.com/schemas/2007#user.inbox"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->getFeedLink(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)Lcom/google/gdata/data/extensions/FeedLink;

    move-result-object v0

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    const-class v0, Lcom/google/gdata/data/youtube/YtLastName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtLastName;

    .line 310
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtLastName;->getContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const-class v0, Lcom/google/gdata/data/youtube/YtLocation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtLocation;

    .line 185
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtLocation;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMovies()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const-class v0, Lcom/google/gdata/data/youtube/YtMovies;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtMovies;

    .line 202
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtMovies;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMusic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    const-class v0, Lcom/google/gdata/data/youtube/YtMusic;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtMusic;

    .line 219
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtMusic;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 222
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNewSubscriptionVideosFeedLink()Lcom/google/gdata/data/extensions/FeedLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/data/extensions/FeedLink",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 465
    const-string/jumbo v0, "http://gdata.youtube.com/schemas/2007#user.newsubscriptionvideos"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->getFeedLink(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)Lcom/google/gdata/data/extensions/FeedLink;

    move-result-object v0

    return-object v0
.end method

.method public getOccupation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    const-class v0, Lcom/google/gdata/data/youtube/YtOccupation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtOccupation;

    .line 236
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtOccupation;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 239
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlaylistsFeedLink()Lcom/google/gdata/data/extensions/FeedLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/data/extensions/FeedLink",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 450
    const-string/jumbo v0, "http://gdata.youtube.com/schemas/2007#user.playlists"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->getFeedLink(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)Lcom/google/gdata/data/extensions/FeedLink;

    move-result-object v0

    return-object v0
.end method

.method public getRecentActivityFeedLink()Lcom/google/gdata/data/extensions/FeedLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/data/extensions/FeedLink",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 475
    const-string/jumbo v0, "http://gdata.youtube.com/schemas/2007#user.recentactivity"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->getFeedLink(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)Lcom/google/gdata/data/extensions/FeedLink;

    move-result-object v0

    return-object v0
.end method

.method public getRelationship()Lcom/google/gdata/data/youtube/YtRelationship$Status;
    .locals 1

    .prologue
    .line 252
    const-class v0, Lcom/google/gdata/data/youtube/YtRelationship;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtRelationship;

    .line 253
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtRelationship;->getStatus()Lcom/google/gdata/data/youtube/YtRelationship$Status;

    move-result-object v0

    .line 256
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSchool()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    const-class v0, Lcom/google/gdata/data/youtube/YtSchool;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtSchool;

    .line 270
    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtSchool;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 273
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatistics()Lcom/google/gdata/data/youtube/YtUserProfileStatistics;
    .locals 1

    .prologue
    .line 375
    const-class v0, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;

    return-object v0
.end method

.method public getSubscriptionsFeedLink()Lcom/google/gdata/data/extensions/FeedLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/data/extensions/FeedLink",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 455
    const-string/jumbo v0, "http://gdata.youtube.com/schemas/2007#user.subscriptions"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->getFeedLink(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)Lcom/google/gdata/data/extensions/FeedLink;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail()Lcom/google/gdata/data/media/mediarss/MediaThumbnail;
    .locals 1

    .prologue
    .line 99
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaThumbnail;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/media/mediarss/MediaThumbnail;

    .line 100
    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 103
    :cond_0
    return-object v0
.end method

.method public getUploadsFeedLink()Lcom/google/gdata/data/extensions/FeedLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/data/extensions/FeedLink",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 460
    const-string/jumbo v0, "http://gdata.youtube.com/schemas/2007#user.uploads"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->getFeedLink(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)Lcom/google/gdata/data/extensions/FeedLink;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    const-class v0, Lcom/google/gdata/data/youtube/YtUsername;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtUsername;

    .line 280
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtUsername;->getContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoLogLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 480
    const-string/jumbo v0, "http://gdata.youtube.com/schemas/2007#user.vlog"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public setAboutMe(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 367
    if-nez p1, :cond_0

    .line 368
    const-class v0, Lcom/google/gdata/data/youtube/YtAboutMe;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->removeExtension(Ljava/lang/Class;)V

    .line 372
    :goto_0
    return-void

    .line 370
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtAboutMe;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtAboutMe;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setAge(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    const-class v0, Lcom/google/gdata/data/youtube/YtAge;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->removeExtension(Ljava/lang/Class;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtAge;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/gdata/data/youtube/YtAge;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setBooks(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    const-class v0, Lcom/google/gdata/data/youtube/YtBooks;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->removeExtension(Ljava/lang/Class;)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtBooks;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtBooks;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setChannelType(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 418
    if-nez p1, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getCategories()Ljava/util/Set;

    move-result-object v1

    const-string/jumbo v2, "http://gdata.youtube.com/schemas/2007/channeltypes.cat"

    invoke-direct {p0, v1, v2}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getCategoryForScheme(Ljava/util/Set;Ljava/lang/String;)Lcom/google/gdata/data/Category;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 426
    :goto_0
    return-void

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/gdata/data/Category;

    const-string/jumbo v2, "http://gdata.youtube.com/schemas/2007/channeltypes.cat"

    invoke-direct {v1, v2, p1}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    const-class v0, Lcom/google/gdata/data/youtube/YtCompany;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->removeExtension(Ljava/lang/Class;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtCompany;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtCompany;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 344
    if-nez p1, :cond_0

    .line 345
    const-class v0, Lcom/google/gdata/data/youtube/YtDescription;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->removeExtension(Ljava/lang/Class;)V

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtDescription;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtDescription;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 300
    if-nez p1, :cond_0

    .line 301
    const-class v0, Lcom/google/gdata/data/youtube/YtFirstName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->removeExtension(Ljava/lang/Class;)V

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtFirstName;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtFirstName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setGender(Lcom/google/gdata/data/youtube/YtGender$Value;)V
    .locals 1

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 126
    const-class v0, Lcom/google/gdata/data/youtube/YtGender;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->removeExtension(Ljava/lang/Class;)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtGender;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtGender;-><init>(Lcom/google/gdata/data/youtube/YtGender$Value;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setHobbies(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    const-class v0, Lcom/google/gdata/data/youtube/YtHobbies;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->removeExtension(Ljava/lang/Class;)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtHobbies;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtHobbies;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setHometown(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 160
    const-class v0, Lcom/google/gdata/data/youtube/YtHometown;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->removeExtension(Ljava/lang/Class;)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtHometown;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtHometown;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 315
    if-nez p1, :cond_0

    .line 316
    const-class v0, Lcom/google/gdata/data/youtube/YtLastName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->removeExtension(Ljava/lang/Class;)V

    .line 320
    :goto_0
    return-void

    .line 318
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtLastName;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtLastName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 177
    const-class v0, Lcom/google/gdata/data/youtube/YtLocation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->removeExtension(Ljava/lang/Class;)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtLocation;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtLocation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setMovies(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 193
    if-nez p1, :cond_0

    .line 194
    const-class v0, Lcom/google/gdata/data/youtube/YtMovies;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->removeExtension(Ljava/lang/Class;)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtMovies;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtMovies;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setMusic(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 210
    if-nez p1, :cond_0

    .line 211
    const-class v0, Lcom/google/gdata/data/youtube/YtMusic;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->removeExtension(Ljava/lang/Class;)V

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtMusic;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtMusic;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setOccupation(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    const-class v0, Lcom/google/gdata/data/youtube/YtOccupation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->removeExtension(Ljava/lang/Class;)V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtOccupation;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtOccupation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setRelationship(Lcom/google/gdata/data/youtube/YtRelationship$Status;)V
    .locals 1

    .prologue
    .line 244
    if-nez p1, :cond_0

    .line 245
    const-class v0, Lcom/google/gdata/data/youtube/YtRelationship;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->removeExtension(Ljava/lang/Class;)V

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtRelationship;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtRelationship;-><init>(Lcom/google/gdata/data/youtube/YtRelationship$Status;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setSchool(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 261
    if-nez p1, :cond_0

    .line 262
    const-class v0, Lcom/google/gdata/data/youtube/YtSchool;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->removeExtension(Ljava/lang/Class;)V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtSchool;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtSchool;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setStatistics(Lcom/google/gdata/data/youtube/YtUserProfileStatistics;)V
    .locals 1

    .prologue
    .line 379
    if-nez p1, :cond_0

    .line 380
    const-class v0, Lcom/google/gdata/data/youtube/YtUserProfileStatistics;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->removeExtension(Ljava/lang/Class;)V

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/youtube/UserProfileEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setThumbnail(Lcom/google/gdata/data/media/mediarss/MediaThumbnail;)V
    .locals 1

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 92
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaThumbnail;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->removeExtension(Ljava/lang/Class;)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/youtube/UserProfileEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 285
    if-nez p1, :cond_0

    .line 286
    const-class v0, Lcom/google/gdata/data/youtube/YtUsername;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->removeExtension(Ljava/lang/Class;)V

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtUsername;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtUsername;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserProfileEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method
