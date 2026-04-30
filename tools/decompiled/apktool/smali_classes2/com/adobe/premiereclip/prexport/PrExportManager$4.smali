.class Lcom/adobe/premiereclip/prexport/PrExportManager$4;
.super Ljava/lang/Object;
.source "PrExportManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/prexport/PrExportManager;

.field final synthetic val$progress:D


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/prexport/PrExportManager;D)V
    .locals 0

    .prologue
    .line 803
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/PrExportManager$4;->this$0:Lcom/adobe/premiereclip/prexport/PrExportManager;

    iput-wide p2, p0, Lcom/adobe/premiereclip/prexport/PrExportManager$4;->val$progress:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 806
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager$4;->this$0:Lcom/adobe/premiereclip/prexport/PrExportManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->access$300(Lcom/adobe/premiereclip/prexport/PrExportManager;)Lcom/adobe/premiereclip/prexport/PrExportManager$PrExportCallback;

    move-result-object v0

    iget-wide v2, p0, Lcom/adobe/premiereclip/prexport/PrExportManager$4;->val$progress:D

    invoke-interface {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/PrExportManager$PrExportCallback;->onPProExportProgress(D)V

    .line 807
    return-void
.end method
