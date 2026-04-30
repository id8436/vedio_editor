.class Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$7;
.super Ljava/lang/Object;
.source "AutomaticActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$7;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$7;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$1000(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->handleMediaSyncIndicatorButtonTapped()V

    .line 624
    return-void
.end method
