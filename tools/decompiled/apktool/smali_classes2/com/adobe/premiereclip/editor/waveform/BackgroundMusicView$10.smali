.class Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$10;
.super Ljava/lang/Object;
.source "BackgroundMusicView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$10;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    .line 420
    mul-int/lit8 v0, p2, 0x2

    .line 421
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$10;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$1300(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    int-to-float v2, v0

    div-float/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didChangeSoundtrackVolumeSlider(F)V

    .line 424
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$10;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$700(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$Listener;

    move-result-object v1

    sget-object v2, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_VOLUME:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-interface {v1, v2, v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$Listener;->audioSettingsUpdated(Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;F)V

    .line 425
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 430
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 435
    return-void
.end method
