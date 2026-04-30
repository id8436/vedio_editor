.class public Lcom/adobe/creativesdk/foundation/internal/utils/AdobeNotificationIDManager;
.super Ljava/lang/Object;
.source "AdobeNotificationIDManager.java"


# static fields
.field private static NOTIFICATION_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0xa

    sput v0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeNotificationIDManager;->NOTIFICATION_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getNotificationId()I
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeNotificationIDManager;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeNotificationIDManager;->NOTIFICATION_ID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeNotificationIDManager;->NOTIFICATION_ID:I

    .line 26
    sget v0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeNotificationIDManager;->NOTIFICATION_ID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
