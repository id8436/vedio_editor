.class public Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;
.super Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;
.source "BehanceSDKProjectModuleImageDTO.java"


# static fields
.field private static final serialVersionUID:J = -0x52a47cc66e96cbb0L


# instance fields
.field private captionAlignment:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

.field private captionFormattedText:Ljava/lang/String;

.field private captionPlainText:Ljava/lang/String;

.field private fullBleed:Z

.field private hdSrcUrl:Ljava/lang/String;

.field private height:I

.field private srcUrl:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;-><init>()V

    .line 43
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->IMAGE:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    invoke-virtual {p0, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->setType(Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getCaptionAlignment()Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->captionAlignment:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    return-object v0
.end method

.method public getCaptionFormattedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->captionFormattedText:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptionPlainText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->captionPlainText:Ljava/lang/String;

    return-object v0
.end method

.method public getHDSrcUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->hdSrcUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->hdSrcUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->hdSrcUrl:Ljava/lang/String;

    .line 78
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->getSrcUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->height:I

    return v0
.end method

.method public getSrcUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->srcUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->srcUrl:Ljava/lang/String;

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->width:I

    return v0
.end method

.method public isFullBleed()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->fullBleed:Z

    return v0
.end method

.method public setCaptionAlignment(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 115
    invoke-static {p1}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->fromString(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->captionAlignment:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    .line 116
    return-void
.end method

.method public setCaptionFormattedText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 99
    const-string/jumbo v0, "<div"

    const-string/jumbo v1, "<div class=\"caption\""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->captionFormattedText:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setCaptionPlainText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->captionPlainText:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setFullBleed(Z)V
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->fullBleed:Z

    .line 92
    return-void
.end method

.method public setHDSrcUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->hdSrcUrl:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->height:I

    .line 72
    return-void
.end method

.method public setSrcUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->srcUrl:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->width:I

    .line 64
    return-void
.end method
