.class public Lcom/adobe/premiereclip/mediabrowser/BucketForGooglePhotos;
.super Lcom/adobe/premiereclip/mediabrowser/Bucket;
.source "BucketForGooglePhotos.java"


# instance fields
.field mAlbumEntry:Lcom/google/gdata/data/photos/AlbumEntry;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/data/photos/AlbumEntry;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/mediabrowser/Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/BucketForGooglePhotos;->mAlbumEntry:Lcom/google/gdata/data/photos/AlbumEntry;

    .line 14
    return-void
.end method


# virtual methods
.method public deleteAllItems()V
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/BucketForGooglePhotos;->getThumbnailItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 22
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/BucketForGooglePhotos;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 23
    return-void
.end method

.method public getAlbumEntry()Lcom/google/gdata/data/photos/AlbumEntry;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/BucketForGooglePhotos;->mAlbumEntry:Lcom/google/gdata/data/photos/AlbumEntry;

    return-object v0
.end method
