.class Lcom/adobe/premiereclip/editor/EditorActivity$40;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V
    .locals 0

    .prologue
    .line 2994
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$40;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 2998
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->isSyncInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2999
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$40;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    new-instance v1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity$40;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/EditorActivity$40;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v3}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$000(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v3

    iget-object v3, v3, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;-><init>(Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$3102(Lcom/adobe/premiereclip/editor/EditorActivity;Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;)Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;

    .line 3000
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$40;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$3700(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    .line 3002
    :cond_0
    return-void
.end method
