.class Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1$1;
.super Ljava/lang/Object;
.source "AdobeUCFArchive.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;

.field final synthetic val$finalError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1$1;->val$finalError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive$1$1;->val$finalError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    .line 236
    return-void
.end method
