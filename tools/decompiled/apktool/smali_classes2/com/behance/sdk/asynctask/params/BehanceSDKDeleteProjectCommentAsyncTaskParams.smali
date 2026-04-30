.class public Lcom/behance/sdk/asynctask/params/BehanceSDKDeleteProjectCommentAsyncTaskParams;
.super Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;
.source "BehanceSDKDeleteProjectCommentAsyncTaskParams.java"


# instance fields
.field private commentId:Ljava/lang/String;

.field private projectId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKDeleteProjectCommentAsyncTaskParams;->commentId:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKDeleteProjectCommentAsyncTaskParams;->projectId:Ljava/lang/String;

    return-object v0
.end method

.method public setCommentId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKDeleteProjectCommentAsyncTaskParams;->commentId:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setProjectId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKDeleteProjectCommentAsyncTaskParams;->projectId:Ljava/lang/String;

    .line 37
    return-void
.end method
