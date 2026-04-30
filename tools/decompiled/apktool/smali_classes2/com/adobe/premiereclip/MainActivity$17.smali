.class Lcom/adobe/premiereclip/MainActivity$17;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/MainActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/MainActivity;)V
    .locals 0

    .prologue
    .line 1870
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$17;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$17;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$2400(Lcom/adobe/premiereclip/MainActivity;)Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->handleMediaSyncIndicatorButtonTapped()V

    .line 1874
    return-void
.end method
