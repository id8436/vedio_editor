.class Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$1;
.super Ljava/lang/Object;
.source "BackgroundMusicView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$1;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 204
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$1;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$000(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$1;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$100(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120507

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$1;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$100(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f12011e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$1;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$100(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120106

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$1;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$100(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120127

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$1;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$100(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1200eb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 200
    return-void
.end method
