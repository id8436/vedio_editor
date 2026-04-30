.class public interface abstract Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetCitiesAsyncTaskListener;
.super Ljava/lang/Object;
.source "IBehanceSDKGetCitiesAsyncTaskListener.java"


# virtual methods
.method public abstract onGetCitiesFailure(Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;Ljava/lang/Exception;)V
.end method

.method public abstract onGetCitiesSuccess(Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;",
            ">;)V"
        }
    .end annotation
.end method
