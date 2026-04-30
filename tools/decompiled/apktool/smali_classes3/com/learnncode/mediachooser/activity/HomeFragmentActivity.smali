.class public Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "HomeFragmentActivity.java"

# interfaces
.implements Lcom/learnncode/mediachooser/fragment/f;
.implements Lcom/learnncode/mediachooser/fragment/i;


# static fields
.field private static i:Landroid/net/Uri;


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Lcom/learnncode/mediachooser/fragment/ImageFragment;

.field private h:Lcom/learnncode/mediachooser/fragment/VideoFragment;

.field private final j:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->g:Lcom/learnncode/mediachooser/fragment/ImageFragment;

    .line 57
    iput-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->h:Lcom/learnncode/mediachooser/fragment/VideoFragment;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->j:Landroid/os/Handler;

    .line 149
    new-instance v0, Lcom/learnncode/mediachooser/activity/d;

    invoke-direct {v0, p0}, Lcom/learnncode/mediachooser/activity/d;-><init>(Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;)V

    iput-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->i:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic a(Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->d:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic b(Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;)Lcom/learnncode/mediachooser/fragment/VideoFragment;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->h:Lcom/learnncode/mediachooser/fragment/VideoFragment;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 82
    const-string/jumbo v1, "list"

    iget-object v2, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->h:Lcom/learnncode/mediachooser/fragment/VideoFragment;

    invoke-virtual {v2}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 83
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 84
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 88
    const-string/jumbo v1, "list"

    iget-object v2, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->g:Lcom/learnncode/mediachooser/fragment/ImageFragment;

    invoke-virtual {v2}, Lcom/learnncode/mediachooser/fragment/ImageFragment;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 89
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 90
    return-void
.end method

.method static synthetic c(Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->b()V

    return-void
.end method

.method static synthetic d(Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;)Lcom/learnncode/mediachooser/fragment/ImageFragment;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->g:Lcom/learnncode/mediachooser/fragment/ImageFragment;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 94
    const-string/jumbo v1, "fromCancel"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 96
    return-void
.end method

.method static synthetic e(Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->c()V

    return-void
.end method

.method static synthetic f(Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->e:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic h(Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->d()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 280
    if-eqz p1, :cond_2

    .line 281
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->d:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Add("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 291
    :cond_1
    :goto_0
    return-void

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 288
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 296
    if-eqz p1, :cond_2

    .line 297
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->d:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Add("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 307
    :cond_1
    :goto_0
    return-void

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 304
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public final closeAndGoBack()V
    .locals 0

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->onBackPressed()V

    .line 214
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1388

    const/4 v1, -0x1

    .line 220
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2

    .line 221
    if-ne p2, v1, :cond_1

    .line 223
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    sget-object v2, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->i:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 224
    invoke-static {p0}, Lcom/learnncode/mediachooser/d;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 226
    iget-object v1, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->j:Landroid/os/Handler;

    new-instance v2, Lcom/learnncode/mediachooser/activity/e;

    invoke-direct {v2, p0, v0}, Lcom/learnncode/mediachooser/activity/e;-><init>(Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    if-nez p2, :cond_0

    goto :goto_0

    .line 250
    :cond_2
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 251
    if-ne p2, v1, :cond_0

    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    sget-object v2, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->i:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 255
    invoke-static {p0}, Lcom/learnncode/mediachooser/d;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 257
    iget-object v1, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->j:Landroid/os/Handler;

    new-instance v2, Lcom/learnncode/mediachooser/activity/f;

    invoke-direct {v2, p0, v0}, Lcom/learnncode/mediachooser/activity/f;-><init>(Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final onBackPressed()V
    .locals 2

    .prologue
    .line 208
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 209
    sget v0, Lcom/learnncode/mediachooser/g;->push_right_in:I

    sget v1, Lcom/learnncode/mediachooser/g;->push_right_out:I

    invoke-virtual {p0, v0, v1}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->overridePendingTransition(II)V

    .line 210
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->requestWindowFeature(I)Z

    .line 103
    sget v0, Lcom/learnncode/mediachooser/k;->activity_home_media_chooser:I

    invoke-virtual {p0, v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->setContentView(I)V

    .line 105
    sget v0, Lcom/learnncode/mediachooser/j;->titleTextViewFromMediaChooserHeaderBar:I

    invoke-virtual {p0, v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->b:Landroid/widget/TextView;

    .line 106
    sget v0, Lcom/learnncode/mediachooser/j;->backArrowImageViewFromMediaChooserHeaderView:I

    invoke-virtual {p0, v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->c:Landroid/widget/Button;

    .line 107
    sget v0, Lcom/learnncode/mediachooser/j;->media_chooser_add_button:I

    invoke-virtual {p0, v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->d:Landroid/widget/Button;

    .line 108
    sget v0, Lcom/learnncode/mediachooser/j;->media_chooser_cancel_button:I

    invoke-virtual {p0, v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->e:Landroid/widget/Button;

    .line 109
    sget v0, Lcom/learnncode/mediachooser/j;->DummyButton:I

    invoke-virtual {p0, v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->f:Landroid/widget/Button;

    .line 110
    sget v0, Lcom/learnncode/mediachooser/j;->media_chooser_add_cancel_layout:I

    invoke-virtual {p0, v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 111
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->d:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 121
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "isFromBucket"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "previousActivityName"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "previousActivityName"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v1, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->f:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->requestLayout()V

    .line 125
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "image"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 127
    iget-object v2, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    const-string/jumbo v2, "name"

    invoke-virtual {p0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string/jumbo v2, "bucketId"

    invoke-virtual {p0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "bucketId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v2, Lcom/learnncode/mediachooser/fragment/ImageFragment;

    invoke-direct {v2}, Lcom/learnncode/mediachooser/fragment/ImageFragment;-><init>()V

    iput-object v2, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->g:Lcom/learnncode/mediachooser/fragment/ImageFragment;

    .line 131
    iget-object v2, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->g:Lcom/learnncode/mediachooser/fragment/ImageFragment;

    invoke-virtual {v2, v1}, Lcom/learnncode/mediachooser/fragment/ImageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 132
    sget v1, Lcom/learnncode/mediachooser/j;->media_chooser_video_image_frame:I

    iget-object v2, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->g:Lcom/learnncode/mediachooser/fragment/ImageFragment;

    const-string/jumbo v3, "imageFragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 133
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 137
    iget-object v2, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const-string/jumbo v2, "name"

    invoke-virtual {p0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string/jumbo v2, "bucketId"

    invoke-virtual {p0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "bucketId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v2, Lcom/learnncode/mediachooser/fragment/VideoFragment;

    invoke-direct {v2}, Lcom/learnncode/mediachooser/fragment/VideoFragment;-><init>()V

    iput-object v2, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->h:Lcom/learnncode/mediachooser/fragment/VideoFragment;

    .line 141
    iget-object v2, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->h:Lcom/learnncode/mediachooser/fragment/VideoFragment;

    invoke-virtual {v2, v1}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 142
    sget v1, Lcom/learnncode/mediachooser/j;->media_chooser_video_image_frame:I

    iget-object v2, p0, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->h:Lcom/learnncode/mediachooser/fragment/VideoFragment;

    const-string/jumbo v3, "videoFragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 143
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
