.class public interface abstract Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetCuratedGalleryProjectsAsyncTaskListener;
.super Ljava/lang/Object;
.source "IBehanceSDKGetCuratedGalleryProjectsAsyncTaskListener.java"


# virtual methods
.method public abstract onGetCuratedGalleryProjectsFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;)V
.end method

.method public abstract onGetCuratedGalleryProjectsSuccess(Ljava/util/List;Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;)V
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
