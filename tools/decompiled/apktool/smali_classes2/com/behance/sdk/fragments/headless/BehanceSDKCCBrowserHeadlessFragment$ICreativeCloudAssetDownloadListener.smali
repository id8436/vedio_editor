.class public interface abstract Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$ICreativeCloudAssetDownloadListener;
.super Ljava/lang/Object;
.source "BehanceSDKCCBrowserHeadlessFragment.java"


# virtual methods
.method public abstract onDownloadComplete(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDownloadError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
.end method
