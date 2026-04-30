.class Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$8;
.super Ljava/lang/Object;
.source "AdobeAuthManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;)V
    .locals 0

    .prologue
    .line 1450
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$8;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1454
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "Authentication"

    const-string/jumbo v2, "Calling logout() from emergency-logout"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$8;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->access$902(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Z)Z

    .line 1456
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$8;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->logout()V

    .line 1457
    return-void
.end method
