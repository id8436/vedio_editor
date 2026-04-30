.class public Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher;
.super Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;
.source "AdobeAuthSocialSessionLauncher.java"


# instance fields
.field private socialLoginParams:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;-><init>()V

    .line 20
    return-void
.end method

.method static synthetic access$002(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher;->socialLoginParams:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams;

    return-object p1
.end method


# virtual methods
.method public getSocialLoginParams()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher;->socialLoginParams:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams;

    return-object v0
.end method
