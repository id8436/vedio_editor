.class Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress$1;
.super Ljava/lang/Object;
.source "AdobeCSDKProgress.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

.field final synthetic val$progressPercent:I


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;I)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    iput p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress$1;->val$progressPercent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    iget v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress$1;->val$progressPercent:I

    iput v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_progressPercent:I

    .line 66
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_listeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/IAdobeProgressCallback;

    iget v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress$1;->val$progressPercent:I

    int-to-double v2, v2

    invoke-interface {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/IAdobeProgressCallback;->onProgress(D)V

    .line 66
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method
