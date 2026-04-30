.class public final enum Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;
.super Ljava/lang/Enum;
.source "AdobePhotoSession.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

.field public static final enum ADOBE_PHOTO_ACCOUNT_STATUS_CREATED:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

.field public static final enum ADOBE_PHOTO_ACCOUNT_STATUS_SUBSCRIBER:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

.field public static final enum ADOBE_PHOTO_ACCOUNT_STATUS_SUBSCRIBER_EXPIRED:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

.field public static final enum ADOBE_PHOTO_ACCOUNT_STATUS_SUBSCRIBER_GRACE_PERIOD:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

.field public static final enum ADOBE_PHOTO_ACCOUNT_STATUS_TRIAL:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

.field public static final enum ADOBE_PHOTO_ACCOUNT_STATUS_TRIAL_EXPIRED:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

.field public static final enum ADOBE_PHOTO_ACCOUNT_STATUS_TRIAL_GRACE_PERIOD:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    const-string/jumbo v1, "ADOBE_PHOTO_ACCOUNT_STATUS_CREATED"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;->ADOBE_PHOTO_ACCOUNT_STATUS_CREATED:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    .line 122
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    const-string/jumbo v1, "ADOBE_PHOTO_ACCOUNT_STATUS_TRIAL"

    invoke-direct {v0, v1, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;->ADOBE_PHOTO_ACCOUNT_STATUS_TRIAL:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    .line 123
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    const-string/jumbo v1, "ADOBE_PHOTO_ACCOUNT_STATUS_TRIAL_GRACE_PERIOD"

    invoke-direct {v0, v1, v5}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;->ADOBE_PHOTO_ACCOUNT_STATUS_TRIAL_GRACE_PERIOD:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    .line 124
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    const-string/jumbo v1, "ADOBE_PHOTO_ACCOUNT_STATUS_TRIAL_EXPIRED"

    invoke-direct {v0, v1, v6}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;->ADOBE_PHOTO_ACCOUNT_STATUS_TRIAL_EXPIRED:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    .line 125
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    const-string/jumbo v1, "ADOBE_PHOTO_ACCOUNT_STATUS_SUBSCRIBER"

    invoke-direct {v0, v1, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;->ADOBE_PHOTO_ACCOUNT_STATUS_SUBSCRIBER:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    .line 126
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    const-string/jumbo v1, "ADOBE_PHOTO_ACCOUNT_STATUS_SUBSCRIBER_GRACE_PERIOD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;->ADOBE_PHOTO_ACCOUNT_STATUS_SUBSCRIBER_GRACE_PERIOD:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    .line 127
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    const-string/jumbo v1, "ADOBE_PHOTO_ACCOUNT_STATUS_SUBSCRIBER_EXPIRED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;->ADOBE_PHOTO_ACCOUNT_STATUS_SUBSCRIBER_EXPIRED:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    .line 120
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;->ADOBE_PHOTO_ACCOUNT_STATUS_CREATED:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;->ADOBE_PHOTO_ACCOUNT_STATUS_TRIAL:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;->ADOBE_PHOTO_ACCOUNT_STATUS_TRIAL_GRACE_PERIOD:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;->ADOBE_PHOTO_ACCOUNT_STATUS_TRIAL_EXPIRED:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;->ADOBE_PHOTO_ACCOUNT_STATUS_SUBSCRIBER:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;->ADOBE_PHOTO_ACCOUNT_STATUS_SUBSCRIBER_GRACE_PERIOD:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;->ADOBE_PHOTO_ACCOUNT_STATUS_SUBSCRIBER_EXPIRED:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

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
    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;
    .locals 1

    .prologue
    .line 120
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    return-object v0
.end method
