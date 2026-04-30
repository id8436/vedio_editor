.class public Lcom/behance/sdk/dto/parser/BehanceSDKTagParser;
.super Ljava/lang/Object;
.source "BehanceSDKTagParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKTagDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 24
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 26
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 27
    new-instance v3, Lcom/behance/sdk/dto/BehanceSDKTagDTO;

    invoke-direct {v3}, Lcom/behance/sdk/dto/BehanceSDKTagDTO;-><init>()V

    .line 28
    const-string/jumbo v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->setId(J)V

    .line 29
    const-string/jumbo v4, "title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->setTitle(Ljava/lang/String;)V

    .line 30
    const-string/jumbo v4, "category"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->setCategory(Ljava/lang/String;)V

    .line 31
    const-string/jumbo v4, "category_label"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->setCategoryLabel(Ljava/lang/String;)V

    .line 32
    const-string/jumbo v4, "category_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->setCategoryId(I)V

    .line 33
    const-string/jumbo v4, "url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->setUrl(Ljava/lang/String;)V

    .line 34
    const-string/jumbo v4, "approved"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/behance/sdk/dto/BehanceSDKTagDTO;->setApproved(Z)V

    .line 35
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 37
    goto :goto_0
.end method

.method public static parse(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKTagDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    const-string/jumbo v0, "tags"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/behance/sdk/dto/parser/BehanceSDKTagParser;->parse(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
