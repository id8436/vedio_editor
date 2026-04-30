.class public interface abstract Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService;
.super Ljava/lang/Object;
.source "IAdobeAuthService.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract getUserProfile()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isUserAuthenticated()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract login(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract logout(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract openContinuationAuthEvent(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract signUp(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
