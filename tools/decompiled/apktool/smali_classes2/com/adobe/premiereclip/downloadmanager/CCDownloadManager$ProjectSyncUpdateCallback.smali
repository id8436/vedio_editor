.class public interface abstract Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$ProjectSyncUpdateCallback;
.super Ljava/lang/Object;
.source "CCDownloadManager.java"


# virtual methods
.method public abstract ccAssetDownloadStarted(Ljava/lang/String;)V
.end method

.method public abstract ccAssetDownloadStopped(Ljava/lang/String;)V
.end method

.method public abstract updateSyncStatus(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
