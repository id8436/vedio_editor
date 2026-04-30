.class Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler$2;
.super Ljava/lang/Object;
.source "AdobeContinuableEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;

.field final synthetic val$authManager:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler$2;->val$authManager:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler$2;->val$authManager:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->reAuthenticate()Z

    move-result v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;->access$200(Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;)V

    .line 78
    :cond_0
    return-void
.end method
