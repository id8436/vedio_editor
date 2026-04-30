.class Lcom/learnncode/mediachooser/fragment/g;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/learnncode/mediachooser/fragment/VideoFragment;


# direct methods
.method constructor <init>(Lcom/learnncode/mediachooser/fragment/VideoFragment;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/learnncode/mediachooser/fragment/g;->a:Lcom/learnncode/mediachooser/fragment/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/learnncode/mediachooser/a/b;

    .line 207
    invoke-virtual {v0, p3}, Lcom/learnncode/mediachooser/a/b;->a(I)Lcom/learnncode/mediachooser/e;

    move-result-object v0

    .line 208
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/learnncode/mediachooser/fragment/g;->a:Lcom/learnncode/mediachooser/fragment/VideoFragment;

    invoke-virtual {v2}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/learnncode/mediachooser/activity/ClipViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    const-string/jumbo v2, "videoPlayUri"

    iget-object v0, v0, Lcom/learnncode/mediachooser/e;->c:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 210
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/g;->a:Lcom/learnncode/mediachooser/fragment/VideoFragment;

    invoke-virtual {v0, v1}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->startActivity(Landroid/content/Intent;)V

    .line 211
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/g;->a:Lcom/learnncode/mediachooser/fragment/VideoFragment;

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/learnncode/mediachooser/g;->push_left_in:I

    sget v2, Lcom/learnncode/mediachooser/g;->push_left_out:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 212
    const/4 v0, 0x1

    return v0
.end method
