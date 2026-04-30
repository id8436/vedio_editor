.class Lcom/adobe/sync/SyncController$10$2;
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
    .line 1606
    iput-object p1, p0, Lcom/adobe/sync/SyncController$10$2;->this$1:Lcom/adobe/sync/SyncController$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/adobe/sync/SyncController$10$2;->this$1:Lcom/adobe/sync/SyncController$10;

    iget-object v0, v0, Lcom/adobe/sync/SyncController$10;->this$0:Lcom/adobe/sync/SyncController;

    iget-object v1, p0, Lcom/adobe/sync/SyncController$10$2;->this$1:Lcom/adobe/sync/SyncController$10;

    iget-object v1, v1, Lcom/adobe/sync/SyncController$10;->val$compositeId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/adobe/sync/SyncController;->access$1300(Lcom/adobe/sync/SyncController;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1610
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adobe/sync/SyncController$10$2$1;

    invoke-direct {v1, p0}, Lcom/adobe/sync/SyncController$10$2$1;-><init>(Lcom/adobe/sync/SyncController$10$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1615
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1616
    return-void
.end method
