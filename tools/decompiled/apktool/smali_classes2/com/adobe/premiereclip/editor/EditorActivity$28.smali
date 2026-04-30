.class Lcom/adobe/premiereclip/editor/EditorActivity$28;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

.field final synthetic val$clipTypeStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/EditorActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2167
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$28;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    iput-object p2, p0, Lcom/adobe/premiereclip/editor/EditorActivity$28;->val$clipTypeStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .prologue
    .line 2170
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$28;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$2500(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    .line 2171
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$28;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$2600(Lcom/adobe/premiereclip/editor/EditorActivity;Ljava/lang/String;)V

    .line 2172
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$28;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$500(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/Editor;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/Editor;->makeClipIntoStoryCard(Ljava/lang/String;)V

    .line 2173
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$28;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->showStoryCardInputDialog(Landroid/view/View;)V

    .line 2174
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$28;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$2700(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/Timeline;

    move-result-object v1

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$28;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$000(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity$28;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$500(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity$28;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    .line 2175
    invoke-static {v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$500(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v2

    .line 2174
    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/editor/Timeline;->resetClip(Lcom/adobe/premiereclip/project/sequence/Clip;I)V

    .line 2176
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$28;->val$clipTypeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didCreateStorycardFromClipType(Ljava/lang/String;)V

    .line 2178
    return-void
.end method
