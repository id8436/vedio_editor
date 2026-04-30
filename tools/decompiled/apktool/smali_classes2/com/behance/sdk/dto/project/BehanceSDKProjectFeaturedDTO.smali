.class public Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;
.super Lcom/behance/sdk/dto/search/BehanceSDKFeaturedDTO;
.source "BehanceSDKProjectFeaturedDTO.java"


# instance fields
.field private featuredDate:J

.field private projectUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/behance/sdk/dto/search/BehanceSDKFeaturedDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public getFeaturedDate()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;->featuredDate:J

    return-wide v0
.end method

.method public getProjectUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;->projectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setFeaturedDate(J)V
    .locals 1

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;->featuredDate:J

    .line 39
    return-void
.end method

.method public setProjectUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;->projectUrl:Ljava/lang/String;

    .line 47
    return-void
.end method
