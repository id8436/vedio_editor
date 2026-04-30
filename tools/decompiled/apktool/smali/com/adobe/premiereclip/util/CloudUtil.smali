.class public Lcom/adobe/premiereclip/util/CloudUtil;
.super Ljava/lang/Object;
.source "CloudUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initCloud(Landroid/content/Context;Lcom/adobe/premiereclip/util/CloudUtil$Listener;)V
    .locals 4

    .prologue
    .line 38
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    .line 39
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v1

    new-instance v2, Lcom/adobe/premiereclip/util/CloudUtil$1;

    invoke-direct {v2, v0, p1}, Lcom/adobe/premiereclip/util/CloudUtil$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/premiereclip/util/CloudUtil$Listener;)V

    new-instance v0, Lcom/adobe/premiereclip/util/CloudUtil$2;

    invoke-direct {v0, p1}, Lcom/adobe/premiereclip/util/CloudUtil$2;-><init>(Lcom/adobe/premiereclip/util/CloudUtil$Listener;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->refreshClouds(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V

    .line 69
    return-void
.end method

.method public static isAuthenticated()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 73
    :try_start_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
