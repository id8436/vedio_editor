.class Lcom/learnncode/mediachooser/fragment/d;
.super Ljava/lang/Object;
.source "BucketVideoFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/learnncode/mediachooser/fragment/c;


# direct methods
.method constructor <init>(Lcom/learnncode/mediachooser/fragment/c;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/learnncode/mediachooser/fragment/d;->a:Lcom/learnncode/mediachooser/fragment/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/learnncode/mediachooser/a;

    .line 114
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/learnncode/mediachooser/fragment/d;->a:Lcom/learnncode/mediachooser/fragment/c;

    invoke-virtual {v2}, Lcom/learnncode/mediachooser/fragment/c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    const-string/jumbo v2, "name"

    iget-object v3, v0, Lcom/learnncode/mediachooser/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string/jumbo v2, "bucketId"

    iget v0, v0, Lcom/learnncode/mediachooser/a;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string/jumbo v0, "isFromBucket"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    const-string/jumbo v0, "previousActivityName"

    iget-object v2, p0, Lcom/learnncode/mediachooser/fragment/d;->a:Lcom/learnncode/mediachooser/fragment/c;

    invoke-virtual {v2}, Lcom/learnncode/mediachooser/fragment/c;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/learnncode/mediachooser/l;->bucket_view_video_activity:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/d;->a:Lcom/learnncode/mediachooser/fragment/c;

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/fragment/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 120
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/d;->a:Lcom/learnncode/mediachooser/fragment/c;

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/fragment/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/learnncode/mediachooser/g;->push_left_in:I

    sget v2, Lcom/learnncode/mediachooser/g;->push_left_out:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 122
    return-void
.end method
