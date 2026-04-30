.class Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$2$2;
.super Ljava/lang/Object;
.source "AdobeUCFArchive.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$2;

.field final synthetic val$finalExtractedFiles:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$2;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$2$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$2;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$2$2;->val$finalExtractedFiles:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$2$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$2;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$2$2;->val$finalExtractedFiles:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 410
    return-void
.end method
