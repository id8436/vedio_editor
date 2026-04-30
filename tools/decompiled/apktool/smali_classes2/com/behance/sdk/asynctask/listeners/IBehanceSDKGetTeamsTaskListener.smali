.class public interface abstract Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetTeamsTaskListener;
.super Ljava/lang/Object;
.source "IBehanceSDKGetTeamsTaskListener.java"


# virtual methods
.method public abstract onGetTeamsFailure(Ljava/lang/Exception;)V
.end method

.method public abstract onGetTeamsSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;",
            ">;)V"
        }
    .end annotation
.end method
