.class Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "EditorActivity.java"


# instance fields
.field private inFadeOutTime:Z

.field final synthetic this$0:Lcom/adobe/premiereclip/editor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/EditorActivity;JJ)V
    .locals 0

    .prologue
    .line 858
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    .line 859
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 860
    return-void
.end method


# virtual methods
.method public cancelTimer()V
    .locals 2

    .prologue
    .line 888
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;->cancel()V

    .line 889
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    const v1, 0x7f120116

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 890
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 891
    return-void
.end method

.method public isInFadeOutTime()Z
    .locals 1

    .prologue
    .line 894
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;->inFadeOutTime:Z

    return v0
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 879
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    const v1, 0x7f120116

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 880
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 881
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 883
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 884
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;->inFadeOutTime:Z

    .line 885
    return-void
.end method

.method public onTick(J)V
    .locals 5

    .prologue
    .line 864
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    const v1, 0x7f120116

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 865
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$500(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/Editor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/Editor;->getPlayerState()Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    move-result-object v1

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PAUSED:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    if-ne v1, v2, :cond_0

    .line 866
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;->cancelTimer()V

    .line 868
    :cond_0
    const-wide/16 v2, 0x3e8

    .line 869
    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    .line 870
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;->inFadeOutTime:Z

    .line 871
    long-to-float v1, p1

    long-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 875
    :goto_0
    return-void

    .line 873
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;->inFadeOutTime:Z

    goto :goto_0
.end method
