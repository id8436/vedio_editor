.class public abstract Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback$Stub;
.super Landroid/os/Binder;
.source "IAdobeAuthLogoutCallback.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthLogoutCallback"

.field static final TRANSACTION_onError:I = 0x2

.field static final TRANSACTION_onSuccess:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string/jumbo v0, "com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthLogoutCallback"

    invoke-virtual {p0, p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback;
    .locals 2

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string/jumbo v0, "com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthLogoutCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 44
    :sswitch_0
    const-string/jumbo v1, "com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthLogoutCallback"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string/jumbo v1, "com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthLogoutCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback$Stub;->onSuccess()V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    :sswitch_2
    const-string/jumbo v1, "com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthLogoutCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 59
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback$Stub;->onError(I)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
