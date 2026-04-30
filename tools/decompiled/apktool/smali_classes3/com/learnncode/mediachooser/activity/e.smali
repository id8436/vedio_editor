.class Lcom/learnncode/mediachooser/activity/e;
.super Ljava/lang/Object;
.source "HomeFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;


# direct methods
.method constructor <init>(Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/learnncode/mediachooser/activity/e;->b:Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;

    iput-object p2, p0, Lcom/learnncode/mediachooser/activity/e;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 230
    invoke-static {}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file:///"

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/learnncode/mediachooser/activity/e;->b:Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;

    invoke-virtual {v1}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    .line 232
    const/4 v1, 0x0

    .line 233
    if-nez v1, :cond_0

    .line 234
    new-instance v1, Lcom/learnncode/mediachooser/fragment/VideoFragment;

    invoke-direct {v1}, Lcom/learnncode/mediachooser/fragment/VideoFragment;-><init>()V

    .line 235
    invoke-virtual {v1, v0}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->a(Ljava/lang/String;)V

    .line 240
    :goto_0
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/e;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 241
    return-void

    .line 238
    :cond_0
    invoke-virtual {v1, v0}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
