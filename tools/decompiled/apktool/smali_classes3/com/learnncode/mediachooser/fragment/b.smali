.class Lcom/learnncode/mediachooser/fragment/b;
.super Ljava/lang/Object;
.source "BucketImageFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/learnncode/mediachooser/fragment/a;


# direct methods
.method constructor <init>(Lcom/learnncode/mediachooser/fragment/a;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/learnncode/mediachooser/fragment/b;->a:Lcom/learnncode/mediachooser/fragment/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    const/4 v4, 0x1

    .line 110
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/learnncode/mediachooser/a;

    .line 111
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/learnncode/mediachooser/fragment/b;->a:Lcom/learnncode/mediachooser/fragment/a;

    invoke-virtual {v2}, Lcom/learnncode/mediachooser/fragment/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    const-string/jumbo v2, "name"

    iget-object v3, v0, Lcom/learnncode/mediachooser/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string/jumbo v2, "bucketId"

    iget v0, v0, Lcom/learnncode/mediachooser/a;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string/jumbo v0, "image"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    const-string/jumbo v0, "isFromBucket"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    const-string/jumbo v0, "previousActivityName"

    iget-object v2, p0, Lcom/learnncode/mediachooser/fragment/b;->a:Lcom/learnncode/mediachooser/fragment/a;

    invoke-virtual {v2}, Lcom/learnncode/mediachooser/fragment/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/learnncode/mediachooser/l;->bucket_view_photo_activity:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/b;->a:Lcom/learnncode/mediachooser/fragment/a;

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/fragment/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 118
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/b;->a:Lcom/learnncode/mediachooser/fragment/a;

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/fragment/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/learnncode/mediachooser/g;->push_left_in:I

    sget v2, Lcom/learnncode/mediachooser/g;->push_left_out:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 119
    return-void
.end method
