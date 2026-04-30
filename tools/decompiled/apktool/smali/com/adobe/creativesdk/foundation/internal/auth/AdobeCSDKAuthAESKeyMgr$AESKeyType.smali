.class final enum Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;
.super Ljava/lang/Enum;
.source "AdobeCSDKAuthAESKeyMgr.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;

.field public static final enum kFoundationAuth:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;

.field public static final enum kSharedDeviceToken:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;

    const-string/jumbo v1, "kFoundationAuth"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;->kFoundationAuth:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;

    .line 52
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;

    const-string/jumbo v1, "kSharedDeviceToken"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;->kSharedDeviceToken:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;->kFoundationAuth:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;->kSharedDeviceToken:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeyType;

    return-object v0
.end method
