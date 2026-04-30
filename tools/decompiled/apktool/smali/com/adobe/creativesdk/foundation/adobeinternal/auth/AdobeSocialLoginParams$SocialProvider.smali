.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;
.super Ljava/lang/Enum;
.source "AdobeSocialLoginParams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;

.field public static final enum FACEBOOK:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;

.field public static final enum GOOGLE:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;

    const-string/jumbo v1, "GOOGLE"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;->GOOGLE:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;

    .line 15
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;

    const-string/jumbo v1, "FACEBOOK"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;->FACEBOOK:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;->GOOGLE:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;->FACEBOOK:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;

    aput-object v1, v0, v3

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;

    return-object v0
.end method
