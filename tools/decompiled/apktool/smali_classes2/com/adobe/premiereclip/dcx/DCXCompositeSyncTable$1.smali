.class Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$1;
.super Ljava/util/TimerTask;
.source "DCXCompositeSyncTable.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$1;->this$0:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$1;->this$0:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->access$000(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;Z)V

    .line 112
    return-void
.end method
