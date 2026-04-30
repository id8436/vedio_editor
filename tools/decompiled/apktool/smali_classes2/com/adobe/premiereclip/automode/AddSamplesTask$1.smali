.class Lcom/adobe/premiereclip/automode/AddSamplesTask$1;
.super Ljava/lang/Object;
.source "AddSamplesTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/automode/AddSamplesTask;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/automode/AddSamplesTask;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask$1;->this$0:Lcom/adobe/premiereclip/automode/AddSamplesTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 36
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask$1;->this$0:Lcom/adobe/premiereclip/automode/AddSamplesTask;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/automode/AddSamplesTask;->setTaskThread(Ljava/lang/Thread;)V

    .line 40
    :try_start_0
    const-string/jumbo v0, "AddSamplesTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AddSamples offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask$1;->this$0:Lcom/adobe/premiereclip/automode/AddSamplesTask;

    invoke-static {v2}, Lcom/adobe/premiereclip/automode/AddSamplesTask;->access$000(Lcom/adobe/premiereclip/automode/AddSamplesTask;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " nBins: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask$1;->this$0:Lcom/adobe/premiereclip/automode/AddSamplesTask;

    invoke-static {v2}, Lcom/adobe/premiereclip/automode/AddSamplesTask;->access$100(Lcom/adobe/premiereclip/automode/AddSamplesTask;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask$1;->this$0:Lcom/adobe/premiereclip/automode/AddSamplesTask;

    invoke-static {v2}, Lcom/adobe/premiereclip/automode/AddSamplesTask;->access$200(Lcom/adobe/premiereclip/automode/AddSamplesTask;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask$1;->this$0:Lcom/adobe/premiereclip/automode/AddSamplesTask;

    invoke-static {v0}, Lcom/adobe/premiereclip/automode/AddSamplesTask;->access$100(Lcom/adobe/premiereclip/automode/AddSamplesTask;)I

    move-result v0

    .line 48
    :goto_0
    if-lez v0, :cond_0

    .line 49
    iget-object v1, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask$1;->this$0:Lcom/adobe/premiereclip/automode/AddSamplesTask;

    invoke-static {v1}, Lcom/adobe/premiereclip/automode/AddSamplesTask;->access$400(Lcom/adobe/premiereclip/automode/AddSamplesTask;)Lcom/adobe/premiereclip/automode/VeloBridge;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask$1;->this$0:Lcom/adobe/premiereclip/automode/AddSamplesTask;

    invoke-static {v2}, Lcom/adobe/premiereclip/automode/AddSamplesTask;->access$300(Lcom/adobe/premiereclip/automode/AddSamplesTask;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask$1;->this$0:Lcom/adobe/premiereclip/automode/AddSamplesTask;

    invoke-static {v3}, Lcom/adobe/premiereclip/automode/AddSamplesTask;->access$000(Lcom/adobe/premiereclip/automode/AddSamplesTask;)I

    move-result v3

    iget-object v4, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask$1;->this$0:Lcom/adobe/premiereclip/automode/AddSamplesTask;

    invoke-static {v4}, Lcom/adobe/premiereclip/automode/AddSamplesTask;->access$200(Lcom/adobe/premiereclip/automode/AddSamplesTask;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/adobe/premiereclip/automode/VeloBridge;->AddSFTBin([FII)V

    .line 50
    iget-object v1, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask$1;->this$0:Lcom/adobe/premiereclip/automode/AddSamplesTask;

    iget-object v2, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask$1;->this$0:Lcom/adobe/premiereclip/automode/AddSamplesTask;

    invoke-static {v2}, Lcom/adobe/premiereclip/automode/AddSamplesTask;->access$000(Lcom/adobe/premiereclip/automode/AddSamplesTask;)I

    move-result v2

    iget-object v3, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask$1;->this$0:Lcom/adobe/premiereclip/automode/AddSamplesTask;

    invoke-static {v3}, Lcom/adobe/premiereclip/automode/AddSamplesTask;->access$500(Lcom/adobe/premiereclip/automode/AddSamplesTask;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/adobe/premiereclip/automode/AddSamplesTask;->access$002(Lcom/adobe/premiereclip/automode/AddSamplesTask;I)I

    .line 51
    iget-object v1, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask$1;->this$0:Lcom/adobe/premiereclip/automode/AddSamplesTask;

    invoke-static {v1}, Lcom/adobe/premiereclip/automode/AddSamplesTask;->access$208(Lcom/adobe/premiereclip/automode/AddSamplesTask;)I

    .line 52
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask$1;->this$0:Lcom/adobe/premiereclip/automode/AddSamplesTask;

    invoke-static {v0}, Lcom/adobe/premiereclip/automode/AddSamplesTask;->access$600(Lcom/adobe/premiereclip/automode/AddSamplesTask;)Lcom/adobe/premiereclip/automode/AddSamplesTask$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask$1;->this$0:Lcom/adobe/premiereclip/automode/AddSamplesTask;

    invoke-static {v1}, Lcom/adobe/premiereclip/automode/AddSamplesTask;->access$100(Lcom/adobe/premiereclip/automode/AddSamplesTask;)I

    move-result v1

    iget-object v2, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask$1;->this$0:Lcom/adobe/premiereclip/automode/AddSamplesTask;

    invoke-static {v2}, Lcom/adobe/premiereclip/automode/AddSamplesTask;->access$500(Lcom/adobe/premiereclip/automode/AddSamplesTask;)I

    move-result v2

    mul-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/automode/AddSamplesTask$Listener;->doneAddSamplesTask(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask$1;->this$0:Lcom/adobe/premiereclip/automode/AddSamplesTask;

    invoke-virtual {v0, v5}, Lcom/adobe/premiereclip/automode/AddSamplesTask;->setTaskThread(Ljava/lang/Thread;)V

    .line 62
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 64
    return-void

    .line 59
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/premiereclip/automode/AddSamplesTask$1;->this$0:Lcom/adobe/premiereclip/automode/AddSamplesTask;

    invoke-virtual {v1, v5}, Lcom/adobe/premiereclip/automode/AddSamplesTask;->setTaskThread(Ljava/lang/Thread;)V

    .line 62
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 63
    throw v0
.end method
