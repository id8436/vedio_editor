.class Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle$1;
.super Ljava/lang/Object;
.source "AdobeNetworkHttpTaskHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

.field final synthetic val$progressPercent:I


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;I)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    iput p2, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle$1;->val$progressPercent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle$1;->val$progressPercent:I

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->access$002(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;I)I

    .line 111
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->access$100(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->access$100(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle$1;->val$progressPercent:I

    int-to-double v2, v2

    invoke-interface {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;->onProgressNotification(D)V

    .line 111
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method
