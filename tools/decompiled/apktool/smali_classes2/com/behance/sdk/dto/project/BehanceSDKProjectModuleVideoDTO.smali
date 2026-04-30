.class public Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;
.super Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;
.source "BehanceSDKProjectModuleVideoDTO.java"


# static fields
.field private static final serialVersionUID:J = 0x36af8012d1b059cfL


# instance fields
.field private embedHTML:Ljava/lang/String;

.field private height:I

.field private imageSrc:Ljava/lang/String;

.field private playerSkin:Ljava/lang/String;

.field private playerUrl:Ljava/lang/String;

.field private videoSrc:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;-><init>()V

    .line 42
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->VIDEO:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    invoke-virtual {p0, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->setType(Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getEmbedHTML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->embedHTML:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->height:I

    return v0
.end method

.method public getImageSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->imageSrc:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->imageSrc:Ljava/lang/String;

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getPlayerSkin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->playerSkin:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->playerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->videoSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->width:I

    return v0
.end method

.method public setEmbedHTML(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->embedHTML:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->height:I

    .line 51
    return-void
.end method

.method public setImageSrc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->imageSrc:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setPlayerSkin(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->playerSkin:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setPlayerUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->playerUrl:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setVideoSrc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->videoSrc:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->width:I

    .line 59
    return-void
.end method
