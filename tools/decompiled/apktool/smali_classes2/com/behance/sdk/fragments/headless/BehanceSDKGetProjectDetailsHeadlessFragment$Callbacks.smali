.class public interface abstract Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;
.super Ljava/lang/Object;
.source "BehanceSDKGetProjectDetailsHeadlessFragment.java"


# virtual methods
.method public abstract onAppreciateProjectAsyncTaskFailure(Ljava/lang/Exception;)V
.end method

.method public abstract onAppreciateProjectAsyncTaskSuccess(Z)V
.end method

.method public abstract onDeleteCommentFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKDeleteProjectCommentAsyncTaskParams;)V
.end method

.method public abstract onDeleteCommentSuccess(ZLcom/behance/sdk/asynctask/params/BehanceSDKDeleteProjectCommentAsyncTaskParams;)V
.end method

.method public abstract onFollowUnFollowUserFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;)V
.end method

.method public abstract onFollowUnFollowUserSuccess(ZLcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;)V
.end method

.method public abstract onGetProjectCommentsFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;)V
.end method

.method public abstract onGetProjectCommentsSuccess(Ljava/util/List;ZLcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;",
            ">;Z",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onGetProjectDetailsFailure(Ljava/lang/Exception;)V
.end method

.method public abstract onGetProjectDetailsSuccess(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
.end method

.method public abstract onPostCommentFailure(Ljava/lang/Exception;)V
.end method

.method public abstract onPostCommentSuccess(ILcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;)V
.end method

.method public abstract onPostSettingsTaskFailure(Ljava/lang/Exception;)V
.end method

.method public abstract onPostSettingsTaskSuccess(ZLcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;)V
.end method
