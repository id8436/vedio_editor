.class public Lcom/behance/sdk/files/ImageAlbum;
.super Ljava/lang/Object;
.source "ImageAlbum.java"


# instance fields
.field private albumName:Ljava/lang/String;

.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/project/modules/ImageModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/behance/sdk/files/ImageAlbum;->albumName:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public addImage(Lcom/behance/sdk/project/modules/ImageModule;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/behance/sdk/files/ImageAlbum;->images:Ljava/util/List;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/files/ImageAlbum;->images:Ljava/util/List;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/files/ImageAlbum;->images:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public getCoverBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/behance/sdk/files/ImageAlbum;->images:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/behance/sdk/files/ImageAlbum;->images:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/project/modules/ImageModule;

    .line 67
    invoke-virtual {v0, p1}, Lcom/behance/sdk/project/modules/ImageModule;->getThumbNail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/project/modules/ImageModule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/behance/sdk/files/ImageAlbum;->images:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/behance/sdk/files/ImageAlbum;->albumName:Ljava/lang/String;

    return-object v0
.end method
