.class Lcom/adobe/premiereclip/editor/EditorActivity$34;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V
    .locals 0

    .prologue
    .line 2711
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$34;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2714
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$34;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$3100(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->handleMediaSyncIndicatorButtonTapped()V

    .line 2715
    return-void
.end method
