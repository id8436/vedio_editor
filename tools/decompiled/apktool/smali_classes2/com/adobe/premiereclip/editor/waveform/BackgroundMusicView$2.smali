.class Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$2;
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
    .line 222
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$2;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$2;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$100(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1200eb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 225
    return-void
.end method
