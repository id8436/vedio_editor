.class public Lcom/behance/sdk/dto/BehanceSDKImageDTO;
.super Ljava/lang/Object;
.source "BehanceSDKImageDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private height:I

.field private local:Z

.field private path:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->setPath(Ljava/lang/String;)V

    .line 35
    :goto_0
    invoke-virtual {p1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->setWidth(I)V

    .line 36
    invoke-virtual {p1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->setHeight(I)V

    .line 37
    invoke-virtual {p1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->isNewModule()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->setLocal(Z)V

    .line 38
    return-void

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->getDisp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->setPath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->setPath(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p2}, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->setWidth(I)V

    .line 20
    invoke-virtual {p0, p3}, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->setHeight(I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->setPath(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p2}, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->setWidth(I)V

    .line 26
    invoke-virtual {p0, p3}, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->setHeight(I)V

    .line 27
    invoke-virtual {p0, p4}, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->setLocal(Z)V

    .line 28
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->height:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->width:I

    return v0
.end method

.method public isLocal()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->local:Z

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->height:I

    .line 54
    return-void
.end method

.method public setLocal(Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->local:Z

    .line 70
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->path:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->width:I

    .line 46
    return-void
.end method
