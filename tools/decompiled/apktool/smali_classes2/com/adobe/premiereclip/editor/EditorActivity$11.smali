.class Lcom/adobe/premiereclip/editor/EditorActivity$11;
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
    .line 998
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$11;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1001
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapReplaceSoundtrack()V

    .line 1002
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$11;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    const-class v2, Lcom/adobe/premiereclip/music/TrackCategoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1003
    const-string/jumbo v1, "project_key"

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity$11;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$000(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v2

    iget-object v2, v2, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1004
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$11;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    const v2, 0x186e7

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1005
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$11;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    const v1, 0x7f05002b

    const v2, 0x7f05002c

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->overridePendingTransition(II)V

    .line 1006
    return-void
.end method
