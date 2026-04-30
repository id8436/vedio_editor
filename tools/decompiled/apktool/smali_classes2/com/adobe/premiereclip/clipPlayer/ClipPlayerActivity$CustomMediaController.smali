.class Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomMediaController;
.super Landroid/widget/MediaController;
.source "ClipPlayerActivity.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 415
    iput-object p1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomMediaController;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    .line 416
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    .line 417
    return-void
.end method

.method public constructor <init>(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomMediaController;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    .line 412
    invoke-direct {p0, p2, p3}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 413
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 421
    invoke-super {p0, p1}, Landroid/widget/MediaController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 422
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomMediaController;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->onBackPressed()V

    .line 425
    :cond_0
    return v1
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomMediaController;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->access$700(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    invoke-super {p0}, Landroid/widget/MediaController;->hide()V

    .line 439
    :cond_0
    return-void
.end method

.method public hideImmediate()V
    .locals 0

    .prologue
    .line 446
    invoke-super {p0}, Landroid/widget/MediaController;->hide()V

    .line 447
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 430
    return-void
.end method

.method public show(I)V
    .locals 0

    .prologue
    .line 433
    return-void
.end method

.method public showIndefinite()V
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/MediaController;->show(I)V

    .line 443
    return-void
.end method
