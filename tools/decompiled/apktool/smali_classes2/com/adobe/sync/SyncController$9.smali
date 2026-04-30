.class Lcom/adobe/sync/SyncController$9;
.super Ljava/lang/Object;
.source "SyncController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/sync/SyncController;

.field final synthetic val$compositeID:Ljava/lang/String;

.field final synthetic val$controller:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;


# direct methods
.method constructor <init>(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1401
    iput-object p1, p0, Lcom/adobe/sync/SyncController$9;->this$0:Lcom/adobe/sync/SyncController;

    iput-object p2, p0, Lcom/adobe/sync/SyncController$9;->val$controller:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    iput-object p3, p0, Lcom/adobe/sync/SyncController$9;->val$compositeID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/adobe/sync/SyncController$9;->this$0:Lcom/adobe/sync/SyncController;

    iget-object v1, p0, Lcom/adobe/sync/SyncController$9;->val$controller:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    iget-object v2, p0, Lcom/adobe/sync/SyncController$9;->val$compositeID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/sync/SyncController;->controllerRequestsDeleteOfCompositeWithID(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;)V

    .line 1406
    return-void
.end method
