.class Lcom/adobe/premiereclip/editor/EditorActivity$8;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/editor/SnapToBeatController$SnapToBeatListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

.field final synthetic val$uiHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/EditorActivity;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$8;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    iput-object p2, p0, Lcom/adobe/premiereclip/editor/EditorActivity$8;->val$uiHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady()V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$8;->val$uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/premiereclip/editor/EditorActivity$8$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$8$1;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity$8;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 533
    return-void
.end method
