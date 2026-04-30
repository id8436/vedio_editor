.class public Lcom/behance/sdk/dto/project/BehanceSDKProjectToolDTO;
.super Ljava/lang/Object;
.source "BehanceSDKProjectToolDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private iconUrl:Ljava/lang/String;

.field private id:I

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectToolDTO;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectToolDTO;->id:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectToolDTO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectToolDTO;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectToolDTO;->iconUrl:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectToolDTO;->id:I

    .line 21
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectToolDTO;->title:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectToolDTO;->url:Ljava/lang/String;

    .line 37
    return-void
.end method
