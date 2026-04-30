.class public Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;
.super Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;
.source "BehanceSDKPostProjectCommentAsyncTaskParams.java"


# instance fields
.field private commentContent:Ljava/lang/String;

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
.method public getCommentContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;->commentContent:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;->projectId:Ljava/lang/String;

    return-object v0
.end method

.method public setCommentContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;->commentContent:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setProjectId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;->projectId:Ljava/lang/String;

    .line 40
    return-void
.end method
