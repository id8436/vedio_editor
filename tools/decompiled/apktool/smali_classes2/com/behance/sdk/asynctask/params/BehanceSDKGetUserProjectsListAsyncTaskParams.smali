.class public Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;
.super Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;
.source "BehanceSDKGetUserProjectsListAsyncTaskParams.java"


# static fields
.field public static final DEFAULT_REQUEST_PAGE_SIZE:I = 0x18


# instance fields
.field private includePrivateProjects:Z

.field private pageNumber:I

.field private userId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;->includePrivateProjects:Z

    return-void
.end method


# virtual methods
.method public getPageNumber()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;->pageNumber:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;->userId:I

    return v0
.end method

.method public isIncludePrivateProjects()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;->includePrivateProjects:Z

    return v0
.end method

.method public setIncludePrivateProjects(Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;->includePrivateProjects:Z

    .line 43
    return-void
.end method

.method public setPageNumber(I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;->pageNumber:I

    .line 51
    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;->userId:I

    .line 35
    return-void
.end method
