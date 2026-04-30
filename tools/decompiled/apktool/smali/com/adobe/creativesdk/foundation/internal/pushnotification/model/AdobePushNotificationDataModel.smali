.class public Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;
.super Ljava/lang/Object;
.source "AdobePushNotificationDataModel.java"


# static fields
.field public static final ACCEPT_REQUEST:Ljava/lang/String; = "acceptRequest"

.field public static final ASSET_COUNT:Ljava/lang/String; = "ASSET_COUNT"

.field public static final ASSET_NAME:Ljava/lang/String; = "assetName"

.field public static final ASSET_URL:Ljava/lang/String; = "assetUrl"

.field public static final COLLABORATOR_ROLE_CHANGE_AVATAR:Ljava/lang/String; = "avatar"

.field public static final COLLABORATOR_ROLE_CHANGE_PREVIOUS_ROLE:Ljava/lang/String; = "originalRole"

.field public static final COLLABORATOR_ROLE_CHANGE_SENDER_FIRST_NAME:Ljava/lang/String; = "firstName"

.field public static final COLLABORATOR_ROLE_CHANGE_SENDER_LAST_NAME:Ljava/lang/String; = "lastName"

.field public static final COLLABORATOR_ROLE_CHANGE_UPDATED_ROLE:Ljava/lang/String; = "updatedRole"

.field public static final COMMENT_MSG:Ljava/lang/String; = "comment"

.field public static final CREATED_TIMESTAMP:Ljava/lang/String; = "created-timestamp"

.field public static final FOLDER_NAME:Ljava/lang/String; = "folderName"

.field public static final FOLDER_URL:Ljava/lang/String; = "folderUrl"

.field public static final IS_ACTION_KEY:Ljava/lang/String; = "IS_ACTION"

.field public static final LIBRARY_NAME:Ljava/lang/String; = "libraryName"

.field public static final LIBRARY_URL:Ljava/lang/String; = "libraryUrl"

.field public static final NOTIFICATION_ID:Ljava/lang/String; = "notificationId"

.field public static final NOTIFICATION_TYPE:Ljava/lang/String; = "type"

.field public static final REGION:Ljava/lang/String; = "region"

.field public static final REMOVED_USER_ID:Ljava/lang/String; = "removedUserId"

.field public static final RESOURCE_NAME:Ljava/lang/String; = "resourceName"

.field public static final RESOURCE_URL:Ljava/lang/String; = "resourceUrl"

.field public static final SELF:Ljava/lang/String; = "self"

.field public static final SENDER_NAME:Ljava/lang/String; = "senderName"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final STATE_EXPIRED:Ljava/lang/String; = "EXPIRED"

.field public static final STATE_NEW:Ljava/lang/String; = "NEW"

.field public static final SUBTYPE:Ljava/lang/String; = "subType"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final UNREAD_COUNT:Ljava/lang/String; = "unreadCount"

.field public static final UPLOAD_DOWNLOAD_REQUEST_CANCELLATION_KEY:Ljava/lang/String; = "UPLOAD_DOWNLOAD_REQUEST_CANCELLATION"

.field public static final UPLOAD_DOWNLOAD_REQUEST_CANCELLATION_NOTIFICATION_ID_KEY:Ljava/lang/String; = "UPLOAD_DOWNLOAD_REQUEST_CANCELLATION_NOTIFICATION_ID"

.field public static final USER_ID:Ljava/lang/String; = "user-Id"

.field public static final USER_NAME:Ljava/lang/String; = "UserName"

.field private static _dataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;


# instance fields
.field preferenceFileCollaboratorDeleteKey:Ljava/lang/String;

.field preferenceFileCollaboratorRoleChangeKey:Ljava/lang/String;

.field preferenceFileCommentKey:Ljava/lang/String;

.field preferenceFileInviteAcceptKey:Ljava/lang/String;

.field preferenceFileInviteKey:Ljava/lang/String;

.field sharedCollaboratorDeletePref:Landroid/content/SharedPreferences;

.field sharedCollaboratorUpdatePref:Landroid/content/SharedPreferences;

.field sharedCommentPref:Landroid/content/SharedPreferences;

.field sharedInviteAcceptPref:Landroid/content/SharedPreferences;

.field sharedInvitePref:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string/jumbo v0, "com.adobe.creativecloud.NotificationsCollaboratorRoleChangeDatabase"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->preferenceFileCollaboratorRoleChangeKey:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "com.adobe.creativecloud.NotificationsInviteDatabase"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->preferenceFileInviteKey:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "com.adobe.creativecloud.NotificationsInviteAcceptDatabase"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->preferenceFileInviteAcceptKey:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "com.adobe.creativecloud.NotificationsCommentDatabase"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->preferenceFileCommentKey:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "com.adobe.creativecloud.NotificationCollaboratorDelete"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->preferenceFileCollaboratorDeleteKey:Ljava/lang/String;

    .line 74
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->preferenceFileInviteKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedInvitePref:Landroid/content/SharedPreferences;

    .line 76
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->preferenceFileInviteAcceptKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedInviteAcceptPref:Landroid/content/SharedPreferences;

    .line 77
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->preferenceFileCommentKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedCommentPref:Landroid/content/SharedPreferences;

    .line 78
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->preferenceFileCollaboratorRoleChangeKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedCollaboratorUpdatePref:Landroid/content/SharedPreferences;

    .line 79
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->preferenceFileCollaboratorDeleteKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedCollaboratorDeletePref:Landroid/content/SharedPreferences;

    .line 81
    return-void
.end method

.method private getAllNotificationForCollaboratorRoleChange(Landroid/content/SharedPreferences;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 291
    const-string/jumbo v1, "ASSET_COUNT"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string/jumbo v1, "assetUrl"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    return-object v0
.end method

.method private getAllNotificationForCommentOrInviteAccept(Landroid/content/SharedPreferences;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 283
    const-string/jumbo v1, "ASSET_COUNT"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string/jumbo v1, "assetUrl"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    return-object v0
.end method

.method private getAssetURLForCollaboratorDelete(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    const-string/jumbo v0, "assetUrl"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAssetURLForCollaboratorRoleChange(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    const-string/jumbo v0, "assetUrl"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAssetURLForInvite()Ljava/lang/String;
    .locals 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedInvitePref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 258
    const/4 v0, 0x0

    .line 259
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 262
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 263
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 266
    :cond_0
    return-object v0
.end method

.method private getAssetURLForInviteAcceptOrComment(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    const-string/jumbo v0, "assetUrl"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCount(Landroid/content/SharedPreferences;)I
    .locals 2

    .prologue
    .line 253
    const-string/jumbo v0, "ASSET_COUNT"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getSharedNotificationDataModel()Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;
    .locals 2

    .prologue
    .line 86
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->_dataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->_dataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;

    .line 89
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->_dataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getURLFromPayload(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 96
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 97
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType:[I

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 111
    :goto_0
    return-object v0

    .line 103
    :pswitch_0
    const-string/jumbo v2, "resourceUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clearSharedPreferences()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedCommentPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 384
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 385
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 387
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedInviteAcceptPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 388
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 389
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 391
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedInvitePref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 392
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 393
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 395
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedCollaboratorUpdatePref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 396
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 397
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 398
    return-void
.end method

.method public contains(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 142
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType:[I

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 160
    :cond_0
    :goto_0
    return v0

    .line 145
    :pswitch_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedCommentPref:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedCommentPref:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 150
    :pswitch_2
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedInviteAcceptPref:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedInviteAcceptPref:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 153
    :pswitch_3
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedInvitePref:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedInvitePref:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 155
    :pswitch_4
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedCollaboratorUpdatePref:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedCollaboratorUpdatePref:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public deleteActivities(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 215
    const/4 v2, 0x0

    .line 216
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType:[I

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 234
    :goto_0
    if-eqz v2, :cond_1

    .line 235
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 236
    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 237
    const-string/jumbo v4, "ASSET_COUNT"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 238
    if-gt v1, v0, :cond_0

    .line 239
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 245
    :goto_1
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 249
    :goto_2
    return v0

    .line 218
    :pswitch_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedCommentPref:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 222
    :pswitch_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedInviteAcceptPref:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 225
    :pswitch_2
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedCollaboratorUpdatePref:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 228
    :pswitch_3
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedCollaboratorDeletePref:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 241
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 242
    const-string/jumbo v2, "ASSET_COUNT"

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 243
    invoke-interface {v3, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_1
    move v0, v1

    .line 249
    goto :goto_2

    .line 216
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public deleteInvite(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedInvitePref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedInvitePref:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllNotification(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 340
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->getAssetURL(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 341
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType:[I

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 357
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 343
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedInvitePref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 345
    :pswitch_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedCommentPref:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->getAllNotificationForCommentOrInviteAccept(Landroid/content/SharedPreferences;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 349
    :pswitch_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedInviteAcceptPref:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->getAllNotificationForCommentOrInviteAccept(Landroid/content/SharedPreferences;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 351
    :pswitch_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedCollaboratorUpdatePref:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->getAllNotificationForCollaboratorRoleChange(Landroid/content/SharedPreferences;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getAssetURL(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 317
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType:[I

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 332
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 319
    :pswitch_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->getAssetURLForInvite()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 322
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedCommentPref:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->getAssetURLForInviteAcceptOrComment(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 326
    :pswitch_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedInviteAcceptPref:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->getAssetURLForInviteAcceptOrComment(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 328
    :pswitch_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedCollaboratorUpdatePref:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->getAssetURLForCollaboratorRoleChange(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 330
    :pswitch_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedCollaboratorDeletePref:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->getAssetURLForCollaboratorDelete(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNotificationCount(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)I
    .locals 2

    .prologue
    .line 300
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType:[I

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 311
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 301
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedInvitePref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0

    .line 303
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedCommentPref:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->getCount(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0

    .line 307
    :pswitch_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedInviteAcceptPref:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->getCount(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0

    .line 308
    :pswitch_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedCollaboratorUpdatePref:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->getCount(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0

    .line 309
    :pswitch_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedCollaboratorDeletePref:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->getCount(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNotificationPayload(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 362
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType:[I

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 376
    :goto_0
    return-object v0

    .line 363
    :pswitch_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedInvitePref:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 367
    :pswitch_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedInviteAcceptPref:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 369
    :pswitch_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedCommentPref:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 371
    :pswitch_3
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedCollaboratorUpdatePref:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 373
    :pswitch_4
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedCollaboratorDeletePref:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 362
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public insertActivities(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 166
    .line 167
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType:[I

    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    move-object v2, v3

    .line 184
    :goto_0
    if-eqz v2, :cond_4

    .line 185
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 187
    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 188
    const-string/jumbo v5, "ASSET_COUNT"

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 190
    invoke-direct {p0, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->getURLFromPayload(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)Ljava/lang/String;

    move-result-object v5

    .line 191
    const-string/jumbo v6, "assetUrl"

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    if-nez v1, :cond_1

    .line 193
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 194
    const-string/jumbo v2, "assetUrl"

    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 199
    :cond_0
    :goto_1
    const-string/jumbo v2, "ASSET_COUNT"

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v4, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 202
    invoke-interface {v4, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 203
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 210
    :goto_2
    return v0

    .line 169
    :pswitch_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedCommentPref:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 173
    :pswitch_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedInviteAcceptPref:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 176
    :pswitch_2
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedCollaboratorUpdatePref:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 179
    :pswitch_3
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedCollaboratorDeletePref:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 195
    :cond_1
    if-lt v1, v0, :cond_0

    if-eqz v2, :cond_2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 196
    :cond_2
    const-string/jumbo v2, "assetUrl"

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_3
    move v0, v1

    .line 208
    goto :goto_2

    :cond_4
    move v0, v1

    .line 210
    goto :goto_2

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public insertActivity(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;)V
    .locals 2

    .prologue
    .line 402
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType:[I

    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 415
    :goto_0
    :pswitch_0
    return-void

    .line 410
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->insertActivities(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;)Z

    goto :goto_0

    .line 402
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public insertInvite(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedInvitePref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->sharedInvitePref:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 121
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
