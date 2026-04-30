.class public Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;
.super Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;
.source "AdobeAuthSocialSessionLauncher.java"


# instance fields
.field private socialLoginParams:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;->socialLoginParams:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher;->access$002(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams;

    .line 45
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;->setParameters(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;)V

    .line 46
    return-object v0
.end method

.method public bridge synthetic build()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;->build()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher;

    move-result-object v0

    return-object v0
.end method

.method public withActivity(Landroid/app/Activity;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;
    .locals 0

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;->setLauncherActivity(Landroid/app/Activity;)V

    .line 59
    return-object p0
.end method

.method public bridge synthetic withActivity(Landroid/app/Activity;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;->withActivity(Landroid/app/Activity;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withAdditonalScopes([Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;->setAdditionalScopes([Ljava/lang/String;)V

    .line 101
    return-object p0
.end method

.method public bridge synthetic withAdditonalScopes([Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;->withAdditonalScopes([Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withContext(Landroid/content/Context;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;
    .locals 0

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;->setLauncherContext(Landroid/content/Context;)V

    .line 74
    return-object p0
.end method

.method public bridge synthetic withContext(Landroid/content/Context;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;->withContext(Landroid/content/Context;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withContinuableErrorCode(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;
    .locals 0

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;->setContinuableErrorCode(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    .line 126
    return-object p0
.end method

.method public bridge synthetic withContinuableErrorCode(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;->withContinuableErrorCode(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withIntentFlags(I)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;
    .locals 0

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;->setIntentFlags(I)V

    .line 114
    return-object p0
.end method

.method public bridge synthetic withIntentFlags(I)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;->withIntentFlags(I)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withRequestCode(I)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;->setRequestCode(I)V

    .line 88
    return-object p0
.end method

.method public bridge synthetic withRequestCode(I)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;->withRequestCode(I)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withSocialLoginParams(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher$Builder;->socialLoginParams:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams;

    .line 34
    return-object p0
.end method
