.class Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1$2;
.super Ljava/lang/Object;
.source "AdobeUCFArchive.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;

.field final synthetic val$finalSuccess:Z


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;Z)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;

    iput-boolean p2, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1$2;->val$finalSuccess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1$2;->val$finalSuccess:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 250
    return-void
.end method
