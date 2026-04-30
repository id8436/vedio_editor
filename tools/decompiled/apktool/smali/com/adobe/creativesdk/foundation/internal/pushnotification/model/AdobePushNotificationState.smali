.class public final enum Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;
.super Ljava/lang/Enum;
.source "AdobePushNotificationState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

.field public static final enum ADOBE_PUSH_NOTIFICATION_STATE_EXPIRED:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

.field public static final enum ADOBE_PUSH_NOTIFICATION_STATE_NEW:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    const-string/jumbo v1, "ADOBE_PUSH_NOTIFICATION_STATE_NEW"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->ADOBE_PUSH_NOTIFICATION_STATE_NEW:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    .line 6
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    const-string/jumbo v1, "ADOBE_PUSH_NOTIFICATION_STATE_EXPIRED"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->ADOBE_PUSH_NOTIFICATION_STATE_EXPIRED:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    .line 4
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->ADOBE_PUSH_NOTIFICATION_STATE_NEW:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->ADOBE_PUSH_NOTIFICATION_STATE_EXPIRED:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getValue(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 19
    if-nez p0, :cond_1

    .line 25
    :cond_0
    :goto_0
    return-object v0

    .line 21
    :cond_1
    const-string/jumbo v1, "NEW"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 22
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->ADOBE_PUSH_NOTIFICATION_STATE_NEW:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    goto :goto_0

    .line 23
    :cond_2
    const-string/jumbo v1, "EXPIRED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->ADOBE_PUSH_NOTIFICATION_STATE_EXPIRED:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationState:[I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 15
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    .line 11
    :pswitch_0
    const-string/jumbo v0, "NEW"

    goto :goto_0

    .line 13
    :pswitch_1
    const-string/jumbo v0, "EXPIRED"

    goto :goto_0

    .line 9
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
