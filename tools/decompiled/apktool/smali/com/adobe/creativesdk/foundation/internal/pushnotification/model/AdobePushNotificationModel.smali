.class public Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;
.super Ljava/lang/Object;
.source "AdobePushNotificationModel.java"


# static fields
.field private static currentUserID:Ljava/lang/String;


# instance fields
.field private activitiesList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;",
            ">;"
        }
    .end annotation
.end field

.field private assetCommentsCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;",
            ">;>;"
        }
    .end annotation
.end field

.field private invitationList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;",
            ">;"
        }
    .end annotation
.end field

.field private populateSharedPreferences:Z

.field private pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->currentUserID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->populateSharedPreferences:Z

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->activitiesList:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->invitationList:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->assetCommentsCount:Ljava/util/Map;

    .line 48
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->getSharedNotificationDataModel()Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;

    .line 49
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->clearSharedPreferences()V

    .line 52
    return-void
.end method

.method private addToCommentMap(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;)V
    .locals 4

    .prologue
    .line 544
    if-eqz p1, :cond_1

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->ADOBE_PUSH_NOTIFICATION_STATE_NEW:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    if-ne p1, v0, :cond_1

    .line 545
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->ADOBE_PUSH_NOTIFICATION_STATE_NEW:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    invoke-virtual {p2, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setLocalState(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;)V

    .line 546
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->ADOBE_PUSH_NOTIFICATION_STATE_NEW:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    invoke-virtual {p2, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setServerState(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;)V

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getResourceURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getResourceURL()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 548
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->assetCommentsCount:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->assetCommentsCount:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    :goto_0
    return-void

    .line 552
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 553
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->assetCommentsCount:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 557
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->ADOBE_PUSH_NOTIFICATION_STATE_EXPIRED:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    invoke-virtual {p2, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setLocalState(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;)V

    .line 558
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->ADOBE_PUSH_NOTIFICATION_STATE_EXPIRED:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    invoke-virtual {p2, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setServerState(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;)V

    goto :goto_0
.end method

.method private checkIsLeaveEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 809
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 810
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 811
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static clearSharedPreference()V
    .locals 1

    .prologue
    .line 235
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->getSharedNotificationDataModel()Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->clearSharedPreferences()V

    .line 238
    :cond_0
    return-void
.end method

.method private concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 825
    if-eqz p1, :cond_0

    .line 826
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    :cond_0
    if-eqz p2, :cond_1

    .line 830
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCollaboratorRemoveNotification(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;
    .locals 6

    .prologue
    .line 452
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;-><init>()V

    .line 454
    const-string/jumbo v0, "folder"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 455
    if-nez v0, :cond_0

    .line 456
    const-string/jumbo v0, "library"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 457
    :cond_0
    if-eqz v0, :cond_1

    .line 458
    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 459
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 460
    const-string/jumbo v4, "region"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->setResourceURL(Ljava/lang/String;)V

    .line 462
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->setResourceName(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->setRegion(Ljava/lang/String;)V

    .line 468
    :cond_1
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 469
    const-string/jumbo v0, ""

    .line 470
    if-eqz v2, :cond_2

    .line 471
    const-string/jumbo v0, "userId"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    const-string/jumbo v3, "avatar"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 473
    const-string/jumbo v4, "displayName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 474
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->isSelf(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->setRemover(Z)V

    .line 475
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->setUserId(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->setAvatarUrl(Ljava/lang/String;)V

    .line 477
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->setDisplayName(Ljava/lang/String;)V

    .line 481
    :cond_2
    const-string/jumbo v2, "removed"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 482
    if-eqz v2, :cond_3

    .line 483
    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 484
    const-string/jumbo v4, "displayName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 485
    const-string/jumbo v5, "role"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->getCollaborationTypeFromString(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    move-result-object v2

    .line 487
    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->isSelf(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->setRemoved(Z)V

    .line 488
    invoke-static {v4}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->setRemovedDisplayName(Ljava/lang/String;)V

    .line 489
    invoke-direct {p0, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->checkIsLeaveEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->setALeaveEvent(Z)V

    .line 490
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->setRemovedRole(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;)V

    .line 492
    :cond_3
    invoke-virtual {v1, p2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->setNotificationSubType(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)V

    .line 493
    return-object v1
.end method

.method private getCollaboratorRoleUpdateNotification(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;
    .locals 4

    .prologue
    .line 497
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;-><init>()V

    .line 498
    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 499
    if-eqz v1, :cond_0

    .line 500
    const-string/jumbo v2, "displayName"

    .line 501
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 500
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->setSenderName(Ljava/lang/String;)V

    .line 502
    const-string/jumbo v2, "avatar"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->setAvatarUrl(Ljava/lang/String;)V

    .line 503
    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 504
    const-string/jumbo v3, "displayName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 505
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->setDisplayName(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->setUserId(Ljava/lang/String;)V

    .line 507
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->isSelf(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->setSender(Z)V

    .line 512
    :cond_0
    const-string/jumbo v1, "library"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 513
    if-eqz v1, :cond_3

    .line 514
    const-string/jumbo v2, "name"

    .line 515
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 514
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->setResourceName(Ljava/lang/String;)V

    .line 516
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->setResourceURL(Ljava/lang/String;)V

    .line 531
    :cond_1
    :goto_0
    const-string/jumbo v1, "updated"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 532
    if-eqz v1, :cond_2

    .line 533
    const-string/jumbo v2, "originalRole"

    .line 534
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 533
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->getCollaborationTypeFromString(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->setPreviousRole(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;)V

    .line 536
    const-string/jumbo v2, "updatedRole"

    .line 537
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 536
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->getCollaborationTypeFromString(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->setUpdatedRole(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;)V

    .line 539
    :cond_2
    invoke-virtual {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->setNotificationSubType(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)V

    .line 540
    return-object v0

    .line 519
    :cond_3
    const-string/jumbo v1, "folder"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 520
    if-eqz v1, :cond_1

    .line 521
    const-string/jumbo v2, "name"

    .line 523
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 522
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 521
    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->setResourceName(Ljava/lang/String;)V

    .line 524
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->setResourceURL(Ljava/lang/String;)V

    .line 525
    const-string/jumbo v2, "region"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->setRegion(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getCommentNotification(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCommentPushNotification;
    .locals 3

    .prologue
    .line 873
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCommentPushNotification;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCommentPushNotification;-><init>()V

    .line 874
    const-string/jumbo v1, "asset"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 875
    if-eqz v1, :cond_0

    .line 878
    const-string/jumbo v2, "region"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCommentPushNotification;->setRegion(Ljava/lang/String;)V

    .line 879
    const-string/jumbo v2, "name"

    .line 880
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 879
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCommentPushNotification;->setResourceName(Ljava/lang/String;)V

    .line 881
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 882
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCommentPushNotification;->setResourceURL(Ljava/lang/String;)V

    .line 886
    :cond_0
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 887
    if-eqz v1, :cond_1

    .line 890
    const-string/jumbo v2, "firstName"

    .line 891
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 890
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCommentPushNotification;->setFirstName(Ljava/lang/String;)V

    .line 892
    const-string/jumbo v2, "lastName"

    .line 893
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 892
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCommentPushNotification;->setLastName(Ljava/lang/String;)V

    .line 894
    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 895
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCommentPushNotification;->setUserId(Ljava/lang/String;)V

    .line 896
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->isSelf(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCommentPushNotification;->setIsUser(Z)V

    .line 897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 898
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCommentPushNotification;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCommentPushNotification;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 897
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCommentPushNotification;->setDisplayName(Ljava/lang/String;)V

    .line 902
    :cond_1
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCommentPushNotification;->setNotificationSubType(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)V

    .line 903
    return-object v0
.end method

.method private getCurrentTime()J
    .locals 2

    .prologue
    .line 869
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getDecodedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 954
    if-eqz p0, :cond_0

    .line 956
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "%20"

    const-string/jumbo v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 962
    :goto_0
    return-object v0

    .line 957
    :catch_0
    move-exception v0

    .line 958
    :goto_1
    const-string/jumbo v0, "%20"

    const-string/jumbo v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 962
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 957
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static getInvitationAcceptNotification(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationAcceptPushNotification;
    .locals 3

    .prologue
    .line 908
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationAcceptPushNotification;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationAcceptPushNotification;-><init>()V

    .line 909
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    if-ne p1, v1, :cond_2

    .line 910
    const-string/jumbo v1, "folder"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 911
    if-eqz v1, :cond_0

    .line 914
    const-string/jumbo v2, "region"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationAcceptPushNotification;->setRegion(Ljava/lang/String;)V

    .line 915
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationAcceptPushNotification;->setResourceName(Ljava/lang/String;)V

    .line 916
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationAcceptPushNotification;->setResourceURL(Ljava/lang/String;)V

    .line 932
    :cond_0
    :goto_0
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 934
    if-eqz v1, :cond_1

    .line 937
    const-string/jumbo v2, "firstName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationAcceptPushNotification;->setFirstName(Ljava/lang/String;)V

    .line 939
    const-string/jumbo v2, "lastName"

    .line 940
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 939
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationAcceptPushNotification;->setLastName(Ljava/lang/String;)V

    .line 941
    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 942
    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationAcceptPushNotification;->setUserId(Ljava/lang/String;)V

    .line 943
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->isSelf(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationAcceptPushNotification;->setIsUser(Z)V

    .line 944
    const-string/jumbo v2, "displayName"

    .line 945
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 944
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationAcceptPushNotification;->setDisplayName(Ljava/lang/String;)V

    .line 949
    :cond_1
    invoke-virtual {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationAcceptPushNotification;->setNotificationSubType(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)V

    .line 950
    return-object v0

    .line 921
    :cond_2
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    if-ne p1, v1, :cond_0

    .line 922
    const-string/jumbo v1, "library"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 924
    if-eqz v1, :cond_0

    .line 926
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationAcceptPushNotification;->setResourceName(Ljava/lang/String;)V

    .line 928
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationAcceptPushNotification;->setResourceURL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getInviteDeclineNotification(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;
    .locals 5

    .prologue
    .line 403
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;-><init>()V

    .line 404
    const-string/jumbo v0, "folder"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 405
    if-nez v0, :cond_0

    .line 406
    const-string/jumbo v0, "library"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 407
    :cond_0
    if-eqz v0, :cond_1

    .line 408
    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 409
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 410
    const-string/jumbo v4, "region"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;->setResourceURL(Ljava/lang/String;)V

    .line 412
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;->setResourceName(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;->setRegion(Ljava/lang/String;)V

    .line 418
    :cond_1
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 419
    if-eqz v0, :cond_2

    .line 420
    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 421
    const-string/jumbo v3, "avatar"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 422
    const-string/jumbo v4, "displayName"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;->setUserId(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;->setAvatarUrl(Ljava/lang/String;)V

    .line 425
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;->setDisplayName(Ljava/lang/String;)V

    .line 429
    :cond_2
    const-string/jumbo v0, "sender"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 430
    if-eqz v0, :cond_3

    .line 431
    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->isSelf(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;->setSender(Z)V

    .line 436
    :cond_3
    const-string/jumbo v0, "recipient"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 437
    if-eqz v0, :cond_4

    .line 438
    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 439
    const-string/jumbo v3, "displayName"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 441
    const-string/jumbo v4, "role"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->getCollaborationTypeFromString(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    move-result-object v0

    .line 443
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->isSelf(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;->setRecipient(Z)V

    .line 444
    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;->setRecipientDisplayName(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;->setRecipientRole(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;)V

    .line 447
    :cond_4
    invoke-virtual {v1, p2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;->setNotificationSubType(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)V

    .line 448
    return-object v1
.end method

.method private getInviteFromBundle(Landroid/os/Bundle;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;
    .locals 6

    .prologue
    .line 838
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;-><init>()V

    .line 839
    const-string/jumbo v0, "senderName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 840
    const-string/jumbo v0, "acceptRequest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 841
    const-string/jumbo v3, "type"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->getValue(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    move-result-object v3

    .line 844
    if-eqz v0, :cond_3

    .line 846
    const-string/jumbo v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 847
    const-string/jumbo v0, ""

    .line 849
    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    if-ne v3, v5, :cond_1

    .line 850
    const-string/jumbo v0, "libraryName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 855
    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->setSenderUserName(Ljava/lang/String;)V

    .line 856
    invoke-virtual {v1, v4}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->setInviteID(Ljava/lang/String;)V

    .line 857
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->setResourceName(Ljava/lang/String;)V

    .line 858
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    if-ne v3, v0, :cond_2

    .line 859
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;->ADOBE_COLLABORATION_INVITE_TYPE_LIBRARY:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->setResourceType(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;)V

    :goto_1
    move-object v0, v1

    .line 865
    :goto_2
    return-object v0

    .line 851
    :cond_1
    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    if-ne v3, v5, :cond_0

    .line 852
    const-string/jumbo v0, "folderName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 861
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;->ADOBE_COLLABORATION_INVITE_TYPE_ASSET:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->setResourceType(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInviteResourceType;)V

    goto :goto_1

    .line 865
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private getInviteRevokeNotification(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;
    .locals 5

    .prologue
    .line 354
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;-><init>()V

    .line 355
    const-string/jumbo v0, "folder"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 356
    if-nez v0, :cond_0

    .line 357
    const-string/jumbo v0, "library"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 358
    :cond_0
    if-eqz v0, :cond_1

    .line 359
    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 360
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 361
    const-string/jumbo v4, "region"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;->setResourceURL(Ljava/lang/String;)V

    .line 363
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;->setResourceName(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;->setRegion(Ljava/lang/String;)V

    .line 369
    :cond_1
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 370
    if-eqz v0, :cond_2

    .line 371
    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 372
    const-string/jumbo v3, "avatar"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 373
    const-string/jumbo v4, "displayName"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;->setUserId(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;->setAvatarUrl(Ljava/lang/String;)V

    .line 376
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;->setDisplayName(Ljava/lang/String;)V

    .line 380
    :cond_2
    const-string/jumbo v0, "sender"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_3

    .line 382
    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->isSelf(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;->setSender(Z)V

    .line 387
    :cond_3
    const-string/jumbo v0, "recipient"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 388
    if-eqz v0, :cond_4

    .line 389
    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 390
    const-string/jumbo v3, "displayName"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 392
    const-string/jumbo v4, "role"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->getCollaborationTypeFromString(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    move-result-object v0

    .line 394
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->isSelf(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;->setRecipient(Z)V

    .line 395
    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;->setRecipientDisplayName(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;->setRecipientRole(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;)V

    .line 398
    :cond_4
    invoke-virtual {v1, p2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;->setNotificationSubType(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)V

    .line 399
    return-object v1
.end method

.method private getNotificationFromBundle(Landroid/os/Bundle;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 586
    const-string/jumbo v1, "subType"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->getValue(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    move-result-object v1

    .line 587
    const-string/jumbo v2, "type"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->getValue(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    move-result-object v6

    .line 591
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType:[I

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    .line 778
    :goto_0
    if-eqz v5, :cond_1

    .line 780
    invoke-virtual {v5, v6}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setNotificationType(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;)V

    .line 781
    const-string/jumbo v0, "region"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 782
    const-string/jumbo v0, "created-timestamp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 783
    const-wide/16 v0, 0x0

    .line 784
    if-eqz v7, :cond_0

    .line 785
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 786
    :cond_0
    const-string/jumbo v7, "notificationId"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 787
    const-string/jumbo v8, "user-Id"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 790
    invoke-virtual {v5, v6}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setRegion(Ljava/lang/String;)V

    .line 791
    invoke-static {v8}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->isSelf(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setIsUser(Z)V

    .line 792
    invoke-virtual {v5, v8}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setUserId(Ljava/lang/String;)V

    .line 793
    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setDisplayName(Ljava/lang/String;)V

    .line 794
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setIsNotificationRead(Z)V

    .line 795
    invoke-virtual {v5, v7}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setNotificationID(Ljava/lang/String;)V

    .line 796
    invoke-virtual {v5, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setTimestamp(J)V

    .line 797
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getCurrentTime()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->recalculateTimeStampMessage(J)V

    .line 798
    invoke-virtual {v5, v4}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setResourceURL(Ljava/lang/String;)V

    .line 799
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setResourceName(Ljava/lang/String;)V

    .line 802
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->ADOBE_PUSH_NOTIFICATION_STATE_NEW:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    invoke-virtual {v5, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setLocalState(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;)V

    .line 803
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->ADOBE_PUSH_NOTIFICATION_STATE_NEW:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    invoke-virtual {v5, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setServerState(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;)V

    .line 805
    :cond_1
    return-object v5

    .line 595
    :pswitch_0
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationAcceptPushNotification;

    invoke-direct {v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationAcceptPushNotification;-><init>()V

    .line 596
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_SELF:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-virtual {v3, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setNotificationSubType(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)V

    .line 597
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    if-ne v6, v1, :cond_2

    .line 598
    const-string/jumbo v0, "folderUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 599
    const-string/jumbo v0, "folderName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 605
    :goto_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    move-object v4, v1

    move-object v5, v3

    move-object v3, v2

    move-object v2, v0

    .line 607
    goto/16 :goto_0

    .line 601
    :cond_2
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    if-ne v6, v1, :cond_d

    .line 602
    const-string/jumbo v0, "libraryName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 603
    const-string/jumbo v1, "libraryUrl"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 611
    :pswitch_1
    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationAcceptPushNotification;

    invoke-direct {v4}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationAcceptPushNotification;-><init>()V

    .line 612
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-virtual {v4, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setNotificationSubType(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)V

    .line 613
    const-string/jumbo v1, "userName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 614
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    if-ne v6, v2, :cond_3

    .line 615
    const-string/jumbo v0, "folderName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 616
    const-string/jumbo v0, "folderUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    goto/16 :goto_0

    .line 618
    :cond_3
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    if-ne v6, v2, :cond_c

    .line 619
    const-string/jumbo v0, "libraryName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 620
    const-string/jumbo v0, "libraryUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    goto/16 :goto_0

    .line 630
    :pswitch_2
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCommentPushNotification;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCommentPushNotification;-><init>()V

    .line 631
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setNotificationSubType(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)V

    move-object v0, v1

    .line 632
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCommentPushNotification;

    const-string/jumbo v2, "comment"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCommentPushNotification;->setComment(Ljava/lang/String;)V

    .line 633
    const-string/jumbo v0, "assetUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 634
    const-string/jumbo v0, "senderName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 635
    const-string/jumbo v2, "assetName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v1

    move-object v3, v0

    .line 637
    goto/16 :goto_0

    .line 640
    :pswitch_3
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;-><init>()V

    .line 641
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATION_UPDATE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setNotificationSubType(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)V

    .line 643
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    if-ne v6, v2, :cond_4

    .line 644
    const-string/jumbo v0, "folderName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    const-string/jumbo v2, "folderUrl"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move-object v2, v0

    .line 652
    :goto_2
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setResourceName(Ljava/lang/String;)V

    .line 653
    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setResourceURL(Ljava/lang/String;)V

    .line 655
    const-string/jumbo v0, "firstName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 656
    const-string/jumbo v0, "lastName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v1

    .line 658
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;

    invoke-direct {p0, v4, v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->setSenderName(Ljava/lang/String;)V

    .line 659
    invoke-direct {p0, v4, v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v1

    .line 661
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;

    const-string/jumbo v5, "avatar"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->setAvatarUrl(Ljava/lang/String;)V

    move-object v0, v1

    .line 663
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;

    const-string/jumbo v5, "originalRole"

    .line 664
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->getCollaborationTypeFromString(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    move-result-object v5

    .line 663
    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->setPreviousRole(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;)V

    move-object v0, v1

    .line 666
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;

    const-string/jumbo v5, "updatedRole"

    .line 667
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->getCollaborationTypeFromString(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    move-result-object v5

    .line 666
    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->setUpdatedRole(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;)V

    move-object v5, v1

    move-object v9, v3

    move-object v3, v4

    move-object v4, v9

    .line 669
    goto/16 :goto_0

    .line 647
    :cond_4
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    if-ne v6, v2, :cond_b

    .line 648
    const-string/jumbo v0, "libraryName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 649
    const-string/jumbo v2, "libraryUrl"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move-object v2, v0

    goto :goto_2

    .line 672
    :pswitch_4
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;-><init>()V

    .line 673
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setNotificationSubType(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)V

    .line 675
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    if-ne v6, v2, :cond_5

    .line 676
    const-string/jumbo v0, "folderName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 677
    const-string/jumbo v2, "folderUrl"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move-object v2, v0

    .line 685
    :goto_3
    const-string/jumbo v0, "user-Id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 687
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setResourceName(Ljava/lang/String;)V

    move-object v0, v1

    .line 688
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;

    invoke-static {v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->isSelf(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->setRemover(Z)V

    .line 689
    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setResourceURL(Ljava/lang/String;)V

    .line 690
    const-string/jumbo v0, "userName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 694
    const-string/jumbo v0, "removedDisplayName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v1

    .line 695
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;

    invoke-static {v7}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->setRemovedDisplayName(Ljava/lang/String;)V

    .line 696
    const-string/jumbo v0, "removedUserId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 697
    invoke-static {v7}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->isSelf(Ljava/lang/String;)Z

    move-result v8

    move-object v0, v1

    .line 698
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;

    invoke-virtual {v0, v8}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->setRemoved(Z)V

    .line 699
    const-string/jumbo v0, "removedRole"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->getCollaborationTypeFromString(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    move-result-object v8

    move-object v0, v1

    .line 700
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;

    invoke-virtual {v0, v8}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->setRemovedRole(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;)V

    move-object v0, v1

    .line 701
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;

    invoke-direct {p0, v7, v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->checkIsLeaveEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->setALeaveEvent(Z)V

    .line 702
    const-string/jumbo v0, "avatarUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v1

    .line 703
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->setAvatarUrl(Ljava/lang/String;)V

    move-object v5, v1

    move-object v9, v3

    move-object v3, v4

    move-object v4, v9

    .line 705
    goto/16 :goto_0

    .line 679
    :cond_5
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    if-ne v6, v2, :cond_a

    .line 680
    const-string/jumbo v0, "libraryName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 681
    const-string/jumbo v2, "libraryUrl"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_3

    .line 707
    :pswitch_5
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;-><init>()V

    .line 708
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_DECLINE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setNotificationSubType(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)V

    .line 710
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    if-ne v6, v2, :cond_6

    .line 711
    const-string/jumbo v0, "folderName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 712
    const-string/jumbo v2, "folderUrl"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move-object v2, v0

    .line 719
    :goto_4
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setResourceName(Ljava/lang/String;)V

    .line 720
    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setResourceURL(Ljava/lang/String;)V

    .line 721
    const-string/jumbo v0, "userName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 724
    const-string/jumbo v0, "sender-Id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v1

    .line 725
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;

    invoke-static {v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->isSelf(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;->setSender(Z)V

    .line 727
    const-string/jumbo v0, "recipientUserId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v1

    .line 728
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;

    invoke-static {v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->isSelf(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;->setRecipient(Z)V

    .line 730
    const-string/jumbo v0, "recipientDisplayName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v1

    .line 731
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;

    invoke-static {v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;->setRecipientDisplayName(Ljava/lang/String;)V

    .line 733
    const-string/jumbo v0, "recipientRole"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 734
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->getCollaborationTypeFromString(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    move-result-object v5

    move-object v0, v1

    .line 735
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;->setRecipientRole(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;)V

    .line 737
    const-string/jumbo v0, "avatarUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v1

    .line 738
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;->setAvatarUrl(Ljava/lang/String;)V

    move-object v5, v1

    move-object v9, v3

    move-object v3, v4

    move-object v4, v9

    .line 739
    goto/16 :goto_0

    .line 714
    :cond_6
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    if-ne v6, v2, :cond_9

    .line 715
    const-string/jumbo v0, "libraryName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    const-string/jumbo v2, "libraryUrl"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move-object v2, v0

    goto :goto_4

    .line 741
    :pswitch_6
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;-><init>()V

    .line 742
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_REVOKE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setNotificationSubType(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)V

    .line 744
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    if-ne v6, v2, :cond_7

    .line 745
    const-string/jumbo v0, "folderName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 746
    const-string/jumbo v2, "folderUrl"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move-object v2, v0

    .line 753
    :goto_5
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setResourceName(Ljava/lang/String;)V

    .line 754
    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setResourceURL(Ljava/lang/String;)V

    .line 755
    const-string/jumbo v0, "userName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 758
    const-string/jumbo v0, "sender-Id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v1

    .line 759
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;

    invoke-static {v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->isSelf(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;->setSender(Z)V

    .line 761
    const-string/jumbo v0, "recipientUserId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v1

    .line 762
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;

    invoke-static {v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->isSelf(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;->setRecipient(Z)V

    .line 764
    const-string/jumbo v0, "recipientDisplayName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v1

    .line 765
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;

    invoke-static {v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;->setRecipientDisplayName(Ljava/lang/String;)V

    .line 767
    const-string/jumbo v0, "recipientRole"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 768
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->getCollaborationTypeFromString(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    move-result-object v5

    move-object v0, v1

    .line 769
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;->setRecipientRole(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;)V

    .line 771
    const-string/jumbo v0, "avatarUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v1

    .line 772
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;->setAvatarUrl(Ljava/lang/String;)V

    move-object v5, v1

    move-object v9, v3

    move-object v3, v4

    move-object v4, v9

    .line 773
    goto/16 :goto_0

    .line 748
    :cond_7
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    if-ne v6, v2, :cond_8

    .line 749
    const-string/jumbo v0, "libraryName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 750
    const-string/jumbo v2, "libraryUrl"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move-object v2, v0

    goto :goto_5

    :cond_8
    move-object v2, v0

    move-object v3, v0

    goto :goto_5

    :cond_9
    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_4

    :cond_a
    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_3

    :cond_b
    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_2

    :cond_c
    move-object v2, v0

    move-object v3, v1

    move-object v5, v4

    move-object v4, v0

    goto/16 :goto_0

    :cond_d
    move-object v1, v0

    goto/16 :goto_1

    .line 591
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getPayloadObjectForSharedPref(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1050
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1052
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType:[I

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getNotificationSubType()Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move-object v0, v1

    .line 1125
    :goto_0
    :pswitch_0
    return-object v0

    .line 1059
    :pswitch_1
    :try_start_0
    const-string/jumbo v2, "state"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getLocalState()Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1060
    const-string/jumbo v2, "region"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1061
    const-string/jumbo v2, "resourceUrl"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getResourceURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1062
    const-string/jumbo v2, "resourceName"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getResourceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1063
    const-string/jumbo v2, "senderName"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1064
    const-string/jumbo v2, "self"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->isUser()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1065
    const-string/jumbo v2, "timestamp"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1066
    const-string/jumbo v2, "comment"

    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCommentPushNotification;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCommentPushNotification;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1068
    :catch_0
    move-exception v0

    .line 1069
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    .line 1070
    goto :goto_0

    .line 1078
    :pswitch_2
    :try_start_1
    const-string/jumbo v2, "UserName"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1091
    :pswitch_3
    :try_start_2
    const-string/jumbo v2, "state"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getLocalState()Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1092
    const-string/jumbo v2, "region"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1093
    const-string/jumbo v2, "resourceUrl"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getResourceURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1094
    const-string/jumbo v2, "resourceUrl"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getResourceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1095
    const-string/jumbo v2, "self"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->isUser()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1096
    const-string/jumbo v2, "timestamp"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1100
    :catch_1
    move-exception v0

    .line 1101
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    .line 1102
    goto/16 :goto_0

    .line 1081
    :catch_2
    move-exception v0

    .line 1082
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    .line 1083
    goto/16 :goto_0

    .line 1108
    :pswitch_4
    :try_start_3
    const-string/jumbo v1, "state"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getLocalState()Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1109
    const-string/jumbo v1, "resourceName"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getResourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1110
    const-string/jumbo v1, "region"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1111
    const-string/jumbo v1, "resourceUrl"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getResourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1112
    const-string/jumbo v1, "senderName"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1113
    const-string/jumbo v1, "timestamp"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1114
    :catch_3
    move-exception v1

    .line 1115
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 1052
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private insertNewActivityIntoSharedPref(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;)V
    .locals 5

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getNotificationID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getNotificationSubType()Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->contains(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1037
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getPayloadObjectForSharedPref(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1038
    if-eqz v0, :cond_0

    .line 1039
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getNotificationID()Ljava/lang/String;

    move-result-object v2

    .line 1040
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getNotificationSubType()Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    move-result-object v3

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getNotificationType()Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    move-result-object v4

    .line 1039
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->insertActivity(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;)V

    .line 1046
    :cond_0
    return-void
.end method

.method private insertNewInviteIntoSharedPref(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;)V
    .locals 4

    .prologue
    .line 1011
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1012
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->getInviteID()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_RECIEVED:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->contains(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1016
    :try_start_0
    const-string/jumbo v0, "state"

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->ADOBE_PUSH_NOTIFICATION_STATE_NEW:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1017
    const-string/jumbo v0, "senderName"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->getSenderUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1018
    const-string/jumbo v0, "resourceName"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->getResourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1019
    const-string/jumbo v0, "acceptRequest"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->getInviteID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->getInviteID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->insertInvite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1027
    :cond_0
    return-void

    .line 1022
    :catch_0
    move-exception v0

    .line 1023
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private isOtherRemoval(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 996
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getNotificationSubType()Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    if-ne v1, v2, :cond_0

    .line 997
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 999
    :cond_0
    return v0
.end method

.method private static isSelf(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 815
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->currentUserID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 816
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v0

    .line 817
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->currentUserID:Ljava/lang/String;

    .line 820
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->currentUserID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSelfComment(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;)Z
    .locals 2

    .prologue
    .line 1004
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getNotificationSubType()Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    if-ne v0, v1, :cond_0

    .line 1005
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->isUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1004
    :goto_0
    return v0

    .line 1005
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeActivityFromSharedPref(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)V
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->deleteActivities(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)Z

    .line 1130
    return-void
.end method

.method private removeInvitationFromSharedPref(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->deleteInvite(Ljava/lang/String;)Z

    .line 1031
    return-void
.end method


# virtual methods
.method public clearActivitiesList()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->activitiesList:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->activitiesList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 89
    :cond_0
    return-void
.end method

.method public clearInvitationList()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->invitationList:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->invitationList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 80
    :cond_0
    return-void
.end method

.method public declared-synchronized getActivitiesList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 573
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->activitiesList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;

    .line 574
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getCurrentTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->recalculateTimeStampMessage(J)V

    .line 575
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 572
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 577
    :cond_0
    :try_start_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel$NotificationComparator;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel$NotificationComparator;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    monitor-exit p0

    return-object v1
.end method

.method public getActivitiesSize()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->activitiesList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getAssetCommentCount(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 63
    if-nez p1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->assetCommentsCount:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->assetCommentsCount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized getInvitationList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 564
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 565
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->invitationList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;

    .line 566
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 568
    :cond_0
    monitor-exit p0

    return-object v1
.end method

.method public getInvitationListSize()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->invitationList:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->invitationList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertNewActivity(Landroid/os/Bundle;Z)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 182
    const-string/jumbo v0, "notificationId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->activitiesList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 187
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getNotificationFromBundle(Landroid/os/Bundle;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getNotificationSubType()Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    move-result-object v0

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    if-ne v0, v3, :cond_4

    .line 191
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getResourceURL()Ljava/lang/String;

    move-result-object v3

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 194
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->assetCommentsCount:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 196
    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    :cond_0
    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->isSelfComment(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;)Z

    move-result v4

    if-eqz v4, :cond_1

    move p2, v2

    .line 202
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->assetCommentsCount:Ljava/util/Map;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->activitiesList:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getNotificationID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    if-eqz p2, :cond_3

    .line 214
    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->insertNewActivityIntoSharedPref(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;)V

    .line 217
    :cond_3
    return-void

    .line 206
    :cond_4
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getNotificationSubType()Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    move-result-object v0

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    if-ne v0, v3, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;

    .line 207
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->isRemover()Z

    move-result v0

    if-eqz v0, :cond_2

    move p2, v2

    .line 210
    goto :goto_0
.end method

.method public insertNewInvitation(Landroid/os/Bundle;Z)V
    .locals 3

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getInviteFromBundle(Landroid/os/Bundle;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->invitationList:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->getInviteID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_0
    if-eqz p2, :cond_1

    .line 174
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->insertNewInviteIntoSharedPref(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;)V

    .line 176
    :cond_1
    return-void
.end method

.method public markActivityAsRead(Landroid/os/Bundle;Z)V
    .locals 5

    .prologue
    .line 111
    const-string/jumbo v0, "notificationId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->activitiesList:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->activitiesList:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;

    .line 117
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->ADOBE_PUSH_NOTIFICATION_STATE_EXPIRED:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setServerState(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;)V

    .line 119
    instance-of v1, v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCommentPushNotification;

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getRegion()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getResourceURL()Ljava/lang/String;

    move-result-object v3

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->assetCommentsCount:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 126
    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    if-eqz p2, :cond_1

    .line 130
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getNotificationSubType()Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->removeActivityFromSharedPref(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)V

    .line 135
    :cond_1
    return-void
.end method

.method public markActivityAsReadInSharedPref(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->activitiesList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->activitiesList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;

    .line 144
    instance-of v1, v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCommentPushNotification;

    if-eqz v1, :cond_2

    .line 147
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getRegion()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getResourceURL()Ljava/lang/String;

    move-result-object v2

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->assetCommentsCount:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 152
    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 155
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-direct {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->removeActivityFromSharedPref(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)V

    .line 162
    :cond_1
    :goto_0
    return-void

    .line 159
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-direct {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->removeActivityFromSharedPref(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)V

    goto :goto_0
.end method

.method public markNotificationsForAssetsAsRead(Ljava/lang/String;Z)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 241
    .line 242
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->assetCommentsCount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->assetCommentsCount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 246
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 248
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/utils/AdobePushNotificationQueue;->getPushNotificationQueue()Lcom/adobe/creativesdk/foundation/internal/pushnotification/utils/AdobePushNotificationQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/utils/AdobePushNotificationQueue;->putNotificationInQueue(Ljava/util/List;)V

    .line 250
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->assetCommentsCount:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    if-eqz p2, :cond_0

    move v2, v1

    .line 252
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 253
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getNotificationID()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-direct {p0, v1, v4}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->removeActivityFromSharedPref(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)V

    .line 252
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 257
    :cond_1
    return v1
.end method

.method public populateActivitiesList(Lorg/json/JSONArray;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 269
    const-wide/16 v2, 0x0

    move v1, v0

    .line 274
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 277
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 279
    const-string/jumbo v4, "type"

    .line 280
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 279
    invoke-static {v4}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->getValue(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    move-result-object v6

    .line 282
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    if-eq v6, v4, :cond_0

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    if-ne v6, v4, :cond_1

    .line 286
    :cond_0
    const/4 v4, 0x0

    .line 289
    const-string/jumbo v7, "sub-type"

    .line 290
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 289
    invoke-static {v7}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->getValue(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    move-result-object v7

    .line 291
    const-string/jumbo v8, "payload"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 292
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 293
    sget-object v8, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType:[I

    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ordinal()I

    move-result v10

    aget v8, v8, v10

    packed-switch v8, :pswitch_data_0

    .line 331
    :goto_1
    const-string/jumbo v7, "created-timestamp"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 332
    const-string/jumbo v7, "notification-id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 333
    if-eqz v4, :cond_1

    .line 334
    invoke-virtual {v4, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setTimestamp(J)V

    .line 335
    invoke-virtual {v4, v7}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setNotificationID(Ljava/lang/String;)V

    .line 336
    const-string/jumbo v8, "state"

    .line 337
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 336
    invoke-static {v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->getValue(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    move-result-object v5

    .line 338
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getCurrentTime()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->recalculateTimeStampMessage(J)V

    .line 339
    invoke-virtual {v4, v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setLocalState(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;)V

    .line 340
    invoke-virtual {v4, v5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setServerState(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;)V

    .line 341
    invoke-virtual {v4, v6}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setNotificationType(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;)V

    .line 342
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->activitiesList:Ljava/util/Map;

    invoke-interface {v5, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :pswitch_0
    add-int/lit8 v4, v1, 0x1

    .line 296
    :try_start_1
    invoke-static {v9, v6, v7}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getInvitationAcceptNotification(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationAcceptPushNotification;

    move-result-object v1

    move-object v11, v1

    move v1, v4

    move-object v4, v11

    .line 297
    goto :goto_1

    .line 299
    :pswitch_1
    add-int/lit8 v4, v1, 0x1

    .line 300
    invoke-static {v9, v7}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getCommentNotification(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCommentPushNotification;

    move-result-object v1

    .line 302
    const-string/jumbo v7, "state"

    .line 303
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 302
    invoke-static {v7}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->getValue(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    move-result-object v7

    .line 305
    invoke-direct {p0, v7, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->addToCommentMap(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;)V

    move-object v11, v1

    move v1, v4

    move-object v4, v11

    .line 306
    goto :goto_1

    .line 308
    :pswitch_2
    add-int/lit8 v4, v1, 0x1

    .line 309
    invoke-static {v9, v6, v7}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getInvitationAcceptNotification(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationAcceptPushNotification;

    move-result-object v1

    move-object v11, v1

    move v1, v4

    move-object v4, v11

    .line 310
    goto :goto_1

    .line 312
    :pswitch_3
    add-int/lit8 v4, v1, 0x1

    .line 313
    invoke-direct {p0, v9, v7}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getCollaboratorRoleUpdateNotification(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;

    move-result-object v1

    move-object v11, v1

    move v1, v4

    move-object v4, v11

    .line 314
    goto :goto_1

    .line 316
    :pswitch_4
    add-int/lit8 v4, v1, 0x1

    .line 317
    invoke-direct {p0, v9, v7}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getCollaboratorRemoveNotification(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;

    move-result-object v1

    move-object v11, v1

    move v1, v4

    move-object v4, v11

    .line 318
    goto :goto_1

    .line 320
    :pswitch_5
    add-int/lit8 v4, v1, 0x1

    .line 321
    invoke-direct {p0, v9, v7}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getInviteDeclineNotification(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;

    move-result-object v1

    move-object v11, v1

    move v1, v4

    move-object v4, v11

    .line 322
    goto/16 :goto_1

    .line 324
    :pswitch_6
    add-int/lit8 v4, v1, 0x1

    .line 325
    invoke-direct {p0, v9, v7}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getInviteRevokeNotification(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    move-object v11, v1

    move v1, v4

    move-object v4, v11

    .line 326
    goto/16 :goto_1

    .line 345
    :catch_0
    move-exception v4

    .line 346
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 349
    :cond_2
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 350
    return-object v0

    .line 345
    :catch_1
    move-exception v1

    move-object v11, v1

    move v1, v4

    move-object v4, v11

    goto :goto_3

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public populateSharedPref(I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 970
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->populateSharedPreferences:Z

    if-eqz v0, :cond_4

    .line 972
    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->populateSharedPreferences:Z

    .line 973
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationDataModel;->clearSharedPreferences()V

    .line 975
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getInvitationList()Ljava/util/ArrayList;

    move-result-object v3

    move v1, v2

    .line 976
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 977
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->insertNewInviteIntoSharedPref(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;)V

    .line 976
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 980
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v0, p1, v0

    .line 981
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getActivitiesList()Ljava/util/ArrayList;

    move-result-object v3

    .line 983
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    .line 984
    :goto_1
    if-ge v2, v1, :cond_4

    .line 985
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getLocalState()Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    move-result-object v0

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->ADOBE_PUSH_NOTIFICATION_STATE_NEW:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    if-ne v0, v4, :cond_2

    .line 986
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->isSelfComment(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->isOtherRemoval(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 987
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->insertNewActivityIntoSharedPref(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;)V

    .line 984
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v1, v0

    .line 983
    goto :goto_1

    .line 992
    :cond_4
    return-void
.end method

.method public removeInvitation(Landroid/os/Bundle;Z)V
    .locals 2

    .prologue
    .line 93
    const-string/jumbo v0, "acceptRequest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_1

    .line 97
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->invitationList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->invitationList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_0
    if-eqz p2, :cond_1

    .line 102
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->removeInvitationFromSharedPref(Ljava/lang/String;)V

    .line 106
    :cond_1
    return-void
.end method

.method public removeInvitations(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 228
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 229
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->invitationList:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 231
    :cond_0
    return-void
.end method

.method public setInvitations(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 263
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->invitationList:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;->getInviteID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 265
    :cond_0
    return-void
.end method
