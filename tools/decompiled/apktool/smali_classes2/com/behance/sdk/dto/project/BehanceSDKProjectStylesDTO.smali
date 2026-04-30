.class public Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;
.super Ljava/lang/Object;
.source "BehanceSDKProjectStylesDTO.java"


# instance fields
.field private bgColor:I

.field private bgImageRepeat:Z

.field private bgImageUrl:Ljava/lang/String;

.field private captionCSS:Ljava/lang/String;

.field private customCSS:Ljava/lang/String;

.field private dividerCSS:Ljava/lang/String;

.field private linkCSS:Ljava/lang/String;

.field private mainTextCSS:Ljava/lang/String;

.field private moduleMarginBottom:I

.field private projectMarginTop:I

.field private subTitleCSS:Ljava/lang/String;

.field private titleCSS:Ljava/lang/String;

.field private underlineCSS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBgColor()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->bgColor:I

    return v0
.end method

.method public getBgImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->bgImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptionCSS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->captionCSS:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomCSS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->customCSS:Ljava/lang/String;

    return-object v0
.end method

.method public getDividerCSS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->dividerCSS:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkCSS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->linkCSS:Ljava/lang/String;

    return-object v0
.end method

.method public getMainTextCSS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->mainTextCSS:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleMarginBottom()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->moduleMarginBottom:I

    return v0
.end method

.method public getProjectMarginTop()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->projectMarginTop:I

    return v0
.end method

.method public getSubTitleCSS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->subTitleCSS:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleCSS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->titleCSS:Ljava/lang/String;

    return-object v0
.end method

.method public getUnderlineCSS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->underlineCSS:Ljava/lang/String;

    return-object v0
.end method

.method public isBgImageRepeat()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->bgImageRepeat:Z

    return v0
.end method

.method public setBgColor(I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->bgColor:I

    .line 37
    return-void
.end method

.method public setBgImageRepeat(Z)V
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->bgImageRepeat:Z

    .line 121
    return-void
.end method

.method public setBgImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->bgImageUrl:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setCaptionCSS(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->captionCSS:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setCustomCSS(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->customCSS:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setDividerCSS(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->dividerCSS:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setLinkCSS(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->linkCSS:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setMainTextCSS(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->mainTextCSS:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setModuleMarginBottom(I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->moduleMarginBottom:I

    .line 53
    return-void
.end method

.method public setProjectMarginTop(I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->projectMarginTop:I

    .line 45
    return-void
.end method

.method public setSubTitleCSS(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->subTitleCSS:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setTitleCSS(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->titleCSS:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setUnderlineCSS(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->underlineCSS:Ljava/lang/String;

    .line 117
    return-void
.end method
