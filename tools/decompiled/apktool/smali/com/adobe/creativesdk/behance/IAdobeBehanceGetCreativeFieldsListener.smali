.class public interface abstract Lcom/adobe/creativesdk/behance/IAdobeBehanceGetCreativeFieldsListener;
.super Ljava/lang/Object;
.source "IAdobeBehanceGetCreativeFieldsListener.java"

# interfaces
.implements Lcom/behance/sdk/IBehanceSDKGetCreativeFieldsListener;


# virtual methods
.method public abstract onLoadCreativeFieldsFailure(Ljava/lang/Exception;)V
.end method

.method public abstract onLoadCreativeFieldsSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;",
            ">;)V"
        }
    .end annotation
.end method
