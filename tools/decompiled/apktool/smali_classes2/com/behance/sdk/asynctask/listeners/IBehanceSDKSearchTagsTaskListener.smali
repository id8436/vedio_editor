.class public interface abstract Lcom/behance/sdk/asynctask/listeners/IBehanceSDKSearchTagsTaskListener;
.super Ljava/lang/Object;
.source "IBehanceSDKSearchTagsTaskListener.java"


# virtual methods
.method public abstract onSearchTagsFailure(Ljava/lang/Exception;)V
.end method

.method public abstract onSearchTagsSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKTagDTO;",
            ">;)V"
        }
    .end annotation
.end method
