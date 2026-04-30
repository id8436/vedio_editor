.class Lcom/adobe/premiereclip/editor/EditorActivity$8$1;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/editor/EditorActivity$8;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/EditorActivity$8;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$8$1;->this$1:Lcom/adobe/premiereclip/editor/EditorActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 522
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$8$1;->this$1:Lcom/adobe/premiereclip/editor/EditorActivity$8;

    iget-object v0, v0, Lcom/adobe/premiereclip/editor/EditorActivity$8;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$400(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/SnapToBeatController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$8$1;->this$1:Lcom/adobe/premiereclip/editor/EditorActivity$8;

    iget-object v0, v0, Lcom/adobe/premiereclip/editor/EditorActivity$8;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$400(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/SnapToBeatController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$8$1;->this$1:Lcom/adobe/premiereclip/editor/EditorActivity$8;

    iget-object v0, v0, Lcom/adobe/premiereclip/editor/EditorActivity$8;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$500(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v0

    .line 524
    if-ltz v0, :cond_0

    .line 525
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$8$1;->this$1:Lcom/adobe/premiereclip/editor/EditorActivity$8;

    iget-object v1, v1, Lcom/adobe/premiereclip/editor/EditorActivity$8;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$500(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/Editor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/adobe/premiereclip/editor/Editor;->snapToBeatForClipsOnward(IZ)V

    .line 526
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$8$1;->this$1:Lcom/adobe/premiereclip/editor/EditorActivity$8;

    iget-object v1, v1, Lcom/adobe/premiereclip/editor/EditorActivity$8;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$600(Lcom/adobe/premiereclip/editor/EditorActivity;I)V

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$8$1;->this$1:Lcom/adobe/premiereclip/editor/EditorActivity$8;

    iget-object v0, v0, Lcom/adobe/premiereclip/editor/EditorActivity$8;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0, v3}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$702(Lcom/adobe/premiereclip/editor/EditorActivity;Z)Z

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$8$1;->this$1:Lcom/adobe/premiereclip/editor/EditorActivity$8;

    iget-object v0, v0, Lcom/adobe/premiereclip/editor/EditorActivity$8;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$800(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    .line 531
    return-void
.end method
