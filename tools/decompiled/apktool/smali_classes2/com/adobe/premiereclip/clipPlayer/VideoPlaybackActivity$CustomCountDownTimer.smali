.class Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "VideoPlaybackActivity.java"


# instance fields
.field private fadeOut:Z

.field final synthetic this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;JJ)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    .line 602
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 603
    return-void
.end method


# virtual methods
.method public cancelTimer()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 630
    invoke-virtual {p0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->cancel()V

    .line 631
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$1500(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 632
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$1600(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 633
    return-void
.end method

.method public isFadeOut()Z
    .locals 1

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->fadeOut:Z

    return v0
.end method

.method public onFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 619
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$1500(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$1500(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$1500(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 623
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$1600(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 624
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$1600(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 626
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->fadeOut:Z

    .line 627
    return-void
.end method

.method public onTick(J)V
    .locals 5

    .prologue
    .line 607
    const-wide/16 v0, 0x3e8

    .line 608
    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 609
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->fadeOut:Z

    .line 610
    iget-object v2, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$1500(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    long-to-float v3, p1

    long-to-float v4, v0

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 611
    iget-object v2, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->this$0:Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;->access$1600(Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v2

    long-to-float v3, p1

    long-to-float v0, v0

    div-float v0, v3, v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 615
    :goto_0
    return-void

    .line 613
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity$CustomCountDownTimer;->fadeOut:Z

    goto :goto_0
.end method
