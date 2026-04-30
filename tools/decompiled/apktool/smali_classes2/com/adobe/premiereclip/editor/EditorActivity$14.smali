.class Lcom/adobe/premiereclip/editor/EditorActivity$14;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$Listener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V
    .locals 0

    .prologue
    .line 1314
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$14;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWaveformClear()V
    .locals 4

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$14;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$1600(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/RangeSeekBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity$14;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/EditorActivity$14;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v3}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$1700(Lcom/adobe/premiereclip/editor/EditorActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1331
    return-void
.end method

.method public onWaveformDraw(Ljava/util/ArrayList;Lcom/adobe/premiereclip/project/sequence/Clip;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$14;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$500(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v0

    .line 1318
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$14;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$000(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$14;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$000(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$14;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    .line 1319
    invoke-static {v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$000(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$14;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    .line 1320
    invoke-static {v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$000(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1321
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$14;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$000(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipId()Ljava/lang/String;

    move-result-object v0

    .line 1322
    invoke-virtual {p2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$14;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$1600(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/RangeSeekBar;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$14;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1326
    :cond_0
    return-void
.end method
