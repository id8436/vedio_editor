.class Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "SoundWaveView.java"


# instance fields
.field private initialPosition:I

.field private newCheck:I

.field private scrollerTask:Ljava/lang/Runnable;

.field private startOffset:I

.field final synthetic this$0:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 171
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->this$0:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;

    .line 172
    invoke-direct {p0, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 169
    const/16 v0, 0x64

    iput v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->newCheck:I

    .line 173
    iput p3, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->startOffset:I

    .line 174
    new-instance v0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView$1;

    invoke-direct {v0, p0, p1}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView$1;-><init>(Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->scrollerTask:Ljava/lang/Runnable;

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;)I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->initialPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;I)I
    .locals 0

    .prologue
    .line 164
    iput p1, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->initialPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->scrollerTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;)I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->newCheck:I

    return v0
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->startScrollerTask()V

    return-void
.end method

.method private startScrollerTask()V
    .locals 4

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->initialPosition:I

    .line 193
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->scrollerTask:Ljava/lang/Runnable;

    iget v1, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->newCheck:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 194
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 213
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 214
    iget v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->startOffset:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->scrollBy(II)V

    .line 215
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3

    .prologue
    .line 220
    const-string/jumbo v0, "WaveScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "X from ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 222
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->getScrollX()I

    move-result v0

    .line 223
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->this$0:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->access$100(Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->this$0:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->access$200(Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;)Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollListener;

    move-result-object v1

    int-to-float v0, v0

    invoke-interface {v1, v0}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollListener;->onScrolling(F)V

    .line 226
    :cond_0
    return-void
.end method

.method public setTouchListener()V
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView$2;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView$2;-><init>(Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;)V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 209
    return-void
.end method
