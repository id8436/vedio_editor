.class public abstract Lcom/facebook/drawee/c/a;
.super Ljava/lang/Object;
.source "AbstractDraweeController.java"

# interfaces
.implements Lcom/facebook/drawee/b/c;
.implements Lcom/facebook/drawee/g/b;
.implements Lcom/facebook/drawee/h/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/drawee/b/c;",
        "Lcom/facebook/drawee/g/b;",
        "Lcom/facebook/drawee/h/a;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/facebook/drawee/b/d;

.field private final c:Lcom/facebook/drawee/b/a;

.field private final d:Ljava/util/concurrent/Executor;

.field private e:Lcom/facebook/drawee/b/f;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/facebook/drawee/g/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/facebook/drawee/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/drawee/c/i",
            "<TINFO;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private h:Lcom/facebook/drawee/c/j;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private i:Lcom/facebook/drawee/h/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private j:Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/Object;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private s:Lcom/facebook/e/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/e/f",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private u:Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private v:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/facebook/drawee/c/a;

    sput-object v0, Lcom/facebook/drawee/c/a;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/drawee/b/a;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {}, Lcom/facebook/drawee/b/d;->a()Lcom/facebook/drawee/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/c/a;->b:Lcom/facebook/drawee/b/d;

    .line 106
    iput-object p1, p0, Lcom/facebook/drawee/c/a;->c:Lcom/facebook/drawee/b/a;

    .line 107
    iput-object p2, p0, Lcom/facebook/drawee/c/a;->d:Ljava/util/concurrent/Executor;

    .line 108
    const/4 v0, 0x1

    invoke-direct {p0, p3, p4, v0}, Lcom/facebook/drawee/c/a;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 109
    return-void
.end method

.method static synthetic a(Lcom/facebook/drawee/c/a;)Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->v:Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/drawee/c/a;Ljava/lang/String;Lcom/facebook/e/f;FZ)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/drawee/c/a;->a(Ljava/lang/String;Lcom/facebook/e/f;FZ)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/drawee/c/a;Ljava/lang/String;Lcom/facebook/e/f;Ljava/lang/Object;FZZ)V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p6}, Lcom/facebook/drawee/c/a;->a(Ljava/lang/String;Lcom/facebook/e/f;Ljava/lang/Object;FZZ)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/drawee/c/a;Ljava/lang/String;Lcom/facebook/e/f;Ljava/lang/Throwable;Z)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/drawee/c/a;->a(Ljava/lang/String;Lcom/facebook/e/f;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/e/f;FZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/e/f",
            "<TT;>;FZ)V"
        }
    .end annotation

    .prologue
    .line 592
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/c/a;->a(Ljava/lang/String;Lcom/facebook/e/f;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 593
    const-string/jumbo v0, "ignore_old_datasource @ onProgress"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/drawee/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 594
    invoke-interface {p2}, Lcom/facebook/e/f;->h()Z

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    if-nez p4, :cond_0

    .line 598
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->i:Lcom/facebook/drawee/h/c;

    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Lcom/facebook/drawee/h/c;->a(FZ)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/facebook/e/f;Ljava/lang/Object;FZZ)V
    .locals 6
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/e/f",
            "<TT;>;TT;FZZ)V"
        }
    .end annotation

    .prologue
    .line 504
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/c/a;->a(Ljava/lang/String;Lcom/facebook/e/f;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 505
    const-string/jumbo v0, "ignore_old_datasource @ onNewResult"

    invoke-direct {p0, v0, p3}, Lcom/facebook/drawee/c/a;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 506
    invoke-virtual {p0, p3}, Lcom/facebook/drawee/c/a;->a(Ljava/lang/Object;)V

    .line 507
    invoke-interface {p2}, Lcom/facebook/e/f;->h()Z

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/facebook/drawee/c/a;->b:Lcom/facebook/drawee/b/d;

    if-eqz p5, :cond_3

    sget-object v0, Lcom/facebook/drawee/b/e;->k:Lcom/facebook/drawee/b/e;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/b/d;->a(Lcom/facebook/drawee/b/e;)V

    .line 515
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/facebook/drawee/c/a;->d(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 522
    iget-object v2, p0, Lcom/facebook/drawee/c/a;->t:Ljava/lang/Object;

    .line 523
    iget-object v3, p0, Lcom/facebook/drawee/c/a;->u:Landroid/graphics/drawable/Drawable;

    .line 524
    iput-object p3, p0, Lcom/facebook/drawee/c/a;->t:Ljava/lang/Object;

    .line 525
    iput-object v1, p0, Lcom/facebook/drawee/c/a;->u:Landroid/graphics/drawable/Drawable;

    .line 528
    if-eqz p5, :cond_4

    .line 529
    :try_start_1
    const-string/jumbo v0, "set_final_result @ onNewResult"

    invoke-direct {p0, v0, p3}, Lcom/facebook/drawee/c/a;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/c/a;->s:Lcom/facebook/e/f;

    .line 531
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->i:Lcom/facebook/drawee/h/c;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v4, p6}, Lcom/facebook/drawee/h/c;->a(Landroid/graphics/drawable/Drawable;FZ)V

    .line 532
    invoke-virtual {p0}, Lcom/facebook/drawee/c/a;->h()Lcom/facebook/drawee/c/i;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/facebook/drawee/c/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0}, Lcom/facebook/drawee/c/a;->p()Landroid/graphics/drawable/Animatable;

    move-result-object v5

    invoke-interface {v0, p1, v4, v5}, Lcom/facebook/drawee/c/i;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    :goto_2
    if-eqz v3, :cond_2

    if-eq v3, v1, :cond_2

    .line 542
    invoke-virtual {p0, v3}, Lcom/facebook/drawee/c/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 544
    :cond_2
    if-eqz v2, :cond_0

    if-eq v2, p3, :cond_0

    .line 545
    const-string/jumbo v0, "release_previous_result @ onNewResult"

    invoke-direct {p0, v0, v2}, Lcom/facebook/drawee/c/a;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 546
    invoke-virtual {p0, v2}, Lcom/facebook/drawee/c/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 510
    :cond_3
    sget-object v0, Lcom/facebook/drawee/b/e;->l:Lcom/facebook/drawee/b/e;

    goto :goto_1

    .line 516
    :catch_0
    move-exception v0

    .line 517
    const-string/jumbo v1, "drawable_failed @ onNewResult"

    invoke-direct {p0, v1, p3}, Lcom/facebook/drawee/c/a;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 518
    invoke-virtual {p0, p3}, Lcom/facebook/drawee/c/a;->a(Ljava/lang/Object;)V

    .line 519
    invoke-direct {p0, p1, p2, v0, p5}, Lcom/facebook/drawee/c/a;->a(Ljava/lang/String;Lcom/facebook/e/f;Ljava/lang/Throwable;Z)V

    goto :goto_0

    .line 535
    :cond_4
    :try_start_2
    const-string/jumbo v0, "set_intermediate_result @ onNewResult"

    invoke-direct {p0, v0, p3}, Lcom/facebook/drawee/c/a;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 536
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->i:Lcom/facebook/drawee/h/c;

    invoke-interface {v0, v1, p4, p6}, Lcom/facebook/drawee/h/c;->a(Landroid/graphics/drawable/Drawable;FZ)V

    .line 537
    invoke-virtual {p0}, Lcom/facebook/drawee/c/a;->h()Lcom/facebook/drawee/c/i;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/facebook/drawee/c/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, p1, v4}, Lcom/facebook/drawee/c/i;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 541
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_5

    if-eq v3, v1, :cond_5

    .line 542
    invoke-virtual {p0, v3}, Lcom/facebook/drawee/c/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 544
    :cond_5
    if-eqz v2, :cond_6

    if-eq v2, p3, :cond_6

    .line 545
    const-string/jumbo v1, "release_previous_result @ onNewResult"

    invoke-direct {p0, v1, v2}, Lcom/facebook/drawee/c/a;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 546
    invoke-virtual {p0, v2}, Lcom/facebook/drawee/c/a;->a(Ljava/lang/Object;)V

    :cond_6
    throw v0
.end method

.method private a(Ljava/lang/String;Lcom/facebook/e/f;Ljava/lang/Throwable;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/e/f",
            "<TT;>;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 557
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/c/a;->a(Ljava/lang/String;Lcom/facebook/e/f;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    const-string/jumbo v0, "ignore_old_datasource @ onFailure"

    invoke-direct {p0, v0, p3}, Lcom/facebook/drawee/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 559
    invoke-interface {p2}, Lcom/facebook/e/f;->h()Z

    .line 584
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v1, p0, Lcom/facebook/drawee/c/a;->b:Lcom/facebook/drawee/b/d;

    if-eqz p4, :cond_1

    sget-object v0, Lcom/facebook/drawee/b/e;->m:Lcom/facebook/drawee/b/e;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/b/d;->a(Lcom/facebook/drawee/b/e;)V

    .line 565
    if-eqz p4, :cond_4

    .line 566
    const-string/jumbo v0, "final_failed @ onFailure"

    invoke-direct {p0, v0, p3}, Lcom/facebook/drawee/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/c/a;->s:Lcom/facebook/e/f;

    .line 568
    iput-boolean v3, p0, Lcom/facebook/drawee/c/a;->p:Z

    .line 570
    iget-boolean v0, p0, Lcom/facebook/drawee/c/a;->q:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/drawee/c/a;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 571
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->i:Lcom/facebook/drawee/h/c;

    iget-object v1, p0, Lcom/facebook/drawee/c/a;->u:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/drawee/h/c;->a(Landroid/graphics/drawable/Drawable;FZ)V

    .line 577
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/drawee/c/a;->h()Lcom/facebook/drawee/c/i;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/c/a;->k:Ljava/lang/String;

    invoke-interface {v0, v1, p3}, Lcom/facebook/drawee/c/i;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 562
    :cond_1
    sget-object v0, Lcom/facebook/drawee/b/e;->n:Lcom/facebook/drawee/b/e;

    goto :goto_1

    .line 572
    :cond_2
    invoke-direct {p0}, Lcom/facebook/drawee/c/a;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 573
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->i:Lcom/facebook/drawee/h/c;

    invoke-interface {v0, p3}, Lcom/facebook/drawee/h/c;->b(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 575
    :cond_3
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->i:Lcom/facebook/drawee/h/c;

    invoke-interface {v0, p3}, Lcom/facebook/drawee/h/c;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 580
    :cond_4
    const-string/jumbo v0, "intermediate_failed @ onFailure"

    invoke-direct {p0, v0, p3}, Lcom/facebook/drawee/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 581
    invoke-virtual {p0}, Lcom/facebook/drawee/c/a;->h()Lcom/facebook/drawee/c/i;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/c/a;->k:Ljava/lang/String;

    invoke-interface {v0, v1, p3}, Lcom/facebook/drawee/c/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->b:Lcom/facebook/drawee/b/d;

    sget-object v1, Lcom/facebook/drawee/b/e;->f:Lcom/facebook/drawee/b/e;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/b/d;->a(Lcom/facebook/drawee/b/e;)V

    .line 124
    invoke-static {}, Lcom/facebook/d/h/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/c/a;->v:Ljava/lang/Throwable;

    .line 128
    :cond_0
    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/facebook/drawee/c/a;->c:Lcom/facebook/drawee/b/a;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->c:Lcom/facebook/drawee/b/a;

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/b/a;->b(Lcom/facebook/drawee/b/c;)V

    .line 132
    :cond_1
    iput-boolean v3, p0, Lcom/facebook/drawee/c/a;->m:Z

    .line 133
    iput-boolean v3, p0, Lcom/facebook/drawee/c/a;->o:Z

    .line 134
    invoke-direct {p0}, Lcom/facebook/drawee/c/a;->b()V

    .line 135
    iput-boolean v3, p0, Lcom/facebook/drawee/c/a;->q:Z

    .line 137
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->e:Lcom/facebook/drawee/b/f;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->e:Lcom/facebook/drawee/b/f;

    invoke-virtual {v0}, Lcom/facebook/drawee/b/f;->a()V

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->f:Lcom/facebook/drawee/g/a;

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->f:Lcom/facebook/drawee/g/a;

    invoke-virtual {v0}, Lcom/facebook/drawee/g/a;->a()V

    .line 142
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->f:Lcom/facebook/drawee/g/a;

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/g/a;->a(Lcom/facebook/drawee/g/b;)V

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->g:Lcom/facebook/drawee/c/i;

    instance-of v0, v0, Lcom/facebook/drawee/c/c;

    if-eqz v0, :cond_6

    .line 145
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->g:Lcom/facebook/drawee/c/i;

    check-cast v0, Lcom/facebook/drawee/c/c;

    invoke-virtual {v0}, Lcom/facebook/drawee/c/c;->a()V

    .line 149
    :goto_0
    iput-object v2, p0, Lcom/facebook/drawee/c/a;->h:Lcom/facebook/drawee/c/j;

    .line 151
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->i:Lcom/facebook/drawee/h/c;

    if-eqz v0, :cond_4

    .line 152
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->i:Lcom/facebook/drawee/h/c;

    invoke-interface {v0}, Lcom/facebook/drawee/h/c;->b()V

    .line 153
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->i:Lcom/facebook/drawee/h/c;

    invoke-interface {v0, v2}, Lcom/facebook/drawee/h/c;->a(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iput-object v2, p0, Lcom/facebook/drawee/c/a;->i:Lcom/facebook/drawee/h/c;

    .line 156
    :cond_4
    iput-object v2, p0, Lcom/facebook/drawee/c/a;->j:Landroid/graphics/drawable/Drawable;

    .line 158
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/d/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 159
    sget-object v0, Lcom/facebook/drawee/c/a;->a:Ljava/lang/Class;

    const-string/jumbo v1, "controller %x %s -> %s: initialize"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/drawee/c/a;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/facebook/d/e/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    :cond_5
    iput-object p1, p0, Lcom/facebook/drawee/c/a;->k:Ljava/lang/String;

    .line 162
    iput-object p2, p0, Lcom/facebook/drawee/c/a;->l:Ljava/lang/Object;

    .line 163
    return-void

    .line 147
    :cond_6
    iput-object v2, p0, Lcom/facebook/drawee/c/a;->g:Lcom/facebook/drawee/c/i;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 627
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/d/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    sget-object v0, Lcom/facebook/drawee/c/a;->a:Ljava/lang/Class;

    const-string/jumbo v1, "controller %x %s: %s: failure: %s"

    .line 631
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/drawee/c/a;->k:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    .line 628
    invoke-static/range {v0 .. v5}, Lcom/facebook/d/e/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 636
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/e/f;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/e/f",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 603
    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/facebook/drawee/c/a;->s:Lcom/facebook/e/f;

    if-nez v1, :cond_1

    .line 610
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/facebook/drawee/c/a;->k:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/drawee/c/a;->s:Lcom/facebook/e/f;

    if-ne p2, v1, :cond_2

    iget-boolean v1, p0, Lcom/facebook/drawee/c/a;->n:Z

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 181
    iget-boolean v0, p0, Lcom/facebook/drawee/c/a;->n:Z

    .line 182
    iput-boolean v1, p0, Lcom/facebook/drawee/c/a;->n:Z

    .line 183
    iput-boolean v1, p0, Lcom/facebook/drawee/c/a;->p:Z

    .line 184
    iget-object v1, p0, Lcom/facebook/drawee/c/a;->s:Lcom/facebook/e/f;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/facebook/drawee/c/a;->s:Lcom/facebook/e/f;

    invoke-interface {v1}, Lcom/facebook/e/f;->h()Z

    .line 186
    iput-object v3, p0, Lcom/facebook/drawee/c/a;->s:Lcom/facebook/e/f;

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/facebook/drawee/c/a;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/facebook/drawee/c/a;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/facebook/drawee/c/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/facebook/drawee/c/a;->r:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 192
    iput-object v3, p0, Lcom/facebook/drawee/c/a;->r:Ljava/lang/String;

    .line 194
    :cond_2
    iput-object v3, p0, Lcom/facebook/drawee/c/a;->u:Landroid/graphics/drawable/Drawable;

    .line 195
    iget-object v1, p0, Lcom/facebook/drawee/c/a;->t:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 196
    const-string/jumbo v1, "release"

    iget-object v2, p0, Lcom/facebook/drawee/c/a;->t:Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/facebook/drawee/c/a;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    iget-object v1, p0, Lcom/facebook/drawee/c/a;->t:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/facebook/drawee/c/a;->a(Ljava/lang/Object;)V

    .line 198
    iput-object v3, p0, Lcom/facebook/drawee/c/a;->t:Ljava/lang/Object;

    .line 200
    :cond_3
    if-eqz v0, :cond_4

    .line 201
    invoke-virtual {p0}, Lcom/facebook/drawee/c/a;->h()Lcom/facebook/drawee/c/i;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/c/a;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/drawee/c/i;->a(Ljava/lang/String;)V

    .line 203
    :cond_4
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 614
    invoke-static {v5}, Lcom/facebook/d/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    sget-object v0, Lcom/facebook/drawee/c/a;->a:Ljava/lang/Class;

    const-string/jumbo v1, "controller %x %s: %s: image: %s %x"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 618
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/facebook/drawee/c/a;->k:Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object p1, v2, v5

    const/4 v3, 0x3

    .line 621
    invoke-virtual {p0, p2}, Lcom/facebook/drawee/c/a;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 622
    invoke-virtual {p0, p2}, Lcom/facebook/drawee/c/a;->b(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 615
    invoke-static {v0, v1, v2}, Lcom/facebook/d/e/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    :cond_0
    return-void
.end method

.method private q()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/facebook/drawee/c/a;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/c/a;->e:Lcom/facebook/drawee/b/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/c/a;->e:Lcom/facebook/drawee/b/f;

    invoke-virtual {v0}, Lcom/facebook/drawee/b/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()Lcom/facebook/e/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/e/f",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected abstract a(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected a(Lcom/facebook/drawee/b/f;)V
    .locals 0
    .param p1    # Lcom/facebook/drawee/b/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 222
    iput-object p1, p0, Lcom/facebook/drawee/c/a;->e:Lcom/facebook/drawee/b/f;

    .line 223
    return-void
.end method

.method public a(Lcom/facebook/drawee/c/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/c/i",
            "<-TINFO;>;)V"
        }
    .end annotation

    .prologue
    .line 257
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->g:Lcom/facebook/drawee/c/i;

    instance-of v0, v0, Lcom/facebook/drawee/c/c;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->g:Lcom/facebook/drawee/c/i;

    check-cast v0, Lcom/facebook/drawee/c/c;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/c/c;->a(Lcom/facebook/drawee/c/i;)V

    .line 271
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->g:Lcom/facebook/drawee/c/i;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->g:Lcom/facebook/drawee/c/i;

    invoke-static {v0, p1}, Lcom/facebook/drawee/c/c;->a(Lcom/facebook/drawee/c/i;Lcom/facebook/drawee/c/i;)Lcom/facebook/drawee/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/c/a;->g:Lcom/facebook/drawee/c/i;

    goto :goto_0

    .line 270
    :cond_1
    iput-object p1, p0, Lcom/facebook/drawee/c/a;->g:Lcom/facebook/drawee/c/i;

    goto :goto_0
.end method

.method public a(Lcom/facebook/drawee/c/j;)V
    .locals 0
    .param p1    # Lcom/facebook/drawee/c/j;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 296
    iput-object p1, p0, Lcom/facebook/drawee/c/a;->h:Lcom/facebook/drawee/c/j;

    .line 297
    return-void
.end method

.method protected a(Lcom/facebook/drawee/g/a;)V
    .locals 1
    .param p1    # Lcom/facebook/drawee/g/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 232
    iput-object p1, p0, Lcom/facebook/drawee/c/a;->f:Lcom/facebook/drawee/g/a;

    .line 233
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->f:Lcom/facebook/drawee/g/a;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->f:Lcom/facebook/drawee/g/a;

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/g/a;->a(Lcom/facebook/drawee/g/b;)V

    .line 236
    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/drawee/h/b;)V
    .locals 5
    .param p1    # Lcom/facebook/drawee/h/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 314
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/d/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    sget-object v0, Lcom/facebook/drawee/c/a;->a:Ljava/lang/Class;

    const-string/jumbo v1, "controller %x %s: setHierarchy: %s"

    .line 318
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/drawee/c/a;->k:Ljava/lang/String;

    .line 315
    invoke-static {v0, v1, v2, v3, p1}, Lcom/facebook/d/e/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/facebook/drawee/c/a;->b:Lcom/facebook/drawee/b/d;

    if-eqz p1, :cond_4

    sget-object v0, Lcom/facebook/drawee/b/e;->a:Lcom/facebook/drawee/b/e;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/b/d;->a(Lcom/facebook/drawee/b/e;)V

    .line 325
    iget-boolean v0, p0, Lcom/facebook/drawee/c/a;->n:Z

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->c:Lcom/facebook/drawee/b/a;

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/b/a;->b(Lcom/facebook/drawee/b/c;)V

    .line 327
    invoke-virtual {p0}, Lcom/facebook/drawee/c/a;->d()V

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->i:Lcom/facebook/drawee/h/c;

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->i:Lcom/facebook/drawee/h/c;

    invoke-interface {v0, v4}, Lcom/facebook/drawee/h/c;->a(Landroid/graphics/drawable/Drawable;)V

    .line 332
    iput-object v4, p0, Lcom/facebook/drawee/c/a;->i:Lcom/facebook/drawee/h/c;

    .line 335
    :cond_2
    if-eqz p1, :cond_3

    .line 336
    instance-of v0, p1, Lcom/facebook/drawee/h/c;

    invoke-static {v0}, Lcom/facebook/d/d/k;->a(Z)V

    .line 337
    check-cast p1, Lcom/facebook/drawee/h/c;

    iput-object p1, p0, Lcom/facebook/drawee/c/a;->i:Lcom/facebook/drawee/h/c;

    .line 338
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->i:Lcom/facebook/drawee/h/c;

    iget-object v1, p0, Lcom/facebook/drawee/c/a;->j:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/facebook/drawee/h/c;->a(Landroid/graphics/drawable/Drawable;)V

    .line 340
    :cond_3
    return-void

    .line 322
    :cond_4
    sget-object v0, Lcom/facebook/drawee/b/e;->b:Lcom/facebook/drawee/b/e;

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 252
    iput-object p1, p0, Lcom/facebook/drawee/c/a;->r:Ljava/lang/String;

    .line 253
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/drawee/c/a;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 120
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 399
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/facebook/d/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    sget-object v1, Lcom/facebook/drawee/c/a;->a:Ljava/lang/Class;

    const-string/jumbo v2, "controller %x %s: onTouchEvent %s"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/drawee/c/a;->k:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, p1}, Lcom/facebook/d/e/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 402
    :cond_0
    iget-object v1, p0, Lcom/facebook/drawee/c/a;->f:Lcom/facebook/drawee/g/a;

    if-nez v1, :cond_2

    .line 409
    :cond_1
    :goto_0
    return v0

    .line 405
    :cond_2
    iget-object v1, p0, Lcom/facebook/drawee/c/a;->f:Lcom/facebook/drawee/g/a;

    invoke-virtual {v1}, Lcom/facebook/drawee/g/a;->c()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/facebook/drawee/c/a;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    :cond_3
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->f:Lcom/facebook/drawee/g/a;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/g/a;->a(Landroid/view/MotionEvent;)Z

    .line 407
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 654
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected b(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 344
    iput-object p1, p0, Lcom/facebook/drawee/c/a;->j:Landroid/graphics/drawable/Drawable;

    .line 345
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->i:Lcom/facebook/drawee/h/c;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->i:Lcom/facebook/drawee/h/c;

    iget-object v1, p0, Lcom/facebook/drawee/c/a;->j:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/facebook/drawee/h/c;->a(Landroid/graphics/drawable/Drawable;)V

    .line 348
    :cond_0
    return-void
.end method

.method protected b(Z)V
    .locals 0

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/facebook/drawee/c/a;->q:Z

    .line 241
    return-void
.end method

.method protected c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 673
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract c(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TINFO;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method protected abstract d(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation
.end method

.method public d()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->b:Lcom/facebook/drawee/b/d;

    sget-object v1, Lcom/facebook/drawee/b/e;->i:Lcom/facebook/drawee/b/e;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/b/d;->a(Lcom/facebook/drawee/b/e;)V

    .line 168
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->e:Lcom/facebook/drawee/b/f;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->e:Lcom/facebook/drawee/b/f;

    invoke-virtual {v0}, Lcom/facebook/drawee/b/f;->b()V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->f:Lcom/facebook/drawee/g/a;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->f:Lcom/facebook/drawee/g/a;

    invoke-virtual {v0}, Lcom/facebook/drawee/g/a;->b()V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->i:Lcom/facebook/drawee/h/c;

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->i:Lcom/facebook/drawee/h/c;

    invoke-interface {v0}, Lcom/facebook/drawee/h/c;->b()V

    .line 177
    :cond_2
    invoke-direct {p0}, Lcom/facebook/drawee/c/a;->b()V

    .line 178
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected e(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 650
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "<null>"

    goto :goto_0
.end method

.method protected f()Lcom/facebook/drawee/b/f;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->e:Lcom/facebook/drawee/b/f;

    return-object v0
.end method

.method protected g()Lcom/facebook/drawee/g/a;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->f:Lcom/facebook/drawee/g/a;

    return-object v0
.end method

.method protected h()Lcom/facebook/drawee/c/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/drawee/c/i",
            "<TINFO;>;"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->g:Lcom/facebook/drawee/c/i;

    if-nez v0, :cond_0

    .line 288
    invoke-static {}, Lcom/facebook/drawee/c/h;->a()Lcom/facebook/drawee/c/i;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->g:Lcom/facebook/drawee/c/i;

    goto :goto_0
.end method

.method public i()Lcom/facebook/drawee/h/b;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->i:Lcom/facebook/drawee/h/c;

    return-object v0
.end method

.method protected j()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public k()V
    .locals 5

    .prologue
    .line 357
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/d/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    sget-object v1, Lcom/facebook/drawee/c/a;->a:Ljava/lang/Class;

    const-string/jumbo v2, "controller %x %s: onAttach: %s"

    .line 361
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/drawee/c/a;->k:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/facebook/drawee/c/a;->n:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "request already submitted"

    .line 358
    :goto_0
    invoke-static {v1, v2, v3, v4, v0}, Lcom/facebook/d/e/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->b:Lcom/facebook/drawee/b/d;

    sget-object v1, Lcom/facebook/drawee/b/e;->g:Lcom/facebook/drawee/b/e;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/b/d;->a(Lcom/facebook/drawee/b/e;)V

    .line 366
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->i:Lcom/facebook/drawee/h/c;

    invoke-static {v0}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->c:Lcom/facebook/drawee/b/a;

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/b/a;->b(Lcom/facebook/drawee/b/c;)V

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/c/a;->m:Z

    .line 369
    iget-boolean v0, p0, Lcom/facebook/drawee/c/a;->n:Z

    if-nez v0, :cond_1

    .line 370
    invoke-virtual {p0}, Lcom/facebook/drawee/c/a;->o()V

    .line 372
    :cond_1
    return-void

    .line 361
    :cond_2
    const-string/jumbo v0, "request needs submit"

    goto :goto_0
.end method

.method public l()V
    .locals 4

    .prologue
    .line 376
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/d/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    sget-object v0, Lcom/facebook/drawee/c/a;->a:Ljava/lang/Class;

    const-string/jumbo v1, "controller %x %s: onDetach"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/drawee/c/a;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/d/e/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->b:Lcom/facebook/drawee/b/d;

    sget-object v1, Lcom/facebook/drawee/b/e;->h:Lcom/facebook/drawee/b/e;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/b/d;->a(Lcom/facebook/drawee/b/e;)V

    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/drawee/c/a;->m:Z

    .line 381
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->c:Lcom/facebook/drawee/b/a;

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/b/a;->a(Lcom/facebook/drawee/b/c;)V

    .line 382
    return-void
.end method

.method protected m()Z
    .locals 1

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/facebook/drawee/c/a;->q()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 4

    .prologue
    .line 425
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/d/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    sget-object v0, Lcom/facebook/drawee/c/a;->a:Ljava/lang/Class;

    const-string/jumbo v1, "controller %x %s: onClick"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/drawee/c/a;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/d/e/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 428
    :cond_0
    invoke-direct {p0}, Lcom/facebook/drawee/c/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->e:Lcom/facebook/drawee/b/f;

    invoke-virtual {v0}, Lcom/facebook/drawee/b/f;->d()V

    .line 430
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->i:Lcom/facebook/drawee/h/c;

    invoke-interface {v0}, Lcom/facebook/drawee/h/c;->b()V

    .line 431
    invoke-virtual {p0}, Lcom/facebook/drawee/c/a;->o()V

    .line 432
    const/4 v0, 0x1

    .line 434
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected o()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 438
    invoke-virtual {p0}, Lcom/facebook/drawee/c/a;->c()Ljava/lang/Object;

    move-result-object v3

    .line 439
    if-eqz v3, :cond_0

    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/c/a;->s:Lcom/facebook/e/f;

    .line 441
    iput-boolean v5, p0, Lcom/facebook/drawee/c/a;->n:Z

    .line 442
    iput-boolean v4, p0, Lcom/facebook/drawee/c/a;->p:Z

    .line 443
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->b:Lcom/facebook/drawee/b/d;

    sget-object v1, Lcom/facebook/drawee/b/e;->x:Lcom/facebook/drawee/b/e;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/b/d;->a(Lcom/facebook/drawee/b/e;)V

    .line 444
    invoke-virtual {p0}, Lcom/facebook/drawee/c/a;->h()Lcom/facebook/drawee/c/i;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/c/a;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/drawee/c/a;->l:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/facebook/drawee/c/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 445
    iget-object v1, p0, Lcom/facebook/drawee/c/a;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/drawee/c/a;->s:Lcom/facebook/e/f;

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/drawee/c/a;->a(Ljava/lang/String;Lcom/facebook/e/f;Ljava/lang/Object;FZZ)V

    .line 494
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->b:Lcom/facebook/drawee/b/d;

    sget-object v1, Lcom/facebook/drawee/b/e;->j:Lcom/facebook/drawee/b/e;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/b/d;->a(Lcom/facebook/drawee/b/e;)V

    .line 449
    invoke-virtual {p0}, Lcom/facebook/drawee/c/a;->h()Lcom/facebook/drawee/c/i;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/c/a;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/drawee/c/a;->l:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/facebook/drawee/c/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 450
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->i:Lcom/facebook/drawee/h/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v5}, Lcom/facebook/drawee/h/c;->a(FZ)V

    .line 451
    iput-boolean v5, p0, Lcom/facebook/drawee/c/a;->n:Z

    .line 452
    iput-boolean v4, p0, Lcom/facebook/drawee/c/a;->p:Z

    .line 453
    invoke-virtual {p0}, Lcom/facebook/drawee/c/a;->a()Lcom/facebook/e/f;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/c/a;->s:Lcom/facebook/e/f;

    .line 454
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/d/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    sget-object v0, Lcom/facebook/drawee/c/a;->a:Ljava/lang/Class;

    const-string/jumbo v1, "controller %x %s: submitRequest: dataSource: %x"

    .line 458
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/drawee/c/a;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/drawee/c/a;->s:Lcom/facebook/e/f;

    .line 460
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 455
    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/d/e/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->k:Ljava/lang/String;

    .line 463
    iget-object v1, p0, Lcom/facebook/drawee/c/a;->s:Lcom/facebook/e/f;

    invoke-interface {v1}, Lcom/facebook/e/f;->c()Z

    move-result v1

    .line 464
    new-instance v2, Lcom/facebook/drawee/c/b;

    invoke-direct {v2, p0, v0, v1}, Lcom/facebook/drawee/c/b;-><init>(Lcom/facebook/drawee/c/a;Ljava/lang/String;Z)V

    .line 493
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->s:Lcom/facebook/e/f;

    iget-object v1, p0, Lcom/facebook/drawee/c/a;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v2, v1}, Lcom/facebook/e/f;->a(Lcom/facebook/e/i;Ljava/util/concurrent/Executor;)V

    goto :goto_0
.end method

.method public p()Landroid/graphics/drawable/Animatable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 640
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->u:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/c/a;->u:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 663
    invoke-static {p0}, Lcom/facebook/d/d/g;->a(Ljava/lang/Object;)Lcom/facebook/d/d/i;

    move-result-object v0

    const-string/jumbo v1, "isAttached"

    iget-boolean v2, p0, Lcom/facebook/drawee/c/a;->m:Z

    .line 664
    invoke-virtual {v0, v1, v2}, Lcom/facebook/d/d/i;->a(Ljava/lang/String;Z)Lcom/facebook/d/d/i;

    move-result-object v0

    const-string/jumbo v1, "isRequestSubmitted"

    iget-boolean v2, p0, Lcom/facebook/drawee/c/a;->n:Z

    .line 665
    invoke-virtual {v0, v1, v2}, Lcom/facebook/d/d/i;->a(Ljava/lang/String;Z)Lcom/facebook/d/d/i;

    move-result-object v0

    const-string/jumbo v1, "hasFetchFailed"

    iget-boolean v2, p0, Lcom/facebook/drawee/c/a;->p:Z

    .line 666
    invoke-virtual {v0, v1, v2}, Lcom/facebook/d/d/i;->a(Ljava/lang/String;Z)Lcom/facebook/d/d/i;

    move-result-object v0

    const-string/jumbo v1, "fetchedImage"

    iget-object v2, p0, Lcom/facebook/drawee/c/a;->t:Ljava/lang/Object;

    .line 667
    invoke-virtual {p0, v2}, Lcom/facebook/drawee/c/a;->b(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/d/d/i;->a(Ljava/lang/String;I)Lcom/facebook/d/d/i;

    move-result-object v0

    const-string/jumbo v1, "events"

    iget-object v2, p0, Lcom/facebook/drawee/c/a;->b:Lcom/facebook/drawee/b/d;

    .line 668
    invoke-virtual {v2}, Lcom/facebook/drawee/b/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/d/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/d/d/i;

    move-result-object v0

    .line 669
    invoke-virtual {v0}, Lcom/facebook/d/d/i;->toString()Ljava/lang/String;

    move-result-object v0

    .line 663
    return-object v0
.end method
