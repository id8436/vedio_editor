.class public abstract Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService$Stub;
.super Landroid/os/Binder;
.source "IAdobeAuthService.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService"

.field static final TRANSACTION_getUserProfile:I = 0x2

.field static final TRANSACTION_isUserAuthenticated:I = 0x1

.field static final TRANSACTION_login:I = 0x3

.field static final TRANSACTION_logout:I = 0x4

.field static final TRANSACTION_openContinuationAuthEvent:I = 0x6

.field static final TRANSACTION_signUp:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService"

    invoke-virtual {p0, p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService;
    .locals 2

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string/jumbo v0, "com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string/jumbo v0, "com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string/jumbo v0, "com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService$Stub;->isUserAuthenticated()Z

    move-result v0

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    .line 55
    :sswitch_2
    const-string/jumbo v0, "com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService$Stub;->getUserProfile()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;

    move-result-object v0

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {v0, p3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 69
    :sswitch_3
    const-string/jumbo v0, "com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;

    .line 78
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;

    move-result-object v2

    .line 79
    invoke-virtual {p0, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService$Stub;->login(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_2
    move-object v0, v3

    .line 75
    goto :goto_2

    .line 85
    :sswitch_4
    const-string/jumbo v0, "com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback;

    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService$Stub;->logout(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 94
    :sswitch_5
    const-string/jumbo v0, "com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;

    .line 103
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;

    move-result-object v2

    .line 104
    invoke-virtual {p0, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService$Stub;->signUp(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_3
    move-object v0, v3

    .line 100
    goto :goto_3

    .line 110
    :sswitch_6
    const-string/jumbo v0, "com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    sget-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    move-object v4, v0

    .line 119
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 120
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;

    .line 126
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;

    move-result-object v3

    .line 127
    invoke-virtual {p0, v4, v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService$Stub;->openContinuationAuthEvent(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v4, :cond_6

    .line 130
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    invoke-virtual {v4, p3, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_4
    move-object v4, v3

    .line 116
    goto :goto_4

    :cond_5
    move-object v0, v3

    .line 123
    goto :goto_5

    .line 134
    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
