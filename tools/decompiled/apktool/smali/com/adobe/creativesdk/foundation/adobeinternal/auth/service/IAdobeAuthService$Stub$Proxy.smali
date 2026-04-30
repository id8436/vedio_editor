.class Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAdobeAuthService.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 147
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const-string/jumbo v0, "com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService"

    return-object v0
.end method

.method public getUserProfile()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 183
    :try_start_0
    const-string/jumbo v0, "com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 185
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 186
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 195
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 197
    return-object v0

    .line 190
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 195
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 196
    throw v0
.end method

.method public isUserAuthenticated()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 164
    :try_start_0
    const-string/jumbo v4, "com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 165
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 166
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 167
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 170
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 171
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 173
    return v0

    :cond_0
    move v0, v1

    .line 167
    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 171
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 172
    throw v0
.end method

.method public login(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 204
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 206
    :try_start_0
    const-string/jumbo v0, "com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 207
    if-eqz p1, :cond_0

    .line 208
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;->writeToParcel(Landroid/os/Parcel;I)V

    .line 214
    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 215
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 216
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 222
    return-void

    .line 212
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 221
    throw v0

    .line 214
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public logout(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 230
    :try_start_0
    const-string/jumbo v0, "com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 231
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 232
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 233
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 239
    return-void

    .line 231
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 238
    throw v0
.end method

.method public openContinuationAuthEvent(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 271
    :try_start_0
    const-string/jumbo v0, "com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 272
    if-eqz p1, :cond_1

    .line 273
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->writeToParcel(Landroid/os/Parcel;I)V

    .line 279
    :goto_0
    if-eqz p2, :cond_2

    .line 280
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;->writeToParcel(Landroid/os/Parcel;I)V

    .line 286
    :goto_1
    if-eqz p3, :cond_3

    invoke-interface {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 287
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 288
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 289
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p1, v2}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 297
    return-void

    .line 277
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 296
    throw v0

    .line 284
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 286
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public signUp(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 247
    :try_start_0
    const-string/jumbo v0, "com.adobe.creativesdk.foundation.adobeinternal.auth.service.IAdobeAuthService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 248
    if-eqz p1, :cond_0

    .line 249
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;->writeToParcel(Landroid/os/Parcel;I)V

    .line 255
    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 256
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 257
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 263
    return-void

    .line 253
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 262
    throw v0

    .line 255
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
