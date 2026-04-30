.class Lcom/adobe/premiereclip/editor/EditorActivity$15;
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
    .line 1442
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$15;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$15;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$1800(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    .line 1446
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$15;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    .line 1447
    invoke-static {v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$000(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numVideoClips()I

    move-result v1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity$15;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    .line 1448
    invoke-static {v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$000(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numStillImageClips()I

    move-result v2

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/EditorActivity$15;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    .line 1449
    invoke-static {v3}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$000(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numTitleClips()I

    move-result v3

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/EditorActivity$15;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    .line 1450
    invoke-static {v4}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$000(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numStorycardClips()I

    move-result v4

    iget-object v5, p0, Lcom/adobe/premiereclip/editor/EditorActivity$15;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    .line 1451
    invoke-static {v5}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$000(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numAudioClips()I

    move-result v5

    iget-object v6, p0, Lcom/adobe/premiereclip/editor/EditorActivity$15;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    .line 1452
    invoke-static {v6}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$000(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getLook()Lcom/adobe/premiereclip/looks/BaseLook;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/premiereclip/looks/BaseLook;->getLookName()Ljava/lang/String;

    move-result-object v6

    .line 1446
    invoke-virtual/range {v0 .. v6}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectSignatureWithVideoClips(IIIIILjava/lang/String;)V

    .line 1453
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapExport()V

    .line 1455
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$15;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$1900(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    .line 1462
    return-void
.end method
