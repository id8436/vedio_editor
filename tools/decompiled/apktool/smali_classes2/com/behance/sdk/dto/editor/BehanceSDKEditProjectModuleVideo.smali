.class public Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;
.super Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCaptionable;
.source "BehanceSDKEditProjectModuleVideo.java"


# instance fields
.field private height:I

.field private html:Ljava/lang/String;

.field private path:Ljava/lang/String;

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
.method public getHeight()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->height:I

    return v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->html:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleType()Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->VIDEO:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->height:I

    .line 41
    return-void
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->html:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->path:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->width:I

    .line 49
    return-void
.end method
