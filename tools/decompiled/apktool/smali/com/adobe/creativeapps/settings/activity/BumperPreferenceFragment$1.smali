.class Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$1;
.super Ljava/lang/Object;
.source "BumperPreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$1;->this$0:Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$1;->this$0:Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;

    iget-object v0, v0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->bumperPreview:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$1;->this$0:Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->access$000(Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;)V

    .line 108
    :goto_0
    return v2

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$1;->this$0:Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;

    iget-object v0, v0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->playButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$1;->this$0:Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;

    iget-object v0, v0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->bumperPreview:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 106
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$1;->this$0:Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;

    iget-object v0, v0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->bumperPreview:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_0
.end method
