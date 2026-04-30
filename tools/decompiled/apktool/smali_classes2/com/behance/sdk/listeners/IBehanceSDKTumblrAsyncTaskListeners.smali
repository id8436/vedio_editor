.class public interface abstract Lcom/behance/sdk/listeners/IBehanceSDKTumblrAsyncTaskListeners;
.super Ljava/lang/Object;
.source "IBehanceSDKTumblrAsyncTaskListeners.java"


# virtual methods
.method public abstract onGetAuthURLTaskFailure(Ljava/lang/Exception;)V
.end method

.method public abstract onGetAuthURLTaskSuccess(Ljava/lang/String;)V
.end method

.method public abstract onPostProjectTaskTaskFailure(Ljava/lang/Exception;)V
.end method

.method public abstract onPostProjectTaskTaskSuccess(Ljava/lang/String;)V
.end method

.method public abstract onRetrieveBlogListTaskFailure(Ljava/lang/Exception;)V
.end method

.method public abstract onRetrieveBlogListTaskSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRetrieveTokenTaskFailure(Ljava/lang/Exception;)V
.end method

.method public abstract onRetrieveTokenTaskSuccess(Ljava/lang/String;)V
.end method
