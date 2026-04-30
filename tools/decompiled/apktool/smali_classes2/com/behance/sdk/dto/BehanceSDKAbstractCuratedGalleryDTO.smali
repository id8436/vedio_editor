.class public Lcom/behance/sdk/dto/BehanceSDKAbstractCuratedGalleryDTO;
.super Ljava/lang/Object;
.source "BehanceSDKAbstractCuratedGalleryDTO.java"


# instance fields
.field private domain:Ljava/lang/String;

.field private following:Z

.field private iconUrl:Ljava/lang/String;

.field private id:I

.field private key:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private projectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;"
        }
    .end annotation
.end field

.field private ribbonDTO:Lcom/behance/sdk/dto/BehanceSDKGalleryRibbonDTO;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKAbstractCuratedGalleryDTO;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKAbstractCuratedGalleryDTO;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/behance/sdk/dto/BehanceSDKAbstractCuratedGalleryDTO;->id:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKAbstractCuratedGalleryDTO;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKAbstractCuratedGalleryDTO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKAbstractCuratedGalleryDTO;->projectList:Ljava/util/List;

    return-object v0
.end method

.method public getRibbonDTO()Lcom/behance/sdk/dto/BehanceSDKGalleryRibbonDTO;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKAbstractCuratedGalleryDTO;->ribbonDTO:Lcom/behance/sdk/dto/BehanceSDKGalleryRibbonDTO;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKAbstractCuratedGalleryDTO;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isFollowing()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/behance/sdk/dto/BehanceSDKAbstractCuratedGalleryDTO;->following:Z

    return v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKAbstractCuratedGalleryDTO;->domain:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setFollowing(Z)V
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/behance/sdk/dto/BehanceSDKAbstractCuratedGalleryDTO;->following:Z

    .line 99
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKAbstractCuratedGalleryDTO;->iconUrl:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lcom/behance/sdk/dto/BehanceSDKAbstractCuratedGalleryDTO;->id:I

    .line 91
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKAbstractCuratedGalleryDTO;->key:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKAbstractCuratedGalleryDTO;->name:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setProjectList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKAbstractCuratedGalleryDTO;->projectList:Ljava/util/List;

    .line 107
    return-void
.end method

.method public setRibbonDTO(Lcom/behance/sdk/dto/BehanceSDKGalleryRibbonDTO;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKAbstractCuratedGalleryDTO;->ribbonDTO:Lcom/behance/sdk/dto/BehanceSDKGalleryRibbonDTO;

    .line 43
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKAbstractCuratedGalleryDTO;->url:Ljava/lang/String;

    .line 51
    return-void
.end method
