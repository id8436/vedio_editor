.class public interface abstract Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$Listener;
.super Ljava/lang/Object;
.source "CCDownloadSession.java"


# virtual methods
.method public abstract onDownloadCancel(I)V
.end method

.method public abstract onDownloadComplete(Ljava/util/ArrayList;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/media/MediaInfo;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract onDownloadProgress(D)V
.end method

.method public abstract onDownloadStart()V
.end method
