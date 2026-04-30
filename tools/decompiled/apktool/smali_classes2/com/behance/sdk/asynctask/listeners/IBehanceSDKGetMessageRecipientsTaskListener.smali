.class public interface abstract Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetMessageRecipientsTaskListener;
.super Ljava/lang/Object;
.source "IBehanceSDKGetMessageRecipientsTaskListener.java"


# virtual methods
.method public abstract onGetMessageRecipientSuggestionsTaskCancel()V
.end method

.method public abstract onGetMessageRecipientSuggestionsTaskFailure(Ljava/lang/Exception;)V
.end method

.method public abstract onGetMessageRecipientSuggestionsTaskSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;",
            ">;)V"
        }
    .end annotation
.end method
