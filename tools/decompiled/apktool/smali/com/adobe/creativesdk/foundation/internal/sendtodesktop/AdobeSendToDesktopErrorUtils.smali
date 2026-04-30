.class public Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeSendToDesktopErrorUtils;
.super Ljava/lang/Object;
.source "AdobeSendToDesktopErrorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSendToDesktopError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    if-eqz p1, :cond_0

    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 35
    const-string/jumbo v0, "ADOBE_ASSET_DETAILS_STRING_KEY"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    invoke-direct {v0, p0, v1, v2}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;-><init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 39
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    invoke-direct {v0, p0, v2, p2}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;-><init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createSendToDesktopError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/net/URL;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;
    .locals 3

    .prologue
    .line 44
    if-nez p2, :cond_0

    .line 45
    const-string/jumbo p2, "[no data]"

    .line 47
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    if-eqz p1, :cond_1

    .line 51
    const-string/jumbo v1, "AdobeAssetRequestURLString"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_1
    const-string/jumbo v1, "AdobeNetworkHTTPStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v1, "AdobeAssetResponseData"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    if-eqz p4, :cond_2

    .line 56
    const-string/jumbo v1, "AdobeAssetResponseHeaders"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_2
    new-instance v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    invoke-direct {v1, p0, v0, p5}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;-><init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 60
    return-object v1
.end method
