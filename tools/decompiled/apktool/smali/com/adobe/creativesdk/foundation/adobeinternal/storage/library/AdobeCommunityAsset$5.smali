.class final Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$5;
.super Ljava/lang/Object;
.source "AdobeCommunityAsset.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$community:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunity;

.field final synthetic val$onError:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

.field final synthetic val$onSuccess:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunity;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$5;->val$community:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunity;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$5;->val$onSuccess:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$5;->val$onError:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 470
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$5;->onCompletion(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onCompletion(Lorg/json/JSONObject;)V
    .locals 10

    .prologue
    .line 474
    :try_start_0
    const-string/jumbo v0, "_embedded"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "assets"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 475
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 476
    new-instance v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetsResponse;

    invoke-direct {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetsResponse;-><init>()V

    .line 477
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 478
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$5;->val$community:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunity;

    invoke-direct {v0, v5, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;-><init>(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunity;)V

    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetsResponse;->addAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;)V

    .line 479
    const-string/jumbo v5, "Asset Rendition URL"

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetsResponse;->getAssets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;

    sget-object v6, Lcom/adobe/creativesdk/foundation/storage/AdobeCommunityAssetImageDimension;->AdobeCommunityAssetImageDimensionWidth:Lcom/adobe/creativesdk/foundation/storage/AdobeCommunityAssetImageDimension;

    const/16 v7, 0x30

    const/high16 v8, 0x40000000    # 2.0f

    sget-object v9, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetImageType;->AdobeCommunityAssetImageTypePNG:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetImageType;

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;->getRenditionURL(Lcom/adobe/creativesdk/foundation/storage/AdobeCommunityAssetImageDimension;IFLcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetImageType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 481
    :cond_0
    const-string/jumbo v0, "_links"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 482
    if-eqz v0, :cond_1

    .line 483
    const-string/jumbo v1, "next"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 484
    if-eqz v0, :cond_1

    .line 485
    const-string/jumbo v1, "href"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 487
    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetsResponse;->setNextPageHref(Ljava/lang/String;)V

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$5;->val$onSuccess:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-interface {v0, v4}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :goto_1
    return-void

    .line 492
    :catch_0
    move-exception v0

    .line 493
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset$5;->val$onError:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    goto :goto_1
.end method
