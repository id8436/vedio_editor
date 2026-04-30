.class public final enum Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;
.super Ljava/lang/Enum;
.source "AdobePushNotificationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

.field public static final enum ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

.field public static final enum ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    const-string/jumbo v1, "ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    .line 9
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    const-string/jumbo v1, "ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getValue(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 22
    if-nez p0, :cond_1

    .line 28
    :cond_0
    :goto_0
    return-object v0

    .line 24
    :cond_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 25
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    goto :goto_0

    .line 26
    :cond_2
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationType:[I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 18
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    .line 14
    :pswitch_0
    const-string/jumbo v0, "com.adobe.stormcloud.v1"

    goto :goto_0

    .line 16
    :pswitch_1
    const-string/jumbo v0, "com.adobe.designlibrary.v1"

    goto :goto_0

    .line 12
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
