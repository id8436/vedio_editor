.class public interface abstract Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetUserProjectsListAsyncTaskListener;
.super Ljava/lang/Object;
.source "IBehanceSDKGetUserProjectsListAsyncTaskListener.java"


# virtual methods
.method public abstract onGetUserProjectsListFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;)V
.end method

.method public abstract onGetUserProjectsListSuccess(Ljava/util/List;Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;",
            ")V"
        }
    .end annotation
.end method
