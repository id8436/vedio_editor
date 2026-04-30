.class public Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;
.super Ljava/lang/Object;
.source "BehanceSDKImageDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x394b5bd62e9c06b7L


# instance fields
.field private height:I

.field private url:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;->url:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static getNewInstance(Ljava/lang/String;)Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    invoke-direct {v0, p0}, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;->height:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;->height:I

    .line 77
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;->url:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;->width:I

    .line 69
    return-void
.end method
