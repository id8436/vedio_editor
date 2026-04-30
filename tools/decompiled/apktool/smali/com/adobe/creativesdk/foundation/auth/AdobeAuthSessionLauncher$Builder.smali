.class public Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;
.super Ljava/lang/Object;
.source "AdobeAuthSessionLauncher.java"


# instance fields
.field callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;

.field continuableErrorCode:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field defaultIntentFlags:I

.field launcherActivity:Landroid/app/Activity;

.field launcherContext:Landroid/content/Context;

.field redirectURI:Ljava/lang/String;

.field requestCode:I

.field scopesList:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->launcherActivity:Landroid/app/Activity;

    .line 60
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->launcherContext:Landroid/content/Context;

    .line 61
    const/16 v0, 0x7d2

    iput v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->requestCode:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->defaultIntentFlags:I

    .line 63
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->redirectURI:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;

    .line 66
    return-void
.end method


# virtual methods
.method public build()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->launcherContext:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->launcherActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "activity or context must be defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;-><init>()V

    .line 177
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->setParameters(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;)V

    .line 178
    return-object v0
.end method

.method protected setAdditionalScopes([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->scopesList:[Ljava/lang/String;

    .line 199
    return-void
.end method

.method protected setContinuableErrorCode(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->continuableErrorCode:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 207
    return-void
.end method

.method protected setIntentFlags(I)V
    .locals 0

    .prologue
    .line 202
    iput p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->defaultIntentFlags:I

    .line 203
    return-void
.end method

.method protected setLauncherActivity(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 210
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->launcherActivity:Landroid/app/Activity;

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->launcherContext:Landroid/content/Context;

    .line 212
    return-void
.end method

.method protected setLauncherContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 215
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->launcherContext:Landroid/content/Context;

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->launcherActivity:Landroid/app/Activity;

    .line 217
    return-void
.end method

.method protected setParameters(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;)V
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->defaultIntentFlags:I

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->access$002(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;I)I

    .line 184
    iget v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->requestCode:I

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->access$102(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;I)I

    .line 185
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->launcherActivity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->access$202(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;Landroid/app/Activity;)Landroid/app/Activity;

    .line 186
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->launcherContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->access$302(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;Landroid/content/Context;)Landroid/content/Context;

    .line 187
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->scopesList:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->access$402(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;[Ljava/lang/String;)[Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->continuableErrorCode:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->access$502(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 189
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->redirectURI:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->access$602(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->access$702(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;

    .line 191
    return-void
.end method

.method protected setRequestCode(I)V
    .locals 0

    .prologue
    .line 194
    iput p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->requestCode:I

    .line 195
    return-void
.end method

.method public withActivity(Landroid/app/Activity;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;
    .locals 1

    .prologue
    .line 75
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->launcherActivity:Landroid/app/Activity;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->launcherContext:Landroid/content/Context;

    .line 77
    return-object p0
.end method

.method public withAdditonalScopes([Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 126
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->scopesList:[Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public withContext(Landroid/content/Context;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;
    .locals 1

    .prologue
    .line 89
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->launcherContext:Landroid/content/Context;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->launcherActivity:Landroid/app/Activity;

    .line 91
    return-object p0
.end method

.method public withContinuableErrorCode(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->continuableErrorCode:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 150
    return-object p0
.end method

.method public withIntentFlags(I)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;
    .locals 0

    .prologue
    .line 138
    iput p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->defaultIntentFlags:I

    .line 139
    return-object p0
.end method

.method public withPostLoginWorkCallback(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;

    .line 115
    return-object p0
.end method

.method public withRedirectURI(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 163
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->redirectURI:Ljava/lang/String;

    .line 164
    return-object p0
.end method

.method public withRequestCode(I)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->requestCode:I

    .line 104
    return-object p0
.end method
