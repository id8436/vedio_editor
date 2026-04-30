.class synthetic Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$18;
.super Ljava/lang/Object;
.source "AdobeNotificationManager.java"


# static fields
.field static final synthetic $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$net$AdobeNetworkReachability$AdobeNetworkStatusCode:[I

.field static final synthetic $SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

.field static final synthetic $SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType:[I

.field static final synthetic $SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetFileRenditionType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1314
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;->values()[Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$18;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$net$AdobeNetworkReachability$AdobeNetworkStatusCode:[I

    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$18;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$net$AdobeNetworkReachability$AdobeNetworkStatusCode:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;->AdobeNetworkReachableNonMetered:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_e

    :goto_0
    :try_start_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$18;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$net$AdobeNetworkReachability$AdobeNetworkStatusCode:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;->AdobeNetworkReachableMetered:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_d

    .line 633
    :goto_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->values()[Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$18;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    :try_start_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$18;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIMSEnvironmentStageUS:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_c

    :goto_2
    :try_start_3
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$18;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIMSEnvironmentProductionUS:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_b

    .line 582
    :goto_3
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->values()[Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$18;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetFileRenditionType:[I

    :try_start_4
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$18;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetFileRenditionType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ADOBE_ASSET_FILE_RENDITION_TYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_a

    :goto_4
    :try_start_5
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$18;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetFileRenditionType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ADOBE_ASSET_FILE_RENDITION_TYPE_PDF:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_9

    :goto_5
    :try_start_6
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$18;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetFileRenditionType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ADOBE_ASSET_FILE_RENDITION_TYPE_JPEG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_8

    .line 300
    :goto_6
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->values()[Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$18;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType:[I

    :try_start_7
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$18;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_7
    :try_start_8
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$18;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_RECIEVED:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_6

    :goto_8
    :try_start_9
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$18;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_OTHER:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_5

    :goto_9
    :try_start_a
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$18;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITATION_ACCEPTED_SELF:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_4

    :goto_a
    :try_start_b
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$18;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATION_UPDATE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_3

    :goto_b
    :try_start_c
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$18;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COLLABORATOR_REMOVE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2

    :goto_c
    :try_start_d
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$18;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_DECLINE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1

    :goto_d
    :try_start_e
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$18;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_INVITE_REVOKE:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_0

    :goto_e
    return-void

    :catch_0
    move-exception v0

    goto :goto_e

    :catch_1
    move-exception v0

    goto :goto_d

    :catch_2
    move-exception v0

    goto :goto_c

    :catch_3
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_9

    :catch_6
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    goto :goto_7

    .line 582
    :catch_8
    move-exception v0

    goto :goto_6

    :catch_9
    move-exception v0

    goto/16 :goto_5

    :catch_a
    move-exception v0

    goto/16 :goto_4

    .line 633
    :catch_b
    move-exception v0

    goto/16 :goto_3

    :catch_c
    move-exception v0

    goto/16 :goto_2

    .line 1314
    :catch_d
    move-exception v0

    goto/16 :goto_1

    :catch_e
    move-exception v0

    goto/16 :goto_0
.end method
