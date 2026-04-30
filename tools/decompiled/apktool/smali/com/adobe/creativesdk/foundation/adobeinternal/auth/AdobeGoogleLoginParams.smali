.class public Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeGoogleLoginParams;
.super Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams;
.source "AdobeGoogleLoginParams.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams;-><init>()V

    .line 16
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;->GOOGLE:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeGoogleLoginParams;->socialProvider:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;

    .line 17
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeGoogleLoginParams;->setIdp_token(Ljava/lang/String;)V

    .line 18
    return-void
.end method
