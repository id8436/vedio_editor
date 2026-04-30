.class public interface abstract Lcom/behance/sdk/listeners/IBehanceSDKProjectsDataManagerGetProjectsListener;
.super Ljava/lang/Object;
.source "IBehanceSDKProjectsDataManagerGetProjectsListener.java"


# virtual methods
.method public abstract onProjectsDataManagerGetProjectsFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;)V
.end method

.method public abstract onProjectsDataManagerGetProjectsFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)V
.end method

.method public abstract onProjectsDataManagerGetProjectsSuccess(Ljava/util/List;Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onProjectsDataManagerGetProjectsSuccess(Ljava/util/List;Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)V
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
