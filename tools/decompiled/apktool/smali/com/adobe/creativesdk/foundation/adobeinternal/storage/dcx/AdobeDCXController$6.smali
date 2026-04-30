.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;
.super Ljava/lang/Object;
.source "AdobeDCXController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

.field final synthetic val$compositeID:Ljava/lang/String;

.field final synthetic val$delegateResultCondition:Ljava/util/concurrent/locks/Condition;

.field final synthetic val$lock:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic val$op:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$1OutPut;

.field final synthetic val$self:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

.field final synthetic val$strongDelegate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$1OutPut;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    .prologue
    .line 1388
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;->val$strongDelegate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;->val$op:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$1OutPut;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;->val$self:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;->val$compositeID:Ljava/lang/String;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;->val$delegateResultCondition:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->access$1000(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1406
    return-void
.end method
