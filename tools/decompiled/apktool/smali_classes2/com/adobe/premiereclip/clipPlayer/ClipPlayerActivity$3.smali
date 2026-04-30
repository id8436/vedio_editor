.class Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$3;
.super Ljava/lang/Object;
.source "ClipPlayerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$3;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 146
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 166
    :cond_0
    :goto_0
    return v0

    .line 148
    :sswitch_0
    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$3;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->access$300(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)V

    goto :goto_0

    .line 152
    :sswitch_1
    iget-object v1, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$3;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->access$400(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)V

    goto :goto_0

    .line 156
    :sswitch_2
    iget-object v2, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$3;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->access$300(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)V

    .line 157
    iget-object v2, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$3;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->access$200(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$3;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->access$100(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/clipPlayer/CustomVideoView;->pause()V

    .line 159
    iget-object v2, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$3;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->access$500(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomCountDownTimer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$CustomCountDownTimer;->cancel()V

    .line 160
    iget-object v2, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$3;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->access$600(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;)V

    .line 161
    iget-object v2, p0, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity$3;->this$0:Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;

    invoke-static {v2, v1}, Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;->access$202(Lcom/adobe/premiereclip/clipPlayer/ClipPlayerActivity;Z)Z

    goto :goto_0

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x2bd -> :sswitch_1
        0x2be -> :sswitch_0
    .end sparse-switch
.end method
