.class public interface abstract Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback;
.super Ljava/lang/Object;
.source "IAdobeAuthLogoutCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract onError(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSuccess()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
