.class public interface abstract Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetProjectsAsyncTaskListener;
.super Ljava/lang/Object;
.source "IBehanceSDKGetProjectsAsyncTaskListener.java"


# virtual methods
.method public abstract onGetProjectsAsyncTaskFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)V
.end method

.method public abstract onGetProjectsAsyncTaskSuccess(Ljava/util/List;Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;",
            ")V"
        }
    .end annotation
.end method
