.class Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView$1;
.super Ljava/lang/Object;
.source "SoundWaveView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;

.field final synthetic val$this$0:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView$1;->this$1:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;

    iput-object p2, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView$1;->val$this$0:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView$1;->this$1:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->getScrollX()I

    move-result v0

    .line 178
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView$1;->this$1:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->access$000(Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;)I

    move-result v1

    sub-int/2addr v1, v0

    if-nez v1, :cond_1

    .line 179
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView$1;->this$1:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;

    iget-object v1, v1, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->this$0:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->access$100(Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView$1;->this$1:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;

    iget-object v1, v1, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->this$0:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->access$200(Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;)Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollListener;

    move-result-object v1

    int-to-float v0, v0

    invoke-interface {v1, v0}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollListener;->onScrolled(F)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView$1;->this$1:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView$1;->this$1:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->getScrollX()I

    move-result v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->access$002(Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;I)I

    .line 185
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView$1;->this$1:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView$1;->this$1:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->access$300(Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView$1;->this$1:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;

    invoke-static {v2}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->access$400(Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
