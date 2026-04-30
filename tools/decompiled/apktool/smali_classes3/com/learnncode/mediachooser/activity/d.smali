.class Lcom/learnncode/mediachooser/activity/d;
.super Ljava/lang/Object;
.source "HomeFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;


# direct methods
.method constructor <init>(Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/learnncode/mediachooser/activity/d;->a:Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/d;->a:Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;

    invoke-static {v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->a(Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/d;->a:Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;

    invoke-static {v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->b(Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;)Lcom/learnncode/mediachooser/fragment/VideoFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/d;->a:Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;

    invoke-static {v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->b(Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;)Lcom/learnncode/mediachooser/fragment/VideoFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->b()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/d;->a:Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;

    invoke-static {v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->b(Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;)Lcom/learnncode/mediachooser/fragment/VideoFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/d;->a:Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;

    invoke-static {v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->c(Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;)V

    .line 157
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/d;->a:Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->finish()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/d;->a:Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;

    invoke-static {v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->d(Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;)Lcom/learnncode/mediachooser/fragment/ImageFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/d;->a:Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;

    invoke-static {v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->d(Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;)Lcom/learnncode/mediachooser/fragment/ImageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/fragment/ImageFragment;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/d;->a:Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;

    invoke-static {v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->d(Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;)Lcom/learnncode/mediachooser/fragment/ImageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/fragment/ImageFragment;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/d;->a:Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;

    invoke-static {v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->e(Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;)V

    .line 163
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/d;->a:Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->finish()V

    .line 174
    :cond_1
    :goto_0
    return-void

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/d;->a:Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;

    invoke-static {v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->f(Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/d;->a:Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->closeAndGoBack()V

    goto :goto_0

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/d;->a:Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;

    invoke-static {v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->g(Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/d;->a:Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;

    invoke-static {v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->h(Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;)V

    .line 171
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/d;->a:Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->finish()V

    .line 172
    iget-object v0, p0, Lcom/learnncode/mediachooser/activity/d;->a:Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;

    sget v1, Lcom/learnncode/mediachooser/g;->push_right_in:I

    sget v2, Lcom/learnncode/mediachooser/g;->push_right_out:I

    invoke-virtual {v0, v1, v2}, Lcom/learnncode/mediachooser/activity/HomeFragmentActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method
