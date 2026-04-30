.class public final enum Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;
.super Ljava/lang/Enum;
.source "AdobeAuthErrorCode.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field public static final enum ADOBE_AUTH_ERROR_AUTH_MODULE_NOT_INITIALIZED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field public static final enum ADOBE_AUTH_ERROR_CODE_ACCOUNT_SIGNATURE_MISMATCH:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field public static final enum ADOBE_AUTH_ERROR_CODE_ADD_ACCOUNT_TO_ACCOUNT_MANAGER:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field public static final enum ADOBE_AUTH_ERROR_CODE_AGE_VERIFICATION:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field public static final enum ADOBE_AUTH_ERROR_CODE_CLIENT_ID_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field public static final enum ADOBE_AUTH_ERROR_CODE_CLIENT_SECRET_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field public static final enum ADOBE_AUTH_ERROR_CODE_DEVICE_ID_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field public static final enum ADOBE_AUTH_ERROR_CODE_EMAIL_VERIFICATION:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field public static final enum ADOBE_AUTH_ERROR_CODE_FROM_ACCOUNT_MANAGER:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field public static final enum ADOBE_AUTH_ERROR_CODE_INCORRECT_REDIRECT_URL:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field public static final enum ADOBE_AUTH_ERROR_CODE_INVALID_ARGUMENT:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field public static final enum ADOBE_AUTH_ERROR_CODE_NETWORK_ERROR:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field public static final enum ADOBE_AUTH_ERROR_CODE_NO_ERROR:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field public static final enum ADOBE_AUTH_ERROR_CODE_OFFLINE:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field public static final enum ADOBE_AUTH_ERROR_CODE_SOCIAL_LOGIN_RECOVERABLE_SDK:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field public static final enum ADOBE_AUTH_ERROR_CODE_SOCIAL_LOGIN_RECOVERABLE_USER:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field public static final enum ADOBE_AUTH_ERROR_CODE_UNKNOWN_ERROR:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field public static final enum ADOBE_AUTH_ERROR_CODE_UPDATED_TOU:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field public static final enum ADOBE_AUTH_ERROR_CODE_USERNAME_AND_PASSWORD_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field public static final enum ADOBE_AUTH_ERROR_CODE_USER_CANCELLED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field public static final enum ADOBE_AUTH_ERROR_CODE_USER_CREDENTIALS_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field public static final enum ADOBE_AUTH_ERROR_CODE_USER_ID_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field public static final enum ADOBE_AUTH_ERROR_CODE_USER_INTERACTION_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field public static final enum ADOBE_AUTH_ERROR_CODE_USER_NOT_ENTITLED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field public static final enum ADOBE_AUTH_ERROR_CODE_WEB_VIEW:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;",
            ">;"
        }
    .end annotation
.end field

.field private static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 35
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "ADOBE_AUTH_ERROR_AUTH_MODULE_NOT_INITIALIZED"

    invoke-direct {v1, v2, v0, v5}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_AUTH_MODULE_NOT_INITIALIZED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 39
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "ADOBE_AUTH_ERROR_CODE_OFFLINE"

    invoke-direct {v1, v2, v5, v6}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_OFFLINE:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 43
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "ADOBE_AUTH_ERROR_CODE_NO_ERROR"

    invoke-direct {v1, v2, v6, v7}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_NO_ERROR:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 47
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "ADOBE_AUTH_ERROR_CODE_USER_CANCELLED"

    invoke-direct {v1, v2, v7, v8}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_CANCELLED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 51
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "ADOBE_AUTH_ERROR_CODE_USER_INTERACTION_REQUIRED"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v8, v3}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_INTERACTION_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 55
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "ADOBE_AUTH_ERROR_CODE_USERNAME_AND_PASSWORD_REQUIRED"

    const/4 v3, 0x5

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USERNAME_AND_PASSWORD_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 59
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "ADOBE_AUTH_ERROR_CODE_DEVICE_ID_REQUIRED"

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_DEVICE_ID_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 63
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "ADOBE_AUTH_ERROR_CODE_CLIENT_ID_REQUIRED"

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_CLIENT_ID_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 67
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "ADOBE_AUTH_ERROR_CODE_CLIENT_SECRET_REQUIRED"

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_CLIENT_SECRET_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 71
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "ADOBE_AUTH_ERROR_CODE_INVALID_ARGUMENT"

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_INVALID_ARGUMENT:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 75
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "ADOBE_AUTH_ERROR_CODE_UNKNOWN_ERROR"

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_UNKNOWN_ERROR:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 79
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "ADOBE_AUTH_ERROR_CODE_NETWORK_ERROR"

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_NETWORK_ERROR:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 83
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "ADOBE_AUTH_ERROR_CODE_USER_NOT_ENTITLED"

    const/16 v3, 0xc

    const/16 v4, 0xd

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_NOT_ENTITLED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 87
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "ADOBE_AUTH_ERROR_CODE_USER_CREDENTIALS_REQUIRED"

    const/16 v3, 0xd

    const/16 v4, 0xe

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_CREDENTIALS_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 91
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "ADOBE_AUTH_ERROR_CODE_UPDATED_TOU"

    const/16 v3, 0xe

    const/16 v4, 0xf

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_UPDATED_TOU:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 95
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "ADOBE_AUTH_ERROR_CODE_EMAIL_VERIFICATION"

    const/16 v3, 0xf

    const/16 v4, 0x10

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_EMAIL_VERIFICATION:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 99
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "ADOBE_AUTH_ERROR_CODE_AGE_VERIFICATION"

    const/16 v3, 0x10

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_AGE_VERIFICATION:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 103
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "ADOBE_AUTH_ERROR_CODE_SOCIAL_LOGIN_RECOVERABLE_USER"

    const/16 v3, 0x11

    const/16 v4, 0x12

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_SOCIAL_LOGIN_RECOVERABLE_USER:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 107
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "ADOBE_AUTH_ERROR_CODE_SOCIAL_LOGIN_RECOVERABLE_SDK"

    const/16 v3, 0x12

    const/16 v4, 0x13

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_SOCIAL_LOGIN_RECOVERABLE_SDK:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 111
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "ADOBE_AUTH_ERROR_CODE_INCORRECT_REDIRECT_URL"

    const/16 v3, 0x13

    const/16 v4, 0x14

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_INCORRECT_REDIRECT_URL:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 115
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "ADOBE_AUTH_ERROR_CODE_FROM_ACCOUNT_MANAGER"

    const/16 v3, 0x14

    const/16 v4, 0x15

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_FROM_ACCOUNT_MANAGER:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 119
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "ADOBE_AUTH_ERROR_CODE_ADD_ACCOUNT_TO_ACCOUNT_MANAGER"

    const/16 v3, 0x15

    const/16 v4, 0x16

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_ADD_ACCOUNT_TO_ACCOUNT_MANAGER:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 123
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "ADOBE_AUTH_ERROR_CODE_ACCOUNT_SIGNATURE_MISMATCH"

    const/16 v3, 0x16

    const/16 v4, 0x17

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_ACCOUNT_SIGNATURE_MISMATCH:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 127
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "ADOBE_AUTH_ERROR_CODE_USER_ID_REQUIRED"

    const/16 v3, 0x17

    const/16 v4, 0x18

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_ID_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 131
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "ADOBE_AUTH_ERROR_CODE_WEB_VIEW"

    const/16 v3, 0x18

    const/16 v4, 0x19

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_WEB_VIEW:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 30
    const/16 v1, 0x19

    new-array v1, v1, [Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    sget-object v2, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_AUTH_MODULE_NOT_INITIALIZED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    aput-object v2, v1, v0

    sget-object v2, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_OFFLINE:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    aput-object v2, v1, v5

    sget-object v2, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_NO_ERROR:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    aput-object v2, v1, v6

    sget-object v2, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_CANCELLED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    aput-object v2, v1, v7

    sget-object v2, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_INTERACTION_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USERNAME_AND_PASSWORD_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_DEVICE_ID_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_CLIENT_ID_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_CLIENT_SECRET_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_INVALID_ARGUMENT:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_UNKNOWN_ERROR:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_NETWORK_ERROR:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_NOT_ENTITLED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_CREDENTIALS_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_UPDATED_TOU:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_EMAIL_VERIFICATION:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_AGE_VERIFICATION:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_SOCIAL_LOGIN_RECOVERABLE_USER:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_SOCIAL_LOGIN_RECOVERABLE_SDK:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_INCORRECT_REDIRECT_URL:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_FROM_ACCOUNT_MANAGER:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_ADD_ACCOUNT_TO_ACCOUNT_MANAGER:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_ACCOUNT_SIGNATURE_MISMATCH:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_ID_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_WEB_VIEW:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    aput-object v3, v1, v2

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->$VALUES:[Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 134
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->map:Ljava/util/Map;

    .line 136
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode$1;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode$1;-><init>()V

    sput-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 161
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->values()[Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 162
    sget-object v4, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->map:Ljava/util/Map;

    iget v5, v3, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->value:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 152
    iput p3, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->value:I

    .line 153
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->value:I

    .line 157
    return-void
.end method

.method static fromInt(I)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;
    .locals 2

    .prologue
    .line 189
    sget-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->map:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->$VALUES:[Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->value:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    return-void
.end method
