.class Lcom/adobe/premiereclip/automode/AudioDecodeTask$1;
.super Ljava/lang/Object;
.source "AudioDecodeTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/automode/AudioDecodeTask;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/automode/AudioDecodeTask;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask$1;->this$0:Lcom/adobe/premiereclip/automode/AudioDecodeTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 52
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask$1;->this$0:Lcom/adobe/premiereclip/automode/AudioDecodeTask;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->setTaskThread(Ljava/lang/Thread;)V

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask$1;->this$0:Lcom/adobe/premiereclip/automode/AudioDecodeTask;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask$1;->this$0:Lcom/adobe/premiereclip/automode/AudioDecodeTask;

    invoke-static {v2}, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->access$100(Lcom/adobe/premiereclip/automode/AudioDecodeTask;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adobe/decoderfactory/DecoderFactory;->getAudioDecoder(ILjava/lang/String;)Lcom/adobe/decoderfactory/IAudioDecoder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->access$002(Lcom/adobe/premiereclip/automode/AudioDecodeTask;Lcom/adobe/decoderfactory/IAudioDecoder;)Lcom/adobe/decoderfactory/IAudioDecoder;

    .line 57
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask$1;->this$0:Lcom/adobe/premiereclip/automode/AudioDecodeTask;

    invoke-static {v0}, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->access$000(Lcom/adobe/premiereclip/automode/AudioDecodeTask;)Lcom/adobe/decoderfactory/IAudioDecoder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/adobe/decoderfactory/IAudioDecoder;->seekTo(J)V

    .line 58
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask$1;->this$0:Lcom/adobe/premiereclip/automode/AudioDecodeTask;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->getInfo()V

    .line 59
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask$1;->this$0:Lcom/adobe/premiereclip/automode/AudioDecodeTask;

    invoke-static {v0}, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->access$200(Lcom/adobe/premiereclip/automode/AudioDecodeTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask$1;->this$0:Lcom/adobe/premiereclip/automode/AudioDecodeTask;

    invoke-static {v0}, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->access$300(Lcom/adobe/premiereclip/automode/AudioDecodeTask;)Lcom/adobe/premiereclip/automode/AudioDecodeTask$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/premiereclip/automode/AudioDecodeTask$Listener;->onSuccess()V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask$1;->this$0:Lcom/adobe/premiereclip/automode/AudioDecodeTask;

    invoke-static {v0}, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->access$000(Lcom/adobe/premiereclip/automode/AudioDecodeTask;)Lcom/adobe/decoderfactory/IAudioDecoder;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/decoderfactory/IAudioDecoder;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask$1;->this$0:Lcom/adobe/premiereclip/automode/AudioDecodeTask;

    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->setTaskThread(Ljava/lang/Thread;)V

    .line 72
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 74
    return-void

    .line 69
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask$1;->this$0:Lcom/adobe/premiereclip/automode/AudioDecodeTask;

    invoke-virtual {v1, v4}, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->setTaskThread(Ljava/lang/Thread;)V

    .line 72
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 73
    throw v0
.end method
