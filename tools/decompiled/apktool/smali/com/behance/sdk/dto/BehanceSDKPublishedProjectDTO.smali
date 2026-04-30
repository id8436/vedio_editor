.class public Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;
.super Ljava/lang/Object;
.source "BehanceSDKPublishedProjectDTO.java"


# instance fields
.field private projectId:Ljava/lang/String;

.field private projectImageUrl:Ljava/lang/String;

.field private projectTitle:Ljava/lang/String;

.field private projectUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->projectId:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->projectImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->projectTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->projectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setProjectId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->projectId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setProjectImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->projectImageUrl:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setProjectTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->projectTitle:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setProjectUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->projectUrl:Ljava/lang/String;

    .line 55
    return-void
.end method
