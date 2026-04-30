.class public Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudUtils;
.super Ljava/lang/Object;
.source "AdobeCloudUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areValuesEqual(Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v3, 0x1

    .line 129
    :goto_0
    if-eqz v3, :cond_4

    .line 131
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 133
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 136
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 138
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 139
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->isStrictlyEqual(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 160
    :goto_1
    return v0

    :cond_1
    move v3, v2

    .line 128
    goto :goto_0

    :cond_2
    move v0, v2

    .line 148
    goto :goto_1

    :cond_3
    move v0, v2

    .line 155
    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method public static getCloudsFromUserProfile(Lorg/json/JSONObject;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 42
    .line 45
    if-eqz p0, :cond_7

    .line 46
    const-string/jumbo v0, "public_cloud"

    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 49
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->hasPrivateCloudScope()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 50
    const-string/jumbo v0, "endpoints"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 51
    const-string/jumbo v0, "endpoints"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 53
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    move-object v1, v0

    .line 55
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 56
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 57
    new-instance v5, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-direct {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;-><init>()V

    .line 58
    if-eqz v0, :cond_0

    invoke-virtual {v5, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->updateFromDictionary(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->isPrivateCloud()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v3

    .line 67
    :goto_1
    if-eqz v0, :cond_1

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 72
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 75
    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->isStrictlyEqual(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 77
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 82
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 83
    invoke-interface {p1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 87
    :cond_4
    const-string/jumbo v0, "endpoints"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    .line 88
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;->AdobeEntitlementErrorNoCloudsAvailable:Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;

    const-string/jumbo v2, "No clouds are available for this user."

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_5
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;->AdobeEntitlementErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;

    const-string/jumbo v2, "Query for clouds returned an unexpected response."

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_6
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;-><init>()V

    .line 97
    const-string/jumbo v1, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->setGUID(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v1, "Adobe Creative Cloud"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->setName(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->setAvailable(Z)V

    .line 100
    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->setPrivateCloud(Z)V

    .line 102
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 103
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_7
    return v4

    :cond_8
    move v0, v4

    goto :goto_1

    :cond_9
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public static isCloudValid(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getEndpoints()Ljava/util/Map;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 123
    :goto_0
    return v0

    .line 116
    :cond_1
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;

    .line 117
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;->getServiceURLs()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 118
    goto :goto_0

    .line 120
    :cond_3
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;->getServiceURLs()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 121
    goto :goto_0

    .line 123
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method
