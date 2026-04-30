.class Lcom/adobe/sync/SyncController$10$3$1;
.super Ljava/lang/Object;
.source "SyncController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/adobe/sync/SyncController$10$3;


# direct methods
.method constructor <init>(Lcom/adobe/sync/SyncController$10$3;)V
    .locals 0

    .prologue
    .line 1631
    iput-object p1, p0, Lcom/adobe/sync/SyncController$10$3$1;->this$2:Lcom/adobe/sync/SyncController$10$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/adobe/sync/SyncController$10$3$1;->this$2:Lcom/adobe/sync/SyncController$10$3;

    iget-object v0, v0, Lcom/adobe/sync/SyncController$10$3;->this$1:Lcom/adobe/sync/SyncController$10;

    iget-object v0, v0, Lcom/adobe/sync/SyncController$10;->val$controller:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    iget-object v1, p0, Lcom/adobe/sync/SyncController$10$3$1;->this$2:Lcom/adobe/sync/SyncController$10$3;

    iget-object v1, v1, Lcom/adobe/sync/SyncController$10$3;->this$1:Lcom/adobe/sync/SyncController$10;

    iget-object v1, v1, Lcom/adobe/sync/SyncController$10;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->resumeSyncForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    .line 1635
    return-void
.end method
