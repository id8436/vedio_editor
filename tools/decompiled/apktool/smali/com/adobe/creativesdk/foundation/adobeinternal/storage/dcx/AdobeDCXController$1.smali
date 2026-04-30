.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$1;
.super Ljava/util/TimerTask;
.source "AdobeDCXController.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

.field final synthetic val$CompositeStateWeakRef:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$1;->val$CompositeStateWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 759
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$1;->val$CompositeStateWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    .line 760
    if-eqz v0, :cond_0

    .line 761
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->requestPushForCompositeWithControllerState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V

    .line 763
    :cond_0
    return-void
.end method
