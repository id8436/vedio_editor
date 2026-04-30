.class public Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;
.super Landroid/widget/VideoView;
.source "CustomVideoView.java"


# instance fields
.field private mListener:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView$PlayPauseListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    .line 48
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;->mListener:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView$PlayPauseListener;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;->mListener:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView$PlayPauseListener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView$PlayPauseListener;->onPauseClip()V

    .line 51
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 64
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;->mListener:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView$PlayPauseListener;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;->mListener:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView$PlayPauseListener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView$PlayPauseListener;->onSeek()V

    .line 67
    :cond_0
    return-void
.end method

.method public setPlayPauseListener(Lcom/adobe/premiereclip/clipPlayer/CustomVideoView$PlayPauseListener;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;->mListener:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView$PlayPauseListener;

    .line 43
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    .line 56
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;->mListener:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView$PlayPauseListener;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;->mListener:Lcom/adobe/premiereclip/clipPlayer/CustomVideoView$PlayPauseListener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView$PlayPauseListener;->onPlayClip()V

    .line 59
    :cond_0
    return-void
.end method
