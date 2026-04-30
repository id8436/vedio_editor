.class public Lcom/adobe/decoderfactory/DecoderFactory;
.super Ljava/lang/Object;
.source "DecoderFactory.java"


# static fields
.field static currentContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAudioDecoder(ILjava/lang/String;)Lcom/adobe/decoderfactory/IAudioDecoder;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/adobe/decoderfactory/DecoderFactory;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/adobe/decoderfactory/AudioDecoderCache;->Instance()Lcom/adobe/decoderfactory/AudioDecoderCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {}, Lcom/adobe/decoderfactory/AudioDecoderCache;->Instance()Lcom/adobe/decoderfactory/AudioDecoderCache;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/adobe/decoderfactory/AudioDecoderCache;->getDecoder(ILjava/lang/String;)Lcom/adobe/decoderfactory/IAudioDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 27
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getCurrentContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/adobe/decoderfactory/DecoderFactory;->currentContext:Landroid/content/Context;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 10
    sput-object p0, Lcom/adobe/decoderfactory/DecoderFactory;->currentContext:Landroid/content/Context;

    .line 11
    invoke-static {}, Lcom/adobe/decoderfactory/AudioDecoderCache;->initialize()V

    .line 12
    return-void
.end method

.method public static terminate()V
    .locals 0

    .prologue
    .line 14
    invoke-static {}, Lcom/adobe/decoderfactory/AudioDecoderCache;->terminate()V

    .line 15
    return-void
.end method
