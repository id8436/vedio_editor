.class Lcom/learnncode/mediachooser/activity/c;
.super Ljava/lang/Object;
.source "ClipViewActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/learnncode/mediachooser/activity/ClipViewActivity;


# direct methods
.method constructor <init>(Lcom/learnncode/mediachooser/activity/ClipViewActivity;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/learnncode/mediachooser/activity/c;->a:Lcom/learnncode/mediachooser/activity/ClipViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/c;->a:Lcom/learnncode/mediachooser/activity/ClipViewActivity;

    iget-object v0, v0, Lcom/learnncode/mediachooser/activity/ClipViewActivity;->c:Lcom/learnncode/mediachooser/m;

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/m;->e()V

    .line 110
    return-void
.end method
