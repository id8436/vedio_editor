.class Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$2$1;
.super Ljava/lang/Object;
.source "AdobeAuthContinuableEventActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$2;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$2;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$2$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$2$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;->access$200(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;)V

    .line 203
    return-void
.end method
