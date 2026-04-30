.class Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$9;
.super Ljava/lang/Object;
.source "BackgroundMusicView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$9;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 404
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didToggleSoundtrackAutoMix(Ljava/lang/Boolean;)V

    .line 405
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$9;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v0, p2}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$1202(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;Z)Z

    .line 406
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$9;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$1200(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$9;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$700(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$Listener;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_MIX:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$Listener;->audioSettingsUpdated(Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;F)V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$9;->this$0:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->access$700(Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;)Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$Listener;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_MIX:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$Listener;->audioSettingsUpdated(Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;F)V

    goto :goto_0
.end method
