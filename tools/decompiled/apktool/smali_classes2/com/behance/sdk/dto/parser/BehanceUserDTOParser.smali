.class public Lcom/behance/sdk/dto/parser/BehanceUserDTOParser;
.super Ljava/lang/Object;
.source "BehanceUserDTOParser.java"


# static fields
.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/behance/sdk/dto/parser/BehanceUserDTOParser;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/dto/parser/BehanceUserDTOParser;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 46
    if-eqz p1, :cond_a

    .line 47
    :try_start_0
    new-instance v0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;-><init>()V

    .line 48
    const-string/jumbo v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->setId(I)V

    .line 49
    const-string/jumbo v1, "first_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->setFirstName(Ljava/lang/String;)V

    .line 50
    const-string/jumbo v1, "last_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->setLastName(Ljava/lang/String;)V

    .line 51
    const-string/jumbo v1, "username"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->setUserName(Ljava/lang/String;)V

    .line 52
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->setProfileUrl(Ljava/lang/String;)V

    .line 53
    const-string/jumbo v1, "display_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->setDisplayName(Ljava/lang/String;)V

    .line 54
    const-string/jumbo v1, "city"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->setCity(Ljava/lang/String;)V

    .line 55
    const-string/jumbo v1, "state"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->setState(Ljava/lang/String;)V

    .line 56
    const-string/jumbo v1, "country"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->setCountry(Ljava/lang/String;)V

    .line 57
    const-string/jumbo v1, "company"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->setCompany(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v1, "occupation"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->setOccupation(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v1, "created_on"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->setCreatedOn(J)V

    .line 60
    const-string/jumbo v1, "twitter"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->setTwitterHandle(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v1, "links"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 63
    if-eqz v3, :cond_1

    move v1, v2

    .line 64
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 65
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 66
    if-eqz v4, :cond_0

    .line 67
    new-instance v5, Lcom/behance/sdk/dto/search/BehanceSDKWebLinkDTO;

    invoke-direct {v5}, Lcom/behance/sdk/dto/search/BehanceSDKWebLinkDTO;-><init>()V

    .line 68
    const-string/jumbo v6, "title"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/behance/sdk/dto/search/BehanceSDKWebLinkDTO;->setTitle(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v6, "url"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/behance/sdk/dto/search/BehanceSDKWebLinkDTO;->setUrl(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v5}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->addWebLink(Lcom/behance/sdk/dto/search/BehanceSDKWebLinkDTO;)V

    .line 64
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_1
    const-string/jumbo v1, "sections"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 78
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 79
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 80
    if-eqz v4, :cond_2

    .line 81
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 82
    if-eqz v5, :cond_2

    .line 83
    new-instance v6, Lcom/behance/sdk/dto/search/BehanceSDKUserDetailsSectionDTO;

    invoke-direct {v6}, Lcom/behance/sdk/dto/search/BehanceSDKUserDetailsSectionDTO;-><init>()V

    .line 84
    invoke-virtual {v6, v4}, Lcom/behance/sdk/dto/search/BehanceSDKUserDetailsSectionDTO;->setTitle(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v6, v5}, Lcom/behance/sdk/dto/search/BehanceSDKUserDetailsSectionDTO;->setDescription(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, v6}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->addDetailsSection(Lcom/behance/sdk/dto/search/BehanceSDKUserDetailsSectionDTO;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    sget-object v1, Lcom/behance/sdk/dto/parser/BehanceUserDTOParser;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Problem parsing User JSON"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v0, v3, v2}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    throw v0

    .line 92
    :cond_3
    :try_start_1
    const-string/jumbo v1, "is_following"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 93
    if-ne v1, v7, :cond_6

    .line 94
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->setCurrentUserFollowing(Z)V

    .line 100
    :goto_2
    const-string/jumbo v1, "stats"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_4

    .line 102
    const-string/jumbo v3, "following"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->setFollowingCount(I)V

    .line 103
    const-string/jumbo v3, "followers"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->setFollowersCount(I)V

    .line 104
    const-string/jumbo v3, "appreciations"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->setAppreciationsCount(I)V

    .line 105
    const-string/jumbo v3, "comments"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->setCommentsCount(I)V

    .line 106
    const-string/jumbo v3, "views"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->setViewsCount(I)V

    .line 110
    :cond_4
    const-string/jumbo v1, "images"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_5

    .line 112
    const/16 v3, 0x32

    const-string/jumbo v4, "50"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->addImage(ILjava/lang/String;)V

    .line 113
    const/16 v3, 0x73

    const-string/jumbo v4, "115"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->addImage(ILjava/lang/String;)V

    .line 114
    const/16 v3, 0x8a

    const-string/jumbo v4, "138"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->addImage(ILjava/lang/String;)V

    .line 115
    const/16 v3, 0x114

    const-string/jumbo v4, "276"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->addImage(ILjava/lang/String;)V

    .line 119
    :cond_5
    const-string/jumbo v1, "fields"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 120
    if-eqz v3, :cond_7

    move v1, v2

    .line 121
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 122
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->addField(Ljava/lang/String;)V

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 96
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->setCurrentUserFollowing(Z)V

    goto/16 :goto_2

    .line 127
    :cond_7
    const-string/jumbo v1, "features"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 128
    if-eqz v3, :cond_b

    move v1, v2

    .line 129
    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_b

    .line 130
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 132
    const-string/jumbo v5, "site"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 133
    if-eqz v4, :cond_9

    .line 134
    new-instance v5, Lcom/behance/sdk/dto/search/BehanceSDKFeaturedDTO;

    invoke-direct {v5}, Lcom/behance/sdk/dto/search/BehanceSDKFeaturedDTO;-><init>()V

    .line 135
    const-string/jumbo v6, "domain"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/behance/sdk/dto/search/BehanceSDKFeaturedDTO;->setSiteDomain(Ljava/lang/String;)V

    .line 136
    const-string/jumbo v6, "icon"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/behance/sdk/dto/search/BehanceSDKFeaturedDTO;->setSiteIcon(Ljava/lang/String;)V

    .line 137
    const-string/jumbo v6, "id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/behance/sdk/dto/search/BehanceSDKFeaturedDTO;->setSiteId(Ljava/lang/String;)V

    .line 138
    const-string/jumbo v6, "key"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/behance/sdk/dto/search/BehanceSDKFeaturedDTO;->setSiteKey(Ljava/lang/String;)V

    .line 139
    const-string/jumbo v6, "name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/behance/sdk/dto/search/BehanceSDKFeaturedDTO;->setSiteName(Ljava/lang/String;)V

    .line 140
    const-string/jumbo v6, "url"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/behance/sdk/dto/search/BehanceSDKFeaturedDTO;->setSiteUrl(Ljava/lang/String;)V

    .line 142
    const-string/jumbo v6, "ribbon"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 143
    if-eqz v4, :cond_8

    .line 144
    const-string/jumbo v6, "image"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/behance/sdk/dto/search/BehanceSDKFeaturedDTO;->setSiteRibbonImage(Ljava/lang/String;)V

    .line 145
    const-string/jumbo v6, "image_2x"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/behance/sdk/dto/search/BehanceSDKFeaturedDTO;->setSiteRibbonBiggerImage(Ljava/lang/String;)V

    .line 147
    :cond_8
    invoke-virtual {v0, v5}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->addFeaturedDetail(Lcom/behance/sdk/dto/search/BehanceSDKFeaturedDTO;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 157
    :cond_a
    const/4 v0, 0x0

    :cond_b
    return-object v0
.end method
