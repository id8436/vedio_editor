.class final Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$9;
.super Ljava/lang/Object;
.source "AdobeSendToDesktopApplicationAdobeInternal.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$sendItemCallback:Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;)V
    .locals 0

    .prologue
    .line 893
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$9;->val$sendItemCallback:Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V
    .locals 3

    .prologue
    .line 896
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeSendToDesktopApplication"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$9;->val$sendItemCallback:Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    .line 898
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 893
    check-cast p1, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$9;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    return-void
.end method
