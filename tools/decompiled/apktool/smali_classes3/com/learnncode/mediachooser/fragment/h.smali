.class Lcom/learnncode/mediachooser/fragment/h;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/learnncode/mediachooser/fragment/VideoFragment;


# direct methods
.method constructor <init>(Lcom/learnncode/mediachooser/fragment/VideoFragment;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/learnncode/mediachooser/fragment/h;->a:Lcom/learnncode/mediachooser/fragment/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/learnncode/mediachooser/a/b;

    .line 222
    invoke-virtual {v0, p3}, Lcom/learnncode/mediachooser/a/b;->a(I)Lcom/learnncode/mediachooser/e;

    move-result-object v3

    .line 224
    iget-boolean v4, v3, Lcom/learnncode/mediachooser/e;->b:Z

    if-nez v4, :cond_3

    .line 225
    new-instance v4, Ljava/io/File;

    iget-object v5, v3, Lcom/learnncode/mediachooser/e;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v1}, Lcom/learnncode/mediachooser/d;->a(Ljava/io/File;Z)J

    move-result-wide v4

    .line 226
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 227
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/h;->a:Lcom/learnncode/mediachooser/fragment/VideoFragment;

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/learnncode/mediachooser/fragment/h;->a:Lcom/learnncode/mediachooser/fragment/VideoFragment;

    invoke-virtual {v3}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/learnncode/mediachooser/l;->file_size_exeeded:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/learnncode/mediachooser/d;->h:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/learnncode/mediachooser/fragment/h;->a:Lcom/learnncode/mediachooser/fragment/VideoFragment;

    invoke-virtual {v3}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/learnncode/mediachooser/l;->mb:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    sget v4, Lcom/learnncode/mediachooser/d;->b:I

    sget v5, Lcom/learnncode/mediachooser/d;->c:I

    if-ne v4, v5, :cond_3

    .line 232
    sget v0, Lcom/learnncode/mediachooser/d;->c:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 233
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/h;->a:Lcom/learnncode/mediachooser/fragment/VideoFragment;

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/learnncode/mediachooser/fragment/h;->a:Lcom/learnncode/mediachooser/fragment/VideoFragment;

    invoke-virtual {v3}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/learnncode/mediachooser/l;->max_limit_file:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/learnncode/mediachooser/d;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/learnncode/mediachooser/fragment/h;->a:Lcom/learnncode/mediachooser/fragment/VideoFragment;

    invoke-virtual {v3}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/learnncode/mediachooser/l;->file:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/h;->a:Lcom/learnncode/mediachooser/fragment/VideoFragment;

    invoke-virtual {v0}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/learnncode/mediachooser/fragment/h;->a:Lcom/learnncode/mediachooser/fragment/VideoFragment;

    invoke-virtual {v3}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/learnncode/mediachooser/l;->max_limit_file:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/learnncode/mediachooser/d;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/learnncode/mediachooser/fragment/h;->a:Lcom/learnncode/mediachooser/fragment/VideoFragment;

    invoke-virtual {v3}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/learnncode/mediachooser/l;->files:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 243
    :cond_3
    iget-boolean v4, v3, Lcom/learnncode/mediachooser/e;->b:Z

    if-nez v4, :cond_4

    :goto_1
    iput-boolean v1, v3, Lcom/learnncode/mediachooser/e;->b:Z

    .line 244
    invoke-virtual {v0}, Lcom/learnncode/mediachooser/a/b;->notifyDataSetChanged()V

    .line 246
    iget-boolean v0, v3, Lcom/learnncode/mediachooser/e;->b:Z

    if-eqz v0, :cond_5

    .line 247
    sget v0, Lcom/learnncode/mediachooser/i;->selection_media_border:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 248
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/h;->a:Lcom/learnncode/mediachooser/fragment/VideoFragment;

    invoke-static {v0}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->a(Lcom/learnncode/mediachooser/fragment/VideoFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, v3, Lcom/learnncode/mediachooser/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    sget v0, Lcom/learnncode/mediachooser/d;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/learnncode/mediachooser/d;->c:I

    .line 257
    :goto_2
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/h;->a:Lcom/learnncode/mediachooser/fragment/VideoFragment;

    invoke-static {v0}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->b(Lcom/learnncode/mediachooser/fragment/VideoFragment;)Lcom/learnncode/mediachooser/fragment/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/h;->a:Lcom/learnncode/mediachooser/fragment/VideoFragment;

    invoke-static {v0}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->b(Lcom/learnncode/mediachooser/fragment/VideoFragment;)Lcom/learnncode/mediachooser/fragment/i;

    move-result-object v0

    iget-object v1, p0, Lcom/learnncode/mediachooser/fragment/h;->a:Lcom/learnncode/mediachooser/fragment/VideoFragment;

    invoke-static {v1}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->a(Lcom/learnncode/mediachooser/fragment/VideoFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/learnncode/mediachooser/fragment/i;->b(I)V

    goto/16 :goto_0

    :cond_4
    move v1, v2

    .line 243
    goto :goto_1

    .line 252
    :cond_5
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 253
    iget-object v0, p0, Lcom/learnncode/mediachooser/fragment/h;->a:Lcom/learnncode/mediachooser/fragment/VideoFragment;

    invoke-static {v0}, Lcom/learnncode/mediachooser/fragment/VideoFragment;->a(Lcom/learnncode/mediachooser/fragment/VideoFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, v3, Lcom/learnncode/mediachooser/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 254
    sget v0, Lcom/learnncode/mediachooser/d;->c:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/learnncode/mediachooser/d;->c:I

    goto :goto_2
.end method
