.class Lcom/adobe/premiereclip/prexport/PrExportManager$3;
.super Ljava/lang/Object;
.source "PrExportManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/prexport/PrExportManager;

.field final synthetic val$isOutOfStorageSpace:Z

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/prexport/PrExportManager;ZZ)V
    .locals 0

    .prologue
    .line 701
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/PrExportManager$3;->this$0:Lcom/adobe/premiereclip/prexport/PrExportManager;

    iput-boolean p2, p0, Lcom/adobe/premiereclip/prexport/PrExportManager$3;->val$result:Z

    iput-boolean p3, p0, Lcom/adobe/premiereclip/prexport/PrExportManager$3;->val$isOutOfStorageSpace:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager$3;->this$0:Lcom/adobe/premiereclip/prexport/PrExportManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->access$200(Lcom/adobe/premiereclip/prexport/PrExportManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager$3;->this$0:Lcom/adobe/premiereclip/prexport/PrExportManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->access$300(Lcom/adobe/premiereclip/prexport/PrExportManager;)Lcom/adobe/premiereclip/prexport/PrExportManager$PrExportCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/premiereclip/prexport/PrExportManager$PrExportCallback;->onPProExportCancelled()V

    .line 714
    :goto_0
    return-void

    .line 708
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager$3;->val$result:Z

    if-eqz v0, :cond_1

    .line 709
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager$3;->this$0:Lcom/adobe/premiereclip/prexport/PrExportManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->access$300(Lcom/adobe/premiereclip/prexport/PrExportManager;)Lcom/adobe/premiereclip/prexport/PrExportManager$PrExportCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/premiereclip/prexport/PrExportManager$PrExportCallback;->onPProExportComplete()V

    goto :goto_0

    .line 712
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager$3;->this$0:Lcom/adobe/premiereclip/prexport/PrExportManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->access$300(Lcom/adobe/premiereclip/prexport/PrExportManager;)Lcom/adobe/premiereclip/prexport/PrExportManager$PrExportCallback;

    move-result-object v0

    iget-boolean v1, p0, Lcom/adobe/premiereclip/prexport/PrExportManager$3;->val$isOutOfStorageSpace:Z

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportManager$PrExportCallback;->onPProExportError(Z)V

    goto :goto_0
.end method
