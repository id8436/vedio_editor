.class public interface abstract Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;
.super Ljava/lang/Object;
.source "GallerySource.java"


# virtual methods
.method public abstract onGalleryDataAvailable(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onGalleryDataError(I)V
.end method

.method public abstract onUserRecoverableException()V
.end method
