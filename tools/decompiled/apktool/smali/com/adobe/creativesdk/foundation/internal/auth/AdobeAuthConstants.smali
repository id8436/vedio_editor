.class public Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthConstants;
.super Ljava/lang/Object;
.source "AdobeAuthConstants.java"


# static fields
.field public static final AUTH_ERROR_CODE:Ljava/lang/String; = "AdobeAuthErrorCode"

.field static AUTH_SESSION_SOCIAL_TYPE_SIGN_IN:I = 0x0

.field static AUTH_SESSION_TYPE_SIGN_IN:I = 0x0

.field static AUTH_SESSION_TYPE_SIGN_UP:I = 0x0

.field public static final DEFAULT_SIGN_IN_REQUEST_CODE:I = 0x7d2

.field public static JUMP_URL:Ljava/lang/String; = null

.field public static final POST_LOGIN_WORK_CALLBACK:Ljava/lang/String; = "POST_LOGIN_WORK_CALLBACK"

.field static SIGN_IN_UI_TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    sput v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthConstants;->AUTH_SESSION_TYPE_SIGN_IN:I

    .line 29
    const/4 v0, 0x2

    sput v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthConstants;->AUTH_SESSION_TYPE_SIGN_UP:I

    .line 30
    const/4 v0, 0x3

    sput v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthConstants;->AUTH_SESSION_SOCIAL_TYPE_SIGN_IN:I

    .line 32
    const-string/jumbo v0, "SIGN_IN_UI_TYPE"

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthConstants;->SIGN_IN_UI_TYPE:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "JUMP_URL"

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthConstants;->JUMP_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
