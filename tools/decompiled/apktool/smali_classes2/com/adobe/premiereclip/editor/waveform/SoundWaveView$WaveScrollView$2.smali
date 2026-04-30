.class Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView$2;
.super Ljava/lang/Object;
.source "SoundWaveView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView$2;->this$1:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 201
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView$2;->this$1:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->access$500(Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;)V

    .line 206
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
