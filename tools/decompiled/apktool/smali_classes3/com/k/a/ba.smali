.class public Lcom/k/a/ba;
.super Ljava/lang/Object;
.source "RequestCreator.java"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final b:Lcom/k/a/ak;

.field private final c:Lcom/k/a/az;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/k/a/ba;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/k/a/ba;->f:Z

    .line 79
    iput-object v2, p0, Lcom/k/a/ba;->b:Lcom/k/a/ak;

    .line 80
    new-instance v0, Lcom/k/a/az;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/k/a/az;-><init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/k/a/ba;->c:Lcom/k/a/az;

    .line 81
    return-void
.end method

.method constructor <init>(Lcom/k/a/ak;Landroid/net/Uri;I)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/k/a/ba;->f:Z

    .line 70
    iget-boolean v0, p1, Lcom/k/a/ak;->m:Z

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Picasso instance already shut down. Cannot submit new requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    iput-object p1, p0, Lcom/k/a/ba;->b:Lcom/k/a/ak;

    .line 75
    new-instance v0, Lcom/k/a/az;

    iget-object v1, p1, Lcom/k/a/ak;->j:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, p2, p3, v1}, Lcom/k/a/az;-><init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/k/a/ba;->c:Lcom/k/a/az;

    .line 76
    return-void
.end method

.method private a(J)Lcom/k/a/ax;
    .locals 7

    .prologue
    .line 684
    sget-object v0, Lcom/k/a/ba;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 686
    iget-object v1, p0, Lcom/k/a/ba;->c:Lcom/k/a/az;

    invoke-virtual {v1}, Lcom/k/a/az;->d()Lcom/k/a/ax;

    move-result-object v1

    .line 687
    iput v0, v1, Lcom/k/a/ax;->a:I

    .line 688
    iput-wide p1, v1, Lcom/k/a/ax;->b:J

    .line 690
    iget-object v2, p0, Lcom/k/a/ba;->b:Lcom/k/a/ak;

    iget-boolean v2, v2, Lcom/k/a/ak;->l:Z

    .line 691
    if-eqz v2, :cond_0

    .line 692
    const-string/jumbo v3, "Main"

    const-string/jumbo v4, "created"

    invoke-virtual {v1}, Lcom/k/a/ax;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/k/a/ax;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/k/a/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :cond_0
    iget-object v3, p0, Lcom/k/a/ba;->b:Lcom/k/a/ak;

    invoke-virtual {v3, v1}, Lcom/k/a/ak;->a(Lcom/k/a/ax;)Lcom/k/a/ax;

    move-result-object v3

    .line 696
    if-eq v3, v1, :cond_1

    .line 698
    iput v0, v3, Lcom/k/a/ax;->a:I

    .line 699
    iput-wide p1, v3, Lcom/k/a/ax;->b:J

    .line 701
    if-eqz v2, :cond_1

    .line 702
    const-string/jumbo v0, "Main"

    const-string/jumbo v1, "changed"

    invoke-virtual {v3}, Lcom/k/a/ax;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lcom/k/a/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    :cond_1
    return-object v3
.end method

.method private d()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 675
    iget v0, p0, Lcom/k/a/ba;->g:I

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/k/a/ba;->b:Lcom/k/a/ak;

    iget-object v0, v0, Lcom/k/a/ak;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/k/a/ba;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 678
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/k/a/ba;->k:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/k/a/ba;
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/k/a/ba;->e:Z

    .line 200
    return-object p0
.end method

.method public a(I)Lcom/k/a/ba;
    .locals 2

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/k/a/ba;->f:Z

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already explicitly declared as no placeholder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    if-nez p1, :cond_1

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Placeholder image resource invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/k/a/ba;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Placeholder image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_2
    iput p1, p0, Lcom/k/a/ba;->g:I

    .line 117
    return-object p0
.end method

.method public a(II)Lcom/k/a/ba;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/k/a/ba;->c:Lcom/k/a/az;

    invoke-virtual {v0, p1, p2}, Lcom/k/a/az;->a(II)Lcom/k/a/az;

    .line 220
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/k/a/ba;
    .locals 2

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/k/a/ba;->f:Z

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already explicitly declared as no placeholder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    iget v0, p0, Lcom/k/a/ba;->g:I

    if-eqz v0, :cond_1

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Placeholder image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    iput-object p1, p0, Lcom/k/a/ba;->k:Landroid/graphics/drawable/Drawable;

    .line 136
    return-object p0
.end method

.method public a(Lcom/k/a/bi;)Lcom/k/a/ba;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/k/a/ba;->c:Lcom/k/a/az;

    invoke-virtual {v0, p1}, Lcom/k/a/az;->a(Lcom/k/a/bi;)Lcom/k/a/az;

    .line 303
    return-object p0
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/k/a/ba;->a(Landroid/widget/ImageView;Lcom/k/a/m;)V

    .line 602
    return-void
.end method

.method public a(Landroid/widget/ImageView;Lcom/k/a/m;)V
    .locals 12

    .prologue
    .line 614
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 615
    invoke-static {}, Lcom/k/a/bm;->a()V

    .line 617
    if-nez p1, :cond_0

    .line 618
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Target must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_0
    iget-object v2, p0, Lcom/k/a/ba;->c:Lcom/k/a/az;

    invoke-virtual {v2}, Lcom/k/a/az;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 622
    iget-object v0, p0, Lcom/k/a/ba;->b:Lcom/k/a/ak;

    invoke-virtual {v0, p1}, Lcom/k/a/ak;->a(Landroid/widget/ImageView;)V

    .line 623
    iget-boolean v0, p0, Lcom/k/a/ba;->f:Z

    if-eqz v0, :cond_1

    .line 624
    invoke-direct {p0}, Lcom/k/a/ba;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/k/a/au;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 672
    :cond_1
    :goto_0
    return-void

    .line 629
    :cond_2
    iget-boolean v2, p0, Lcom/k/a/ba;->e:Z

    if-eqz v2, :cond_7

    .line 630
    iget-object v2, p0, Lcom/k/a/ba;->c:Lcom/k/a/az;

    invoke-virtual {v2}, Lcom/k/a/az;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 631
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Fit cannot be used with resize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    .line 634
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    .line 635
    if-eqz v2, :cond_4

    if-nez v3, :cond_6

    .line 636
    :cond_4
    iget-boolean v0, p0, Lcom/k/a/ba;->f:Z

    if-eqz v0, :cond_5

    .line 637
    invoke-direct {p0}, Lcom/k/a/ba;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/k/a/au;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 639
    :cond_5
    iget-object v0, p0, Lcom/k/a/ba;->b:Lcom/k/a/ak;

    new-instance v1, Lcom/k/a/q;

    invoke-direct {v1, p0, p1, p2}, Lcom/k/a/q;-><init>(Lcom/k/a/ba;Landroid/widget/ImageView;Lcom/k/a/m;)V

    invoke-virtual {v0, p1, v1}, Lcom/k/a/ak;->a(Landroid/widget/ImageView;Lcom/k/a/q;)V

    goto :goto_0

    .line 642
    :cond_6
    iget-object v4, p0, Lcom/k/a/ba;->c:Lcom/k/a/az;

    invoke-virtual {v4, v2, v3}, Lcom/k/a/az;->a(II)Lcom/k/a/az;

    .line 645
    :cond_7
    invoke-direct {p0, v0, v1}, Lcom/k/a/ba;->a(J)Lcom/k/a/ax;

    move-result-object v10

    .line 646
    invoke-static {v10}, Lcom/k/a/bm;->a(Lcom/k/a/ax;)Ljava/lang/String;

    move-result-object v8

    .line 648
    iget v0, p0, Lcom/k/a/ba;->i:I

    invoke-static {v0}, Lcom/k/a/af;->a(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 649
    iget-object v0, p0, Lcom/k/a/ba;->b:Lcom/k/a/ak;

    invoke-virtual {v0, v8}, Lcom/k/a/ak;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 650
    if-eqz v2, :cond_9

    .line 651
    iget-object v0, p0, Lcom/k/a/ba;->b:Lcom/k/a/ak;

    invoke-virtual {v0, p1}, Lcom/k/a/ak;->a(Landroid/widget/ImageView;)V

    .line 652
    iget-object v0, p0, Lcom/k/a/ba;->b:Lcom/k/a/ak;

    iget-object v1, v0, Lcom/k/a/ak;->c:Landroid/content/Context;

    sget-object v3, Lcom/k/a/aq;->a:Lcom/k/a/aq;

    iget-boolean v4, p0, Lcom/k/a/ba;->d:Z

    iget-object v0, p0, Lcom/k/a/ba;->b:Lcom/k/a/ak;

    iget-boolean v5, v0, Lcom/k/a/ak;->k:Z

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/k/a/au;->a(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/k/a/aq;ZZ)V

    .line 653
    iget-object v0, p0, Lcom/k/a/ba;->b:Lcom/k/a/ak;

    iget-boolean v0, v0, Lcom/k/a/ak;->l:Z

    if-eqz v0, :cond_8

    .line 654
    const-string/jumbo v0, "Main"

    const-string/jumbo v1, "completed"

    invoke-virtual {v10}, Lcom/k/a/ax;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/k/a/aq;->a:Lcom/k/a/aq;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/k/a/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :cond_8
    if-eqz p2, :cond_1

    .line 657
    invoke-interface {p2}, Lcom/k/a/m;->a()V

    goto/16 :goto_0

    .line 663
    :cond_9
    iget-boolean v0, p0, Lcom/k/a/ba;->f:Z

    if-eqz v0, :cond_a

    .line 664
    invoke-direct {p0}, Lcom/k/a/ba;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/k/a/au;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 667
    :cond_a
    new-instance v0, Lcom/k/a/aa;

    iget-object v1, p0, Lcom/k/a/ba;->b:Lcom/k/a/ak;

    iget v4, p0, Lcom/k/a/ba;->i:I

    iget v5, p0, Lcom/k/a/ba;->j:I

    iget v6, p0, Lcom/k/a/ba;->h:I

    iget-object v7, p0, Lcom/k/a/ba;->l:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/k/a/ba;->m:Ljava/lang/Object;

    iget-boolean v11, p0, Lcom/k/a/ba;->d:Z

    move-object v2, p1

    move-object v3, v10

    move-object v10, p2

    invoke-direct/range {v0 .. v11}, Lcom/k/a/aa;-><init>(Lcom/k/a/ak;Landroid/widget/ImageView;Lcom/k/a/ax;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lcom/k/a/m;Z)V

    .line 671
    iget-object v1, p0, Lcom/k/a/ba;->b:Lcom/k/a/ak;

    invoke-virtual {v1, v0}, Lcom/k/a/ak;->a(Lcom/k/a/a;)V

    goto/16 :goto_0
.end method

.method b()Lcom/k/a/ba;
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/k/a/ba;->e:Z

    .line 206
    return-object p0
.end method

.method public c()Lcom/k/a/ba;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/k/a/ba;->c:Lcom/k/a/az;

    invoke-virtual {v0}, Lcom/k/a/az;->c()Lcom/k/a/az;

    .line 230
    return-object p0
.end method
