.class public Lcom/learnncode/mediachooser/a/b;
.super Landroid/widget/ArrayAdapter;
.source "GridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/learnncode/mediachooser/e;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/learnncode/mediachooser/fragment/VideoFragment;

.field b:Landroid/view/LayoutInflater;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/learnncode/mediachooser/e;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/learnncode/mediachooser/e;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 55
    iput-object p3, p0, Lcom/learnncode/mediachooser/a/b;->d:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lcom/learnncode/mediachooser/a/b;->c:Landroid/content/Context;

    .line 57
    iput-boolean p4, p0, Lcom/learnncode/mediachooser/a/b;->f:Z

    .line 58
    iget-object v0, p0, Lcom/learnncode/mediachooser/a/b;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/learnncode/mediachooser/a/b;->b:Landroid/view/LayoutInflater;

    .line 59
    return-void
.end method


# virtual methods
.method public a(I)Lcom/learnncode/mediachooser/e;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/learnncode/mediachooser/a/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/learnncode/mediachooser/e;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/learnncode/mediachooser/a/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/learnncode/mediachooser/a/b;->a(I)Lcom/learnncode/mediachooser/e;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 72
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v6, -0x2

    const/4 v7, 0x0

    const/4 v5, 0x5

    .line 80
    if-nez p2, :cond_3

    .line 82
    iget-object v0, p0, Lcom/learnncode/mediachooser/a/b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/learnncode/mediachooser/a/b;->e:I

    .line 84
    iget-object v0, p0, Lcom/learnncode/mediachooser/a/b;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/learnncode/mediachooser/k;->view_grid_item_media_chooser:I

    invoke-virtual {v0, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 86
    new-instance v2, Lcom/learnncode/mediachooser/c/c;

    invoke-direct {v2}, Lcom/learnncode/mediachooser/c/c;-><init>()V

    .line 87
    sget v0, Lcom/learnncode/mediachooser/j;->checkTextViewFromMediaChooserGridItemRowView:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v0}, Lcom/learnncode/mediachooser/c/c;->a(Landroid/widget/CheckedTextView;)V

    .line 88
    sget v0, Lcom/learnncode/mediachooser/j;->imageViewFromMediaChooserGridItemRowView:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Lcom/learnncode/mediachooser/c/c;->a(Landroid/widget/ImageView;)V

    .line 90
    iget-boolean v0, p0, Lcom/learnncode/mediachooser/a/b;->f:Z

    if-eqz v0, :cond_0

    .line 92
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/learnncode/mediachooser/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 93
    iget-object v0, p0, Lcom/learnncode/mediachooser/a/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/learnncode/mediachooser/e;

    iget-object v0, v0, Lcom/learnncode/mediachooser/e;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/learnncode/mediachooser/h;->layout_unselected:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v0, v1

    .line 95
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 96
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 97
    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 98
    const/16 v5, 0x8

    invoke-virtual {v2}, Lcom/learnncode/mediachooser/c/c;->b()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 99
    const/4 v5, 0x7

    invoke-virtual {v2}, Lcom/learnncode/mediachooser/c/c;->b()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 100
    invoke-virtual {v3}, Landroid/widget/TextView;->bringToFront()V

    .line 101
    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-virtual {v2, v3}, Lcom/learnncode/mediachooser/c/c;->a(Landroid/widget/TextView;)V

    .line 104
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v1

    move-object v1, v2

    .line 109
    :goto_0
    iget-boolean v0, p0, Lcom/learnncode/mediachooser/a/b;->f:Z

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v1}, Lcom/learnncode/mediachooser/c/c;->b()Landroid/widget/ImageView;

    move-result-object v0

    sget v2, Lcom/learnncode/mediachooser/i;->ic_loading:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/learnncode/mediachooser/a/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/learnncode/mediachooser/e;

    iget-object v0, v0, Lcom/learnncode/mediachooser/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/learnncode/mediachooser/c/c;->a(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1}, Lcom/learnncode/mediachooser/c/c;->b()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 115
    iget v2, p0, Lcom/learnncode/mediachooser/a/b;->e:I

    add-int/lit8 v2, v2, -0x28

    div-int/lit8 v2, v2, 0x3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 116
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 118
    invoke-virtual {v1}, Lcom/learnncode/mediachooser/c/c;->b()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-boolean v2, p0, Lcom/learnncode/mediachooser/a/b;->f:Z

    if-eqz v2, :cond_4

    .line 124
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/learnncode/mediachooser/a/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/learnncode/mediachooser/e;

    iget-object v0, v0, Lcom/learnncode/mediachooser/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0, v1}, Lcom/learnncode/mediachooser/b/m;->a(IILjava/lang/String;Lcom/learnncode/mediachooser/c/a;)V

    .line 131
    :goto_1
    invoke-virtual {v1}, Lcom/learnncode/mediachooser/c/c;->c()Landroid/widget/CheckedTextView;

    move-result-object v2

    iget-object v0, p0, Lcom/learnncode/mediachooser/a/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/learnncode/mediachooser/e;

    iget-boolean v0, v0, Lcom/learnncode/mediachooser/e;->b:Z

    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 133
    iget-object v0, p0, Lcom/learnncode/mediachooser/a/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/learnncode/mediachooser/e;

    iget-boolean v0, v0, Lcom/learnncode/mediachooser/e;->b:Z

    if-eqz v0, :cond_5

    .line 134
    sget v0, Lcom/learnncode/mediachooser/i;->selection_media_border:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    :goto_2
    iget-boolean v0, p0, Lcom/learnncode/mediachooser/a/b;->f:Z

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {v1}, Lcom/learnncode/mediachooser/c/c;->d()Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/learnncode/mediachooser/a/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/learnncode/mediachooser/e;

    iget-object v0, v0, Lcom/learnncode/mediachooser/e;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :cond_2
    return-object p2

    .line 107
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/learnncode/mediachooser/c/c;

    move-object v1, v0

    goto/16 :goto_0

    .line 127
    :cond_4
    new-instance v2, Lcom/learnncode/mediachooser/b/a;

    iget-object v0, p0, Lcom/learnncode/mediachooser/a/b;->c:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/learnncode/mediachooser/c/c;->b()Landroid/widget/ImageView;

    move-result-object v3

    iget v4, p0, Lcom/learnncode/mediachooser/a/b;->e:I

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v2, v0, v3, v4}, Lcom/learnncode/mediachooser/b/a;-><init>(Landroid/content/Context;Landroid/widget/ImageView;I)V

    .line 128
    sget-object v3, Lcom/learnncode/mediachooser/b/b;->a:Ljava/util/concurrent/Executor;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/learnncode/mediachooser/a/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/learnncode/mediachooser/e;

    iget-object v0, v0, Lcom/learnncode/mediachooser/e;->a:Ljava/lang/String;

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/learnncode/mediachooser/b/a;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/learnncode/mediachooser/b/b;

    goto :goto_1

    .line 136
    :cond_5
    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2
.end method
