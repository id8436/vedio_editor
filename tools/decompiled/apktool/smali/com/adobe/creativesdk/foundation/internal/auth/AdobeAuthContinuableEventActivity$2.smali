.class Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$2;
.super Ljava/lang/Object;
.source "AdobeAuthContinuableEventActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 196
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->reAuthenticate()Z

    move-result v0

    .line 198
    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$2$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$2$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 207
    :cond_0
    return-void
.end method
