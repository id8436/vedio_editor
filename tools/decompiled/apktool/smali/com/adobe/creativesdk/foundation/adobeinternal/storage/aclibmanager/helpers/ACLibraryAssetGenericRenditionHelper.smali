.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/helpers/ACLibraryAssetGenericRenditionHelper;
.super Ljava/lang/Object;
.source "ACLibraryAssetGenericRenditionHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFullSizeGenericRenditionPath(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-static {v0, p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/util/ACLibraryAssetRenditionUtils;->fetchAnyImageRepresentation(ILcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)Z

    .line 30
    return-void
.end method

.method public static getGenericRenditionPath(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;ZLcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;",
            "Z",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    iget v0, p2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->width:F

    float-to-int v6, v0

    .line 39
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v0

    .line 41
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v6, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getRenditionPathFromCache(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    invoke-interface {p4, v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCompletion(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v10, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/helpers/ACLibraryAssetGenericRenditionHelper$1;

    invoke-direct {v10, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/helpers/ACLibraryAssetGenericRenditionHelper$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/helpers/ACLibraryAssetGenericRenditionHelper$2;

    move v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/helpers/ACLibraryAssetGenericRenditionHelper$2;-><init>(ZLcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)V

    new-instance v7, Landroid/os/Handler;

    .line 65
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v1, p0

    move-object v2, v8

    move v3, v6

    move v4, v9

    move-object v5, v10

    move-object v6, v0

    .line 51
    invoke-virtual/range {v1 .. v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getRenditionPath(Ljava/lang/String;IZLcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)Z

    goto :goto_0
.end method
