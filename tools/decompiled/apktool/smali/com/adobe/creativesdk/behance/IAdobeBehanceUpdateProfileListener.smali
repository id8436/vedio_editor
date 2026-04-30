.class public interface abstract Lcom/adobe/creativesdk/behance/IAdobeBehanceUpdateProfileListener;
.super Ljava/lang/Object;
.source "IAdobeBehanceUpdateProfileListener.java"

# interfaces
.implements Lcom/behance/sdk/IBehanceSDKUpdateProfileListener;


# virtual methods
.method public abstract onProfileUpdateFailure(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onProfileUpdateSuccess()V
.end method
