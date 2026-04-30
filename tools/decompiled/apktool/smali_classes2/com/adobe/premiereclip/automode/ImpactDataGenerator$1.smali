.class Lcom/adobe/premiereclip/automode/ImpactDataGenerator$1;
.super Ljava/lang/Object;
.source "ImpactDataGenerator.java"

# interfaces
.implements Lcom/adobe/premiereclip/automode/AudioDecodeTask$Listener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/automode/ImpactDataGenerator;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator$1;->this$0:Lcom/adobe/premiereclip/automode/ImpactDataGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator$1;->this$0:Lcom/adobe/premiereclip/automode/ImpactDataGenerator;

    invoke-static {v0}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->access$900(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;)Lcom/adobe/premiereclip/automode/AutoModeAudio$ImpactDataResults;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/adobe/premiereclip/automode/AutoModeAudio$ImpactDataResults;->onError(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public onInfo(II)V
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator$1;->this$0:Lcom/adobe/premiereclip/automode/ImpactDataGenerator;

    invoke-static {v0}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->access$600(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;)Lcom/adobe/premiereclip/automode/VeloBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/automode/VeloBridge;->InitForThreading(I)V

    .line 85
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator$1;->this$0:Lcom/adobe/premiereclip/automode/ImpactDataGenerator;

    iget-object v1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator$1;->this$0:Lcom/adobe/premiereclip/automode/ImpactDataGenerator;

    invoke-static {v1}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->access$600(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;)Lcom/adobe/premiereclip/automode/VeloBridge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/automode/VeloBridge;->GetSamplesPerSpectrogramBin()I

    move-result v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->access$702(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;I)I

    .line 86
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator$1;->this$0:Lcom/adobe/premiereclip/automode/ImpactDataGenerator;

    iget-object v1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator$1;->this$0:Lcom/adobe/premiereclip/automode/ImpactDataGenerator;

    invoke-static {v1}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->access$600(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;)Lcom/adobe/premiereclip/automode/VeloBridge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/automode/VeloBridge;->GetWindowBufferPadding()I

    move-result v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->access$802(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;I)I

    .line 87
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator$1;->this$0:Lcom/adobe/premiereclip/automode/ImpactDataGenerator;

    int-to-long v2, p2

    invoke-static {v0, v2, v3}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->access$402(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;J)J

    .line 88
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator$1;->this$0:Lcom/adobe/premiereclip/automode/ImpactDataGenerator;

    invoke-static {v0}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->access$600(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;)Lcom/adobe/premiereclip/automode/VeloBridge;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/automode/VeloBridge;->SetAudioDurationInSamples(I)V

    .line 89
    return-void
.end method

.method public onProgress(Lcom/adobe/premiereclip/automode/AudioSamples;)V
    .locals 7

    .prologue
    const/high16 v6, 0x42c80000    # 100.0f

    .line 73
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator$1;->this$0:Lcom/adobe/premiereclip/automode/ImpactDataGenerator;

    iget-object v1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator$1;->this$0:Lcom/adobe/premiereclip/automode/ImpactDataGenerator;

    invoke-static {v1}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->access$300(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;)J

    move-result-wide v2

    iget v1, p1, Lcom/adobe/premiereclip/automode/AudioSamples;->count:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->access$302(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;J)J

    .line 74
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator$1;->this$0:Lcom/adobe/premiereclip/automode/ImpactDataGenerator;

    iget-object v1, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator$1;->this$0:Lcom/adobe/premiereclip/automode/ImpactDataGenerator;

    invoke-static {v1}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->access$300(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;)J

    move-result-wide v2

    long-to-float v1, v2

    mul-float/2addr v1, v6

    iget-object v2, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator$1;->this$0:Lcom/adobe/premiereclip/automode/ImpactDataGenerator;

    invoke-static {v2}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->access$400(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;)J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->access$002(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;F)F

    .line 75
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator$1;->this$0:Lcom/adobe/premiereclip/automode/ImpactDataGenerator;

    invoke-static {v0}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->access$000(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;)F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator$1;->this$0:Lcom/adobe/premiereclip/automode/ImpactDataGenerator;

    invoke-static {v0, v6}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->access$002(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;F)F

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator$1;->this$0:Lcom/adobe/premiereclip/automode/ImpactDataGenerator;

    invoke-static {v0}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->access$100(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;)V

    .line 79
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator$1;->this$0:Lcom/adobe/premiereclip/automode/ImpactDataGenerator;

    invoke-static {v0, p1}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->access$500(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;Lcom/adobe/premiereclip/automode/AudioSamples;)V

    .line 80
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator$1;->this$0:Lcom/adobe/premiereclip/automode/ImpactDataGenerator;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->access$002(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;F)F

    .line 67
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator$1;->this$0:Lcom/adobe/premiereclip/automode/ImpactDataGenerator;

    invoke-static {v0}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->access$100(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;)V

    .line 68
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/ImpactDataGenerator$1;->this$0:Lcom/adobe/premiereclip/automode/ImpactDataGenerator;

    invoke-static {v0}, Lcom/adobe/premiereclip/automode/ImpactDataGenerator;->access$200(Lcom/adobe/premiereclip/automode/ImpactDataGenerator;)V

    .line 69
    return-void
.end method
