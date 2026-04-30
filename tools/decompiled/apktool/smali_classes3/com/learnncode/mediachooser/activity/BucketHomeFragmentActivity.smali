.class public Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BucketHomeFragmentActivity.java"


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->e:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->f:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->g:Landroid/os/Handler;

    .line 106
    new-instance v0, Lcom/learnncode/mediachooser/activity/a;

    invoke-direct {v0, p0}, Lcom/learnncode/mediachooser/activity/a;-><init>(Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;)V

    iput-object v0, p0, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->c:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public final closeAndGoBack()V
    .locals 0

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->onBackPressed()V

    .line 153
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 162
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_1

    .line 164
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 165
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->finish()V

    .line 166
    sget v0, Lcom/learnncode/mediachooser/g;->push_right_in:I

    sget v1, Lcom/learnncode/mediachooser/g;->push_right_out:I

    invoke-virtual {p0, v0, v1}, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->overridePendingTransition(II)V

    .line 168
    :cond_1
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 148
    sget v0, Lcom/learnncode/mediachooser/g;->push_right_in:I

    sget v1, Lcom/learnncode/mediachooser/g;->push_right_out:I

    invoke-virtual {p0, v0, v1}, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->overridePendingTransition(II)V

    .line 149
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->requestWindowFeature(I)Z

    .line 79
    sget v0, Lcom/learnncode/mediachooser/k;->activity_home_media_chooser:I

    invoke-virtual {p0, v0}, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->setContentView(I)V

    .line 81
    sget v0, Lcom/learnncode/mediachooser/j;->titleTextViewFromMediaChooserHeaderBar:I

    invoke-virtual {p0, v0}, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->b:Landroid/widget/TextView;

    .line 82
    sget v0, Lcom/learnncode/mediachooser/j;->backArrowImageViewFromMediaChooserHeaderView:I

    invoke-virtual {p0, v0}, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->c:Landroid/widget/Button;

    .line 83
    sget v0, Lcom/learnncode/mediachooser/j;->DummyButton:I

    invoke-virtual {p0, v0}, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->d:Landroid/widget/Button;

    .line 84
    sget v0, Lcom/learnncode/mediachooser/j;->media_chooser_add_cancel_layout:I

    invoke-virtual {p0, v0}, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 85
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "previousActivityName"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, p0, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "previousActivityName"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->d:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->requestLayout()V

    .line 92
    sget-boolean v1, Lcom/learnncode/mediachooser/d;->f:Z

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/learnncode/mediachooser/l;->bucket_view_photo_activity:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    sget v1, Lcom/learnncode/mediachooser/j;->media_chooser_video_image_frame:I

    new-instance v2, Lcom/learnncode/mediachooser/fragment/a;

    invoke-direct {v2}, Lcom/learnncode/mediachooser/fragment/a;-><init>()V

    const-string/jumbo v3, "imageFragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 95
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/learnncode/mediachooser/activity/BucketHomeFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/learnncode/mediachooser/l;->bucket_view_video_activity:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    sget v1, Lcom/learnncode/mediachooser/j;->media_chooser_video_image_frame:I

    new-instance v2, Lcom/learnncode/mediachooser/fragment/c;

    invoke-direct {v2}, Lcom/learnncode/mediachooser/fragment/c;-><init>()V

    const-string/jumbo v3, "videoFragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 100
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
