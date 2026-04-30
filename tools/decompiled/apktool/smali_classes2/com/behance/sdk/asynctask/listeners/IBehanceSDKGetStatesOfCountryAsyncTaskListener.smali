.class public interface abstract Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetStatesOfCountryAsyncTaskListener;
.super Ljava/lang/Object;
.source "IBehanceSDKGetStatesOfCountryAsyncTaskListener.java"


# virtual methods
.method public abstract onGetStatesFailure(Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract onGetStatesSuccess(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;",
            ">;)V"
        }
    .end annotation
.end method
