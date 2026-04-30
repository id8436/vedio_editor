.class synthetic Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState$1;
.super Ljava/lang/Object;
.source "AdobePushNotificationState.java"


# static fields
.field static final synthetic $SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->values()[Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationState:[I

    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationState:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->ADOBE_PUSH_NOTIFICATION_STATE_NEW:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationState:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->ADOBE_PUSH_NOTIFICATION_STATE_EXPIRED:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
