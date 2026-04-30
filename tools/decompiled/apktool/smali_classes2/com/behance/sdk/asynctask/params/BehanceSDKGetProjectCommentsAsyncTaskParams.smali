.class public Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;
.super Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;
.source "BehanceSDKGetProjectCommentsAsyncTaskParams.java"


# static fields
.field public static final PROJECT_COMMENTS_PAGE_SIZE:I = 0x32


# instance fields
.field private pageNumber:I

.field private pageSize:I

.field private projectId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageNumber()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;->pageNumber:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;->pageSize:I

    return v0
.end method

.method public getProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;->projectId:Ljava/lang/String;

    return-object v0
.end method

.method public setPageNumber(I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;->pageNumber:I

    .line 43
    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;->pageSize:I

    .line 51
    return-void
.end method

.method public setProjectId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;->projectId:Ljava/lang/String;

    .line 35
    return-void
.end method
