.class final Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$5;
.super Ljava/lang/Object;
.source "AdobeNotificationManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;


# instance fields
.field final synthetic val$successCallBack:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeGetAssetHrefCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeGetAssetHrefCallback;)V
    .locals 0

    .prologue
    .line 657
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$5;->val$successCallBack:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeGetAssetHrefCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$5;->val$successCallBack:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeGetAssetHrefCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeGetAssetHrefCallback;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    .line 670
    return-void
.end method

.method public onSuccess(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 2

    .prologue
    .line 661
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 662
    if-eqz v0, :cond_0

    const-string/jumbo v1, "content-location"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "content-location"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 663
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$5;->val$successCallBack:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeGetAssetHrefCallback;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeGetAssetHrefCallback;->onSuccess(Ljava/lang/String;)V

    .line 664
    return-void

    .line 662
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
