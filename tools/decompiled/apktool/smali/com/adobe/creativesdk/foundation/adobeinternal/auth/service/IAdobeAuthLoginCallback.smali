.class public interface abstract Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;
.super Ljava/lang/Object;
.source "IAdobeAuthLoginCallback.java"

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

.method public abstract onSuccess(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
