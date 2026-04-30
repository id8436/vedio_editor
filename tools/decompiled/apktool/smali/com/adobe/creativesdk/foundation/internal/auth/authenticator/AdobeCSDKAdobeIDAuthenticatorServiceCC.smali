.class public Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorServiceCC;
.super Landroid/app/Service;
.source "AdobeCSDKAdobeIDAuthenticatorServiceCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private initializeAuthenticatorService()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 17
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorServiceCC;->initializeAuthenticatorService()V

    .line 18
    return-void
.end method
