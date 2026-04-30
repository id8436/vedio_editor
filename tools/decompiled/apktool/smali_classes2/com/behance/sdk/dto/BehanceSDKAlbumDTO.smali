.class public Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;
.super Ljava/lang/Object;
.source "BehanceSDKAlbumDTO.java"


# instance fields
.field private albumName:Ljava/lang/String;

.field private albumType:Lcom/behance/sdk/enums/BehanceSDKAlbumType;

.field private imagesList:Ljava/util/List;
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
.method public constructor <init>(Ljava/lang/String;Lcom/behance/sdk/enums/BehanceSDKAlbumType;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->albumName:Ljava/lang/String;

    .line 43
    if-nez p2, :cond_0

    .line 44
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKAlbumType;->DEVICE_ALBUM:Lcom/behance/sdk/enums/BehanceSDKAlbumType;

    iput-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->albumType:Lcom/behance/sdk/enums/BehanceSDKAlbumType;

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    iput-object p2, p0, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->albumType:Lcom/behance/sdk/enums/BehanceSDKAlbumType;

    goto :goto_0
.end method


# virtual methods
.method public addImage(Lcom/behance/sdk/project/modules/ImageModule;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->imagesList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->imagesList:Ljava/util/List;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->imagesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public getAlbumType()Lcom/behance/sdk/enums/BehanceSDKAlbumType;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->albumType:Lcom/behance/sdk/enums/BehanceSDKAlbumType;

    return-object v0
.end method

.method public getCoverBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->imagesList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->imagesList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/project/modules/ImageModule;

    .line 57
    invoke-virtual {v0, p1}, Lcom/behance/sdk/project/modules/ImageModule;->getThumbNail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
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
    .line 79
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->imagesList:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->albumName:Ljava/lang/String;

    return-object v0
.end method

.method public setImages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/project/modules/ImageModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->imagesList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->imagesList:Ljava/util/List;

    .line 73
    :cond_0
    if-eqz p1, :cond_1

    .line 74
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->imagesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    :cond_1
    return-void
.end method
