.class Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler$1;
.super Ljava/lang/Object;
.source "PremiereClipApplication.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler$1;->this$1:Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 3

    .prologue
    .line 100
    const-string/jumbo v0, "LOGOUT_DEVICE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error in Logout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler$1;->this$1:Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;->handleLogout()V

    .line 96
    return-void
.end method
