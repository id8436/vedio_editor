.class public Lcom/behance/sdk/dto/BehanceSDKGalleryRibbonDTO;
.super Ljava/lang/Object;
.source "BehanceSDKGalleryRibbonDTO.java"


# instance fields
.field private image2xUrl:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage2xUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKGalleryRibbonDTO;->image2xUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKGalleryRibbonDTO;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setImage2xUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKGalleryRibbonDTO;->image2xUrl:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKGalleryRibbonDTO;->imageUrl:Ljava/lang/String;

    .line 32
    return-void
.end method
