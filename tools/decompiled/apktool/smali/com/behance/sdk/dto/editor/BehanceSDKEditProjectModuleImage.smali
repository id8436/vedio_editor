.class public Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;
.super Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCaptionable;
.source "BehanceSDKEditProjectModuleImage.java"


# instance fields
.field private disp:Ljava/lang/String;

.field private fullBleed:Z

.field private height:I

.field private path:Ljava/lang/String;

.field private src:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCaptionable;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->disp:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->height:I

    return v0
.end method

.method public getModuleType()Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->IMAGE:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->src:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->width:I

    return v0
.end method

.method public isFullBleed()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->fullBleed:Z

    return v0
.end method

.method public setDisp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->disp:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setFullBleed(Z)V
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->fullBleed:Z

    .line 23
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->height:I

    .line 56
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->path:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->src:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->width:I

    .line 48
    return-void
.end method

.method public toggleFullBleed()V
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->fullBleed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->fullBleed:Z

    .line 27
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
