.class public Lcom/adobe/creativesdk/foundation/internal/comments/models/AdobeAssetCommentsDataSource;
.super Ljava/lang/Object;
.source "AdobeAssetCommentsDataSource.java"


# instance fields
.field private comments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/comments/models/AdobeAssetCommentData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/comments/models/AdobeAssetCommentsDataSource;->comments:Ljava/util/ArrayList;

    .line 18
    return-void
.end method

.method public static commentsFromJSONData(Lorg/json/JSONArray;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Lcom/adobe/creativesdk/foundation/internal/comments/models/AdobeAssetCommentsDataSource;
    .locals 10

    .prologue
    .line 21
    new-instance v9, Lcom/adobe/creativesdk/foundation/internal/comments/models/AdobeAssetCommentsDataSource;

    invoke-direct {v9}, Lcom/adobe/creativesdk/foundation/internal/comments/models/AdobeAssetCommentsDataSource;-><init>()V

    .line 22
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 25
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 26
    const-string/jumbo v2, "username"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 28
    const-string/jumbo v3, "avatar"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 29
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getHref()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    .line 30
    const-string/jumbo v3, "content"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "content"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\n"

    const-string/jumbo v5, "<br/>"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 31
    :goto_1
    const-string/jumbo v4, "created"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 32
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/comments/models/AdobeAssetCommentData;

    invoke-direct/range {v1 .. v8}, Lcom/adobe/creativesdk/foundation/internal/comments/models/AdobeAssetCommentData;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v2, v9, Lcom/adobe/creativesdk/foundation/internal/comments/models/AdobeAssetCommentsDataSource;->comments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 35
    :catch_0
    move-exception v1

    .line 37
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 40
    :cond_1
    return-object v9
.end method


# virtual methods
.method public getComments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/comments/models/AdobeAssetCommentData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/comments/models/AdobeAssetCommentsDataSource;->comments:Ljava/util/ArrayList;

    return-object v0
.end method
