.class public Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;
.super Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;
.source "AdobeTOUHandlerActivity.java"


# instance fields
.field authSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

.field authStatusCallback:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->authSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    .line 14
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->authStatusCallback:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->authStatusCallback:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->authSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    .line 31
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->authSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->onCreate(Landroid/os/Bundle;)V

    .line 32
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->onDestroy()V

    .line 49
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->authSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->onDestroy()V

    .line 50
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->onPause()V

    .line 37
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->authSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->onPause()V

    .line 38
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->onResume()V

    .line 43
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->authSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->onResume()V

    .line 44
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->onStart()V

    .line 55
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->authSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->onStart()V

    .line 56
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->onStop()V

    .line 61
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->authSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->onStop()V

    .line 62
    return-void
.end method
