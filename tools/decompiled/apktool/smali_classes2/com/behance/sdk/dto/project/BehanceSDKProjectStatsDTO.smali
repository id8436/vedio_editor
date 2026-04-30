.class public Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;
.super Ljava/lang/Object;
.source "BehanceSDKProjectStatsDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4e269162245cf606L


# instance fields
.field private appreciationsCount:I

.field private commentsCount:I

.field private viewsCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppreciationsCount()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;->appreciationsCount:I

    return v0
.end method

.method public getCommentsCount()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;->commentsCount:I

    return v0
.end method

.method public getViewsCount()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;->viewsCount:I

    return v0
.end method

.method public setAppreciationsCount(I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;->appreciationsCount:I

    .line 38
    return-void
.end method

.method public setCommentsCount(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;->commentsCount:I

    .line 54
    return-void
.end method

.method public setViewsCount(I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;->viewsCount:I

    .line 46
    return-void
.end method
