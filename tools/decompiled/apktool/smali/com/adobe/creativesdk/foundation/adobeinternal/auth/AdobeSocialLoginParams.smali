.class public abstract Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams;
.super Ljava/lang/Object;
.source "AdobeSocialLoginParams.java"


# instance fields
.field protected idp_token:Ljava/lang/String;

.field protected socialProvider:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams;->idp_token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIdp_token()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams;->idp_token:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams;->socialProvider:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;

    return-object v0
.end method

.method protected setIdp_token(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams;->idp_token:Ljava/lang/String;

    .line 26
    return-void
.end method
