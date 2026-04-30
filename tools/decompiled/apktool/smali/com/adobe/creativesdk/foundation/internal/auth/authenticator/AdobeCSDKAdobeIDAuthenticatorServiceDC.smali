.class public Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorServiceDC;
.super Landroid/app/Service;
.source "AdobeCSDKAdobeIDAuthenticatorServiceDC.java"


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
    .line 23
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorDC;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorDC;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorDC;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 16
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorServiceDC;->initializeAuthenticatorService()V

    .line 17
    return-void
.end method
