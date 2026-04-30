.class Lcom/adobe/premiereclip/editor/EditorActivity$13;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V
    .locals 0

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$13;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7

    .prologue
    const v6, 0x3eaaaaab

    .line 1065
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$13;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$1200(Lcom/adobe/premiereclip/editor/EditorActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$13;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$1300(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;->cancelTimer()V

    .line 1067
    int-to-float v0, p2

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    .line 1068
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$13;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$000(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationUs()J

    move-result-wide v2

    long-to-float v1, v2

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 1069
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity$13;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$500(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/Editor;->setSequencePlayback()V

    .line 1070
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/EditorActivity$13;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v4}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$1400(Lcom/adobe/premiereclip/editor/EditorActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 1071
    long-to-float v4, v2

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    cmpg-float v4, v4, v6

    if-gez v4, :cond_1

    .line 1072
    const-string/jumbo v0, "SeekRestrict"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " not seeking timeElapsed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_0
    :goto_0
    return-void

    .line 1075
    :cond_1
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity$13;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$1402(Lcom/adobe/premiereclip/editor/EditorActivity;J)J

    .line 1076
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity$13;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$1500(Lcom/adobe/premiereclip/editor/EditorActivity;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity$13;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$1500(Lcom/adobe/premiereclip/editor/EditorActivity;)J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x7d00

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 1077
    :cond_2
    const-string/jumbo v2, "SeekRestrict"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " seeking offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/EditorActivity$13;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v4}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$1500(Lcom/adobe/premiereclip/editor/EditorActivity;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity$13;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v2, v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$1502(Lcom/adobe/premiereclip/editor/EditorActivity;J)J

    .line 1083
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity$13;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$500(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/Editor;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/adobe/premiereclip/editor/Editor;->seekToSequenceTime(J)V

    goto :goto_0

    .line 1080
    :cond_3
    const-string/jumbo v2, "SeekRestrict"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " not seeking offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$13;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$1500(Lcom/adobe/premiereclip/editor/EditorActivity;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1089
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$13;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$1202(Lcom/adobe/premiereclip/editor/EditorActivity;Z)Z

    .line 1090
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$13;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$1402(Lcom/adobe/premiereclip/editor/EditorActivity;J)J

    .line 1091
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$13;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$1502(Lcom/adobe/premiereclip/editor/EditorActivity;J)J

    .line 1092
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$13;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$500(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/Editor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/Editor;->setScrubbing(Z)V

    .line 1093
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$13;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$1300(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;->cancelTimer()V

    .line 1094
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1098
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$13;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0, v4}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$1202(Lcom/adobe/premiereclip/editor/EditorActivity;Z)Z

    .line 1099
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    .line 1100
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$13;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$000(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationUs()J

    move-result-wide v2

    long-to-float v1, v2

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 1101
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity$13;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$500(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/Editor;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/adobe/premiereclip/editor/Editor;->setScrubbing(Z)V

    .line 1102
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity$13;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$500(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/Editor;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/adobe/premiereclip/editor/Editor;->seekToSequenceTime(J)V

    .line 1103
    return-void
.end method
