.class Lcom/adobe/premiereclip/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/MainActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/MainActivity;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$7;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 610
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->isSyncInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$7;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$1000(Lcom/adobe/premiereclip/MainActivity;)V

    .line 613
    :cond_0
    return-void
.end method
