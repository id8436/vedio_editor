.class public Lcom/behance/sdk/dto/search/BehanceSDKUserDetailsSectionDTO;
.super Ljava/lang/Object;
.source "BehanceSDKUserDetailsSectionDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x67cfdc772e015564L


# instance fields
.field private description:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDetailsSectionDTO;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDetailsSectionDTO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDetailsSectionDTO;->description:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKUserDetailsSectionDTO;->title:Ljava/lang/String;

    .line 41
    return-void
.end method
