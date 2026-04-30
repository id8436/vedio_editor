.class public final enum Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;
.super Ljava/lang/Enum;
.source "AdobeSendToDesktopErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

.field public static final enum ADOBE_SEND_TO_DESKTOP_ERROR_CODE_EMPTY_FILE_NAME:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

.field public static final enum ADOBE_SEND_TO_DESKTOP_ERROR_CODE_FILE_READ_FAILURE:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

.field public static final enum ADOBE_SEND_TO_DESKTOP_ERROR_CODE_FILE_SCHEMA_NOT_SUPPORTED:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

.field public static final enum ADOBE_SEND_TO_DESKTOP_ERROR_CODE_ILLEGAL_ARGUMENT:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

.field public static final enum ADOBE_SEND_TO_DESKTOP_ERROR_CODE_INVALID_FILENAME:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

.field public static final enum ADOBE_SEND_TO_DESKTOP_ERROR_CODE_PUSH_NOTIFICATION_ERROR:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

.field public static final enum ADOBE_SEND_TO_DESKTOP_ERROR_CODE_RESPONSE_TIME_OUT:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

.field public static final enum ADOBE_SEND_TO_DESKTOP_ERROR_CODE_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

.field public static final enum ADOBE_SEND_TO_DESKTOP_ERROR_CODE_USER_NOT_ENTITLED:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    const-string/jumbo v1, "ADOBE_SEND_TO_DESKTOP_ERROR_CODE_USER_NOT_ENTITLED"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_USER_NOT_ENTITLED:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    .line 38
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    const-string/jumbo v1, "ADOBE_SEND_TO_DESKTOP_ERROR_CODE_FILE_READ_FAILURE"

    invoke-direct {v0, v1, v4}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_FILE_READ_FAILURE:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    .line 48
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    const-string/jumbo v1, "ADOBE_SEND_TO_DESKTOP_ERROR_CODE_PUSH_NOTIFICATION_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_PUSH_NOTIFICATION_ERROR:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    .line 60
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    const-string/jumbo v1, "ADOBE_SEND_TO_DESKTOP_ERROR_CODE_RESPONSE_TIME_OUT"

    invoke-direct {v0, v1, v6}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_RESPONSE_TIME_OUT:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    .line 66
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    const-string/jumbo v1, "ADOBE_SEND_TO_DESKTOP_ERROR_CODE_EMPTY_FILE_NAME"

    invoke-direct {v0, v1, v7}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_EMPTY_FILE_NAME:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    .line 71
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    const-string/jumbo v1, "ADOBE_SEND_TO_DESKTOP_ERROR_CODE_INVALID_FILENAME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_INVALID_FILENAME:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    .line 76
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    const-string/jumbo v1, "ADOBE_SEND_TO_DESKTOP_ERROR_CODE_UNEXPECTED_RESPONSE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    .line 81
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    const-string/jumbo v1, "ADOBE_SEND_TO_DESKTOP_ERROR_CODE_ILLEGAL_ARGUMENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_ILLEGAL_ARGUMENT:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    .line 86
    new-instance v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    const-string/jumbo v1, "ADOBE_SEND_TO_DESKTOP_ERROR_CODE_FILE_SCHEMA_NOT_SUPPORTED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_FILE_SCHEMA_NOT_SUPPORTED:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    .line 25
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    sget-object v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_USER_NOT_ENTITLED:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_FILE_READ_FAILURE:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_PUSH_NOTIFICATION_ERROR:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_RESPONSE_TIME_OUT:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_EMPTY_FILE_NAME:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_INVALID_FILENAME:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_ILLEGAL_ARGUMENT:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_FILE_SCHEMA_NOT_SUPPORTED:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->$VALUES:[Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->$VALUES:[Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    return-object v0
.end method
