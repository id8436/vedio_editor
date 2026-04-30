.class public interface abstract Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetProjectCommentsAsyncTaskListener;
.super Ljava/lang/Object;
.source "IBehanceSDKGetProjectCommentsAsyncTaskListener.java"


# virtual methods
.method public abstract onGetProjectCommentsFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;)V
.end method

.method public abstract onGetProjectCommentsSuccess(Ljava/util/List;Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;",
            ">;",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;",
            ")V"
        }
    .end annotation
.end method
