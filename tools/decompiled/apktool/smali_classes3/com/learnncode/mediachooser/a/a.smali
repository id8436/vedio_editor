.class public Lcom/learnncode/mediachooser/a/a;
.super Landroid/widget/ArrayAdapter;
.source "BucketGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/learnncode/mediachooser/a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/learnncode/mediachooser/fragment/c;

.field b:Landroid/view/LayoutInflater;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/learnncode/mediachooser/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/learnncode/mediachooser/a;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 60
    iput-object p3, p0, Lcom/learnncode/mediachooser/a/a;->d:Ljava/util/ArrayList;

    .line 61
    iput-object p1, p0, Lcom/learnncode/mediachooser/a/a;->c:Landroid/content/Context;

    .line 62
    iput-boolean p4, p0, Lcom/learnncode/mediachooser/a/a;->e:Z

    .line 63
    iget-object v0, p0, Lcom/learnncode/mediachooser/a/a;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/learnncode/mediachooser/a/a;->b:Landroid/view/LayoutInflater;

    .line 64
    return-void
.end method


# virtual methods
.method public a(I)Lcom/learnncode/mediachooser/a;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/learnncode/mediachooser/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/learnncode/mediachooser/a;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/learnncode/mediachooser/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/learnncode/mediachooser/a/a;->a(I)Lcom/learnncode/mediachooser/a;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 77
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 102
    if-nez p2, :cond_1

    .line 104
    iget-object v0, p0, Lcom/learnncode/mediachooser/a/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/learnncode/mediachooser/a/a;->f:I

    .line 106
    iget-object v0, p0, Lcom/learnncode/mediachooser/a/a;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/learnncode/mediachooser/k;->view_grid_bucket_item_media_chooser:I

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 108
    new-instance v1, Lcom/learnncode/mediachooser/c/b;

    invoke-direct {v1}, Lcom/learnncode/mediachooser/c/b;-><init>()V

    .line 109
    sget v0, Lcom/learnncode/mediachooser/j;->imageViewFromMediaChooserBucketRowView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lcom/learnncode/mediachooser/c/b;->a(Landroid/widget/ImageView;)V

    .line 110
    sget v0, Lcom/learnncode/mediachooser/j;->nameTextViewFromMediaChooserBucketRowView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/learnncode/mediachooser/c/b;->a(Landroid/widget/TextView;)V

    .line 112
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 117
    :goto_0
    iget-boolean v0, p0, Lcom/learnncode/mediachooser/a/a;->e:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v1}, Lcom/learnncode/mediachooser/c/b;->b()Landroid/widget/ImageView;

    move-result-object v0

    sget v2, Lcom/learnncode/mediachooser/i;->ic_loading:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/learnncode/mediachooser/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/learnncode/mediachooser/a;

    iget-object v0, v0, Lcom/learnncode/mediachooser/a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/learnncode/mediachooser/c/b;->a(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Lcom/learnncode/mediachooser/c/b;->b()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 123
    iget v2, p0, Lcom/learnncode/mediachooser/a/a;->f:I

    add-int/lit8 v2, v2, -0x1e

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 124
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/lit8 v2, v2, -0x50

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 126
    invoke-virtual {v1}, Lcom/learnncode/mediachooser/c/b;->b()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-boolean v2, p0, Lcom/learnncode/mediachooser/a/a;->e:Z

    if-eqz v2, :cond_2

    .line 130
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/learnncode/mediachooser/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/learnncode/mediachooser/a;

    iget-object v0, v0, Lcom/learnncode/mediachooser/a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0, v1}, Lcom/learnncode/mediachooser/b/m;->a(IILjava/lang/String;Lcom/learnncode/mediachooser/c/a;)V

    .line 137
    :goto_1
    invoke-virtual {v1}, Lcom/learnncode/mediachooser/c/b;->c()Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/learnncode/mediachooser/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/learnncode/mediachooser/a;

    iget-object v0, v0, Lcom/learnncode/mediachooser/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    return-object p2

    .line 115
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/learnncode/mediachooser/c/b;

    move-object v1, v0

    goto :goto_0

    .line 133
    :cond_2
    new-instance v2, Lcom/learnncode/mediachooser/b/a;

    iget-object v0, p0, Lcom/learnncode/mediachooser/a/a;->c:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/learnncode/mediachooser/c/b;->b()Landroid/widget/ImageView;

    move-result-object v3

    iget v4, p0, Lcom/learnncode/mediachooser/a/a;->f:I

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v2, v0, v3, v4}, Lcom/learnncode/mediachooser/b/a;-><init>(Landroid/content/Context;Landroid/widget/ImageView;I)V

    .line 134
    sget-object v3, Lcom/learnncode/mediachooser/b/b;->a:Ljava/util/concurrent/Executor;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/learnncode/mediachooser/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/learnncode/mediachooser/a;

    iget-object v0, v0, Lcom/learnncode/mediachooser/a;->c:Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/learnncode/mediachooser/b/a;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/learnncode/mediachooser/b/b;

    goto :goto_1
.end method
