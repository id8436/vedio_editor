.class public abstract Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;
.super Ljava/lang/Object;
.source "AdobeLibraryDelegate.java"


# instance fields
.field public assetDownloadLibraryFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public autoSyncDownloadedAssets:Z

.field public delegateHandler:Landroid/os/Handler;

.field public syncOnCommit:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;->delegateHandler:Landroid/os/Handler;

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;->syncOnCommit:Z

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;->autoSyncDownloadedAssets:Z

    .line 207
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;->assetDownloadLibraryFilter:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected abstract elementWasAdded(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;)V
.end method

.method protected abstract elementWasRemoved(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;)V
.end method

.method protected abstract elementWasUpdated(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;)V
.end method

.method protected abstract libraryPreDelete(Ljava/lang/String;)Z
.end method

.method protected abstract libraryPreReadabilityChange(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract libraryWasAdded(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
.end method

.method protected abstract libraryWasDeleted(Ljava/lang/String;)V
.end method

.method protected abstract libraryWasUnshared(Ljava/lang/String;)V
.end method

.method protected abstract libraryWasUpdated(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
.end method

.method protected abstract onSyncError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
.end method

.method protected abstract onSyncProgress(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;J)V
.end method

.method protected abstract syncAvailable(Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V
.end method

.method protected abstract syncFinished()V
.end method

.method protected abstract syncStarted()V
.end method

.method protected abstract syncUnavailable(Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V
.end method
