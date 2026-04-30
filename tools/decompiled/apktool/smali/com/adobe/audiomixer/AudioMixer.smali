.class public Lcom/adobe/audiomixer/AudioMixer;
.super Ljava/lang/Object;
.source "AudioMixer.java"


# static fields
.field static currentContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSequence()Lcom/adobe/audiomixer/IAudioSequence;
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/adobe/audiomixer/ImplIAudioSequnce;

    invoke-direct {v0}, Lcom/adobe/audiomixer/ImplIAudioSequnce;-><init>()V

    return-object v0
.end method

.method public static getCurrentContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/adobe/audiomixer/AudioMixer;->currentContext:Landroid/content/Context;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 16
    sput-object p0, Lcom/adobe/audiomixer/AudioMixer;->currentContext:Landroid/content/Context;

    .line 17
    sget-object v0, Lcom/adobe/audiomixer/AudioMixer;->currentContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/decoderfactory/DecoderFactory;->initialize(Landroid/content/Context;)V

    .line 18
    invoke-static {}, Lcom/adobe/audiomixer/JniInterface;->initialize()V

    .line 19
    return-void
.end method

.method public static terminate()V
    .locals 0

    .prologue
    .line 22
    invoke-static {}, Lcom/adobe/audiomixer/JniInterface;->terminate()V

    .line 23
    invoke-static {}, Lcom/adobe/decoderfactory/DecoderFactory;->terminate()V

    .line 24
    return-void
.end method
