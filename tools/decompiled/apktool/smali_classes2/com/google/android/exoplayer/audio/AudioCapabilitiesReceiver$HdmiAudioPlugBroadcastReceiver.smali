.class final Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$1;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;-><init>(Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string/jumbo v1, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-static {v0}, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->access$100(Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;)Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer/audio/AudioCapabilities;

    const-string/jumbo v2, "android.media.extra.ENCODINGS"

    .line 95
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    const-string/jumbo v3, "android.media.extra.MAX_CHANNEL_COUNT"

    const/4 v4, 0x0

    .line 96
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer/audio/AudioCapabilities;-><init>([II)V

    .line 94
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;->onAudioCapabilitiesChanged(Lcom/google/android/exoplayer/audio/AudioCapabilities;)V

    goto :goto_0
.end method
