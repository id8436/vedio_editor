.class Lcom/adobe/sync/SyncController$10$3;
.super Ljava/lang/Object;
.source "SyncController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/sync/SyncController$10;


# direct methods
.method constructor <init>(Lcom/adobe/sync/SyncController$10;)V
    .locals 0

    .prologue
    .line 1625
    iput-object p1, p0, Lcom/adobe/sync/SyncController$10$3;->this$1:Lcom/adobe/sync/SyncController$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/adobe/sync/SyncController$10$3;->this$1:Lcom/adobe/sync/SyncController$10;

    iget-object v0, v0, Lcom/adobe/sync/SyncController$10;->this$0:Lcom/adobe/sync/SyncController;

    invoke-static {v0}, Lcom/adobe/sync/SyncController;->access$300(Lcom/adobe/sync/SyncController;)Lcom/adobe/sync/ComponentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/sync/SyncController$10$3;->this$1:Lcom/adobe/sync/SyncController$10;

    iget-object v1, v1, Lcom/adobe/sync/SyncController$10;->val$compositeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/sync/SyncController$10$3;->this$1:Lcom/adobe/sync/SyncController$10;

    iget-object v2, v2, Lcom/adobe/sync/SyncController$10;->val$componentId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/sync/ComponentManager;->removeLargeComponentComposites(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1629
    if-nez v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/adobe/sync/SyncController$10$3;->this$1:Lcom/adobe/sync/SyncController$10;

    iget-object v0, v0, Lcom/adobe/sync/SyncController$10;->this$0:Lcom/adobe/sync/SyncController;

    iget-object v1, p0, Lcom/adobe/sync/SyncController$10$3;->this$1:Lcom/adobe/sync/SyncController$10;

    iget-object v1, v1, Lcom/adobe/sync/SyncController$10;->val$compositeId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/adobe/sync/SyncController;->access$1300(Lcom/adobe/sync/SyncController;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1631
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adobe/sync/SyncController$10$3$1;

    invoke-direct {v1, p0}, Lcom/adobe/sync/SyncController$10$3$1;-><init>(Lcom/adobe/sync/SyncController$10$3;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1636
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1638
    :cond_0
    return-void
.end method
