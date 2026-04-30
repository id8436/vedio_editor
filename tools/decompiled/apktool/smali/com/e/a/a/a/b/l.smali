.class public Lcom/e/a/a/a/b/l;
.super Ljava/lang/Object;
.source "RecyclerViewDragDropManager.java"


# static fields
.field public static final a:Landroid/view/animation/Interpolator;

.field public static final b:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Lcom/e/a/a/a/b/g;

.field private B:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field private C:Lcom/e/a/a/a/b/i;

.field private D:Lcom/e/a/a/a/b/h;

.field private E:Lcom/e/a/a/a/b/t;

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:Lcom/e/a/a/a/b/j;

.field private Q:Lcom/e/a/a/a/b/q;

.field private R:Lcom/e/a/a/a/b/r;

.field private S:Z

.field private T:Z

.field private U:F

.field private V:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private W:Ljava/lang/Runnable;

.field private c:Landroid/support/v7/widget/RecyclerView;

.field private d:Landroid/view/animation/Interpolator;

.field private e:Lcom/e/a/a/a/b/s;

.field private f:Z

.field private g:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

.field private h:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private i:Lcom/e/a/a/a/b/c;

.field private j:Landroid/graphics/drawable/NinePatchDrawable;

.field private k:F

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:J

.field private q:Z

.field private r:Z

.field private s:I

.field private t:Z

.field private u:I

.field private v:I

.field private w:Landroid/graphics/Rect;

.field private x:Ljava/lang/Runnable;

.field private y:I

.field private z:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/e/a/a/a/b/d;

    invoke-direct {v0}, Lcom/e/a/a/a/b/d;-><init>()V

    sput-object v0, Lcom/e/a/a/a/b/l;->a:Landroid/view/animation/Interpolator;

    .line 58
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/e/a/a/a/b/l;->b:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    sget-object v0, Lcom/e/a/a/a/b/l;->a:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/e/a/a/a/b/l;->d:Landroid/view/animation/Interpolator;

    .line 122
    iput-wide v2, p0, Lcom/e/a/a/a/b/l;->p:J

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/e/a/a/a/b/l;->r:Z

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/e/a/a/a/b/l;->w:Landroid/graphics/Rect;

    .line 132
    const/16 v0, 0xc8

    iput v0, p0, Lcom/e/a/a/a/b/l;->y:I

    .line 133
    sget-object v0, Lcom/e/a/a/a/b/l;->b:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/e/a/a/a/b/l;->z:Landroid/view/animation/Interpolator;

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/e/a/a/a/b/l;->N:I

    .line 156
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/e/a/a/a/b/l;->U:F

    .line 159
    iput-wide v2, p0, Lcom/e/a/a/a/b/l;->V:J

    .line 1091
    new-instance v0, Lcom/e/a/a/a/b/p;

    invoke-direct {v0, p0}, Lcom/e/a/a/a/b/p;-><init>(Lcom/e/a/a/a/b/l;)V

    iput-object v0, p0, Lcom/e/a/a/a/b/l;->W:Ljava/lang/Runnable;

    .line 166
    new-instance v0, Lcom/e/a/a/a/b/m;

    invoke-direct {v0, p0}, Lcom/e/a/a/a/b/m;-><init>(Lcom/e/a/a/a/b/l;)V

    iput-object v0, p0, Lcom/e/a/a/a/b/l;->g:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 183
    new-instance v0, Lcom/e/a/a/a/b/n;

    invoke-direct {v0, p0}, Lcom/e/a/a/a/b/n;-><init>(Lcom/e/a/a/a/b/l;)V

    iput-object v0, p0, Lcom/e/a/a/a/b/l;->h:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 195
    new-instance v0, Lcom/e/a/a/a/b/s;

    invoke-direct {v0, p0}, Lcom/e/a/a/a/b/s;-><init>(Lcom/e/a/a/a/b/l;)V

    iput-object v0, p0, Lcom/e/a/a/a/b/l;->e:Lcom/e/a/a/a/b/s;

    .line 197
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    iput v0, p0, Lcom/e/a/a/a/b/l;->s:I

    .line 198
    return-void
.end method

.method private a(I)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1103
    iput v1, p0, Lcom/e/a/a/a/b/l;->v:I

    .line 1104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/e/a/a/a/b/l;->t:Z

    .line 1105
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 1106
    iput-boolean v1, p0, Lcom/e/a/a/a/b/l;->t:Z

    .line 1108
    iget v0, p0, Lcom/e/a/a/a/b/l;->v:I

    return v0
.end method

.method static a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/e/a/a/a/b/i;IILcom/e/a/a/a/b/j;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 1322
    .line 1324
    if-eqz p1, :cond_0

    .line 1325
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1326
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    iget-wide v4, p2, Lcom/e/a/a/a/b/i;->c:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 1328
    :cond_0
    invoke-static {p0}, Lcom/e/a/a/a/d/d;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v1

    .line 1330
    invoke-static {v1}, Lcom/e/a/a/a/d/d;->a(I)I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 1332
    :goto_0
    if-eqz v6, :cond_4

    .line 1333
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1334
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p2, Lcom/e/a/a/a/b/i;->a:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v4, p4

    .line 1340
    :goto_1
    packed-switch v1, :pswitch_data_0

    :cond_1
    move-object v0, v7

    .line 1358
    :goto_2
    if-eqz v0, :cond_2

    if-eqz p5, :cond_2

    .line 1359
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p5, v1}, Lcom/e/a/a/a/b/j;->a(I)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v0, v7

    .line 1364
    :cond_2
    return-object v0

    :cond_3
    move v6, v0

    .line 1330
    goto :goto_0

    .line 1336
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    invoke-static {p4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1337
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p2, Lcom/e/a/a/a/b/i;->b:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, p3

    goto :goto_1

    :pswitch_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    .line 1343
    invoke-static/range {v0 .. v6}, Lcom/e/a/a/a/b/l;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/e/a/a/a/b/i;IILcom/e/a/a/a/b/j;Z)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_2

    :pswitch_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    .line 1347
    invoke-static/range {v0 .. v5}, Lcom/e/a/a/a/b/l;->c(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/e/a/a/a/b/i;IILcom/e/a/a/a/b/j;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_2

    :pswitch_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    .line 1350
    invoke-static/range {v0 .. v5}, Lcom/e/a/a/a/b/l;->b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/e/a/a/a/b/i;IILcom/e/a/a/a/b/j;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_2

    .line 1340
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/e/a/a/a/b/i;IILcom/e/a/a/a/b/j;Z)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 12
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1370
    const/4 v3, 0x0

    .line 1372
    iget v0, p2, Lcom/e/a/a/a/b/i;->a:I

    div-int/lit8 v0, v0, 0x2

    add-int v5, p3, v0

    .line 1373
    iget v0, p2, Lcom/e/a/a/a/b/i;->b:I

    div-int/lit8 v0, v0, 0x2

    add-int v1, p4, v0

    .line 1375
    int-to-float v0, v5

    int-to-float v2, v1

    invoke-static {p0, v0, v2}, Lcom/e/a/a/a/d/d;->a(Landroid/support/v7/widget/RecyclerView;FF)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 1376
    if-eqz v2, :cond_1

    .line 1377
    if-eq v2, p1, :cond_2

    move-object v0, v2

    .line 1410
    :cond_0
    :goto_0
    return-object v0

    .line 1381
    :cond_1
    invoke-static {p0}, Lcom/e/a/a/a/d/d;->d(Landroid/support/v7/widget/RecyclerView;)I

    move-result v6

    .line 1382
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v9

    .line 1383
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v10

    .line 1384
    if-eqz p6, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    move v8, v0

    .line 1385
    :goto_1
    if-nez p6, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    move v7, v0

    .line 1386
    :goto_2
    if-eqz p6, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    move v4, v0

    .line 1387
    :goto_3
    if-nez p6, :cond_6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    .line 1388
    :goto_4
    sub-int/2addr v10, v8

    sub-int v4, v10, v4

    div-int v10, v4, v6

    .line 1389
    sub-int v4, v9, v7

    sub-int v0, v4, v0

    div-int v9, v0, v6

    .line 1391
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    :goto_5
    if-ltz v6, :cond_2

    .line 1392
    if-eqz p6, :cond_7

    mul-int v0, v10, v6

    add-int/2addr v0, v8

    div-int/lit8 v4, v10, 0x2

    add-int/2addr v0, v4

    move v4, v0

    .line 1393
    :goto_6
    if-nez p6, :cond_8

    mul-int v0, v9, v6

    add-int/2addr v0, v7

    div-int/lit8 v11, v9, 0x2

    add-int/2addr v0, v11

    .line 1394
    :goto_7
    int-to-float v4, v4

    int-to-float v0, v0

    invoke-static {p0, v4, v0}, Lcom/e/a/a/a/d/d;->a(Landroid/support/v7/widget/RecyclerView;FF)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 1396
    if-eqz v0, :cond_9

    .line 1397
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    .line 1398
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    .line 1400
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    add-int/lit8 v1, v1, -0x1

    if-ne v4, v1, :cond_2

    .line 1401
    if-ne v2, p1, :cond_0

    :cond_2
    move-object v0, v3

    goto :goto_0

    .line 1384
    :cond_3
    const/4 v0, 0x0

    move v8, v0

    goto :goto_1

    .line 1385
    :cond_4
    const/4 v0, 0x0

    move v7, v0

    goto :goto_2

    .line 1386
    :cond_5
    const/4 v0, 0x0

    move v4, v0

    goto :goto_3

    .line 1387
    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    :cond_7
    move v4, v5

    .line 1392
    goto :goto_6

    :cond_8
    move v0, v1

    .line 1393
    goto :goto_7

    .line 1391
    :cond_9
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_5
.end method

.method static synthetic a(Lcom/e/a/a/a/b/l;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->x:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Lcom/e/a/a/a/b/l;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/e/a/a/a/b/l;->x:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(F)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1078
    cmpl-float v0, p1, v1

    if-eqz v0, :cond_1

    .line 1079
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->i:Lcom/e/a/a/a/b/c;

    invoke-virtual {v0, p1}, Lcom/e/a/a/a/b/c;->a(F)V

    .line 1089
    :goto_0
    return-void

    .line 1084
    :cond_0
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->i:Lcom/e/a/a/a/b/c;

    invoke-virtual {v0, p1}, Lcom/e/a/a/a/b/c;->b(F)V

    goto :goto_0

    .line 1087
    :cond_1
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->i:Lcom/e/a/a/a/b/c;

    invoke-virtual {v0}, Lcom/e/a/a/a/b/c;->c()V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;ILandroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 10
    .param p3    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1140
    iget-object v0, p4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/e/a/a/a/b/l;->w:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/e/a/a/a/d/d;->a(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 1142
    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v5

    .line 1143
    sub-int v0, p2, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1144
    const/4 v0, 0x0

    .line 1146
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    const/4 v2, -0x1

    if-ne v5, v2, :cond_1

    .line 1213
    :cond_0
    :goto_0
    return-void

    .line 1150
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v6

    .line 1151
    iget-object v2, p0, Lcom/e/a/a/a/b/l;->C:Lcom/e/a/a/a/b/i;

    iget-wide v8, v2, Lcom/e/a/a/a/b/i;->c:J

    cmp-long v2, v6, v8

    if-nez v2, :cond_0

    .line 1159
    if-nez v1, :cond_3

    .line 1210
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move v4, p2

    .line 1211
    invoke-direct/range {v0 .. v5}, Lcom/e/a/a/a/b/l;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/graphics/Rect;II)V

    goto :goto_0

    .line 1160
    :cond_3
    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    if-eqz p3, :cond_7

    .line 1161
    iget-object v1, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1162
    iget-object v2, p4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1163
    iget-object v4, p0, Lcom/e/a/a/a/b/l;->C:Lcom/e/a/a/a/b/i;

    iget-object v4, v4, Lcom/e/a/a/a/b/i;->f:Landroid/graphics/Rect;

    .line 1167
    iget-boolean v6, p0, Lcom/e/a/a/a/b/l;->S:Z

    if-eqz v6, :cond_4

    .line 1168
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v8, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1169
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    iget v8, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v8

    iget v9, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1171
    int-to-float v8, v6

    sub-int v6, v7, v6

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    add-float/2addr v6, v8

    .line 1172
    iget v7, p0, Lcom/e/a/a/a/b/l;->F:I

    iget-object v8, p0, Lcom/e/a/a/a/b/l;->C:Lcom/e/a/a/a/b/i;

    iget v8, v8, Lcom/e/a/a/a/b/i;->d:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/e/a/a/a/b/l;->C:Lcom/e/a/a/a/b/i;

    iget v8, v8, Lcom/e/a/a/a/b/i;->a:I

    int-to-float v8, v8

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 1174
    if-ge v5, p2, :cond_5

    .line 1175
    cmpg-float v6, v7, v6

    if-gez v6, :cond_4

    .line 1177
    const/4 v0, 0x1

    .line 1187
    :cond_4
    :goto_2
    if-nez v0, :cond_2

    iget-boolean v6, p0, Lcom/e/a/a/a/b/l;->T:Z

    if-eqz v6, :cond_2

    .line 1188
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1189
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v4

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1191
    int-to-float v2, v6

    sub-int/2addr v1, v6

    int-to-float v1, v1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v1, v4

    add-float/2addr v1, v2

    .line 1192
    iget v2, p0, Lcom/e/a/a/a/b/l;->G:I

    iget-object v4, p0, Lcom/e/a/a/a/b/l;->C:Lcom/e/a/a/a/b/i;

    iget v4, v4, Lcom/e/a/a/a/b/i;->e:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/e/a/a/a/b/l;->C:Lcom/e/a/a/a/b/i;

    iget v4, v4, Lcom/e/a/a/a/b/i;->b:I

    int-to-float v4, v4

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v4, v6

    add-float/2addr v2, v4

    .line 1194
    if-ge v5, p2, :cond_6

    .line 1195
    cmpg-float v1, v2, v1

    if-gez v1, :cond_2

    .line 1197
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1180
    :cond_5
    cmpl-float v6, v7, v6

    if-lez v6, :cond_4

    .line 1182
    const/4 v0, 0x1

    goto :goto_2

    .line 1200
    :cond_6
    cmpl-float v1, v2, v1

    if-lez v1, :cond_2

    .line 1202
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1207
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_1
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/graphics/Rect;II)V
    .locals 3
    .param p2    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->R:Lcom/e/a/a/a/b/r;

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->R:Lcom/e/a/a/a/b/r;

    invoke-interface {v0, p4, p5}, Lcom/e/a/a/a/b/r;->a(II)V

    .line 1224
    :cond_0
    const/4 v0, 0x0

    .line 1226
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1227
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1228
    if-eqz v1, :cond_1

    .line 1229
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 1233
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 1236
    :goto_0
    iget-object v1, p0, Lcom/e/a/a/a/b/l;->A:Lcom/e/a/a/a/b/g;

    invoke-virtual {v1, p4, p5}, Lcom/e/a/a/a/b/g;->d(II)V

    .line 1238
    invoke-static {p1}, Lcom/e/a/a/a/b/l;->d(Landroid/support/v7/widget/RecyclerView;)V

    .line 1240
    invoke-static {p1}, Lcom/e/a/a/a/d/d;->e(Landroid/support/v7/widget/RecyclerView;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1267
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/e/a/a/a/b/l;->d(Landroid/support/v7/widget/RecyclerView;)V

    .line 1268
    return-void

    .line 1233
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 1242
    :pswitch_0
    if-ne p4, v0, :cond_4

    .line 1245
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    .line 1246
    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/e/a/a/a/b/l;->a(I)I

    goto :goto_1

    .line 1247
    :cond_4
    if-ne p5, v0, :cond_2

    .line 1248
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->C:Lcom/e/a/a/a/b/i;

    iget-object v0, v0, Lcom/e/a/a/a/b/i;->f:Landroid/graphics/Rect;

    .line 1249
    iget-object v1, p0, Lcom/e/a/a/a/b/l;->C:Lcom/e/a/a/a/b/i;

    iget v1, v1, Lcom/e/a/a/a/b/i;->b:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    .line 1250
    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/e/a/a/a/b/l;->a(I)I

    goto :goto_1

    .line 1254
    :pswitch_1
    if-ne p4, v0, :cond_5

    .line 1257
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    .line 1258
    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/e/a/a/a/b/l;->b(I)I

    goto :goto_1

    .line 1259
    :cond_5
    if-ne p5, v0, :cond_2

    .line 1260
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->C:Lcom/e/a/a/a/b/i;

    iget-object v0, v0, Lcom/e/a/a/a/b/i;->f:Landroid/graphics/Rect;

    .line 1261
    iget-object v1, p0, Lcom/e/a/a/a/b/l;->C:Lcom/e/a/a/a/b/i;

    iget v1, v1, Lcom/e/a/a/a/b/i;->a:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    .line 1262
    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/e/a/a/a/b/l;->b(I)I

    goto :goto_1

    .line 1240
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/e/a/a/a/b/j;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    .line 585
    invoke-static {p1, p3}, Lcom/e/a/a/a/b/l;->b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 587
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->Q:Lcom/e/a/a/a/b/q;

    invoke-virtual {v0}, Lcom/e/a/a/a/b/q;->b()V

    .line 589
    new-instance v0, Lcom/e/a/a/a/b/i;

    iget v1, p0, Lcom/e/a/a/a/b/l;->F:I

    iget v2, p0, Lcom/e/a/a/a/b/l;->G:I

    invoke-direct {v0, p3, v1, v2}, Lcom/e/a/a/a/b/i;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    iput-object v0, p0, Lcom/e/a/a/a/b/l;->C:Lcom/e/a/a/a/b/i;

    .line 590
    iput-object p3, p0, Lcom/e/a/a/a/b/l;->B:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 597
    iput-object p4, p0, Lcom/e/a/a/a/b/l;->P:Lcom/e/a/a/a/b/j;

    .line 599
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/e/a/a/a/b/l;->O:I

    .line 600
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setOverScrollMode(Landroid/view/View;I)V

    .line 602
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/e/a/a/a/b/l;->F:I

    .line 603
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/e/a/a/a/b/l;->G:I

    .line 606
    iget v0, p0, Lcom/e/a/a/a/b/l;->G:I

    iput v0, p0, Lcom/e/a/a/a/b/l;->M:I

    iput v0, p0, Lcom/e/a/a/a/b/l;->K:I

    iput v0, p0, Lcom/e/a/a/a/b/l;->I:I

    .line 607
    iget v0, p0, Lcom/e/a/a/a/b/l;->F:I

    iput v0, p0, Lcom/e/a/a/a/b/l;->L:I

    iput v0, p0, Lcom/e/a/a/a/b/l;->J:I

    iput v0, p0, Lcom/e/a/a/a/b/l;->H:I

    .line 608
    const/4 v0, 0x0

    iput v0, p0, Lcom/e/a/a/a/b/l;->N:I

    .line 610
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 612
    invoke-direct {p0}, Lcom/e/a/a/a/b/l;->i()V

    .line 615
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->A:Lcom/e/a/a/a/b/g;

    iget-object v1, p0, Lcom/e/a/a/a/b/l;->C:Lcom/e/a/a/a/b/i;

    iget-object v2, p0, Lcom/e/a/a/a/b/l;->P:Lcom/e/a/a/a/b/j;

    invoke-virtual {v0, v1, p3, v2}, Lcom/e/a/a/a/b/g;->a(Lcom/e/a/a/a/b/i;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/e/a/a/a/b/j;)V

    .line 618
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->A:Lcom/e/a/a/a/b/g;

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {v0, p3, v1}, Lcom/e/a/a/a/b/g;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 620
    new-instance v0, Lcom/e/a/a/a/b/h;

    iget-object v1, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/e/a/a/a/b/l;->P:Lcom/e/a/a/a/b/j;

    invoke-direct {v0, v1, p3, v2}, Lcom/e/a/a/a/b/h;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/e/a/a/a/b/j;)V

    iput-object v0, p0, Lcom/e/a/a/a/b/l;->D:Lcom/e/a/a/a/b/h;

    .line 621
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->D:Lcom/e/a/a/a/b/h;

    iget-object v1, p0, Lcom/e/a/a/a/b/l;->j:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, v1}, Lcom/e/a/a/a/b/h;->a(Landroid/graphics/drawable/NinePatchDrawable;)V

    .line 622
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->D:Lcom/e/a/a/a/b/h;

    iget-object v1, p0, Lcom/e/a/a/a/b/l;->C:Lcom/e/a/a/a/b/i;

    invoke-virtual {v0, p2, v1}, Lcom/e/a/a/a/b/h;->a(Landroid/view/MotionEvent;Lcom/e/a/a/a/b/i;)V

    .line 624
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lcom/e/a/a/a/d/d;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    .line 626
    invoke-static {}, Lcom/e/a/a/a/b/l;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq v0, v4, :cond_0

    if-nez v0, :cond_1

    .line 629
    :cond_0
    new-instance v0, Lcom/e/a/a/a/b/t;

    iget-object v1, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/e/a/a/a/b/l;->P:Lcom/e/a/a/a/b/j;

    iget-object v3, p0, Lcom/e/a/a/a/b/l;->C:Lcom/e/a/a/a/b/i;

    invoke-direct {v0, v1, p3, v2, v3}, Lcom/e/a/a/a/b/t;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/e/a/a/a/b/j;Lcom/e/a/a/a/b/i;)V

    iput-object v0, p0, Lcom/e/a/a/a/b/l;->E:Lcom/e/a/a/a/b/t;

    .line 630
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->E:Lcom/e/a/a/a/b/t;

    iget-object v1, p0, Lcom/e/a/a/a/b/l;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/e/a/a/a/b/t;->b(Landroid/view/animation/Interpolator;)V

    .line 631
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->E:Lcom/e/a/a/a/b/t;

    invoke-virtual {v0}, Lcom/e/a/a/a/b/t;->a()V

    .line 632
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->E:Lcom/e/a/a/a/b/t;

    iget-object v1, p0, Lcom/e/a/a/a/b/l;->D:Lcom/e/a/a/a/b/h;

    invoke-virtual {v1}, Lcom/e/a/a/a/b/h;->c()I

    move-result v1

    iget-object v2, p0, Lcom/e/a/a/a/b/l;->D:Lcom/e/a/a/a/b/h;

    invoke-virtual {v2}, Lcom/e/a/a/a/b/h;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/e/a/a/a/b/t;->a(II)V

    .line 635
    :cond_1
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->i:Lcom/e/a/a/a/b/c;

    if-eqz v0, :cond_2

    .line 636
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->i:Lcom/e/a/a/a/b/c;

    invoke-virtual {v0}, Lcom/e/a/a/a/b/c;->d()V

    .line 639
    :cond_2
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->R:Lcom/e/a/a/a/b/r;

    if-eqz v0, :cond_3

    .line 640
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->R:Lcom/e/a/a/a/b/r;

    iget-object v1, p0, Lcom/e/a/a/a/b/l;->A:Lcom/e/a/a/a/b/g;

    invoke-virtual {v1}, Lcom/e/a/a/a/b/g;->d()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/e/a/a/a/b/r;->a(I)V

    .line 642
    :cond_3
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 15

    .prologue
    .line 954
    if-eqz p2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    move v7, v0

    .line 956
    :goto_0
    if-nez v7, :cond_1

    .line 1075
    :goto_1
    return-void

    .line 954
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    move v7, v0

    goto :goto_0

    .line 960
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, v7

    div-float v8, v0, v1

    .line 961
    if-eqz p2, :cond_9

    iget v0, p0, Lcom/e/a/a/a/b/l;->F:I

    :goto_2
    int-to-float v0, v0

    mul-float/2addr v0, v8

    .line 964
    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    .line 965
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 966
    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float v1, v4, v1

    sub-float v1, v3, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const v2, 0x40555555

    mul-float/2addr v1, v2

    .line 967
    iget v9, p0, Lcom/e/a/a/a/b/l;->N:I

    .line 968
    iget-object v10, p0, Lcom/e/a/a/a/b/l;->D:Lcom/e/a/a/a/b/h;

    .line 970
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    const/high16 v2, 0x41c80000    # 25.0f

    iget v3, p0, Lcom/e/a/a/a/b/l;->U:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/e/a/a/a/b/l;->k:F

    mul-float/2addr v2, v3

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    mul-int v3, v0, v1

    .line 971
    const/4 v2, 0x0

    .line 973
    iget-object v11, p0, Lcom/e/a/a/a/b/l;->P:Lcom/e/a/a/a/b/j;

    .line 975
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lcom/e/a/a/a/d/d;->b(Landroid/support/v7/widget/RecyclerView;)I

    move-result v12

    .line 976
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lcom/e/a/a/a/d/d;->c(Landroid/support/v7/widget/RecyclerView;)I

    move-result v13

    .line 978
    const/4 v5, 0x0

    .line 979
    const/4 v0, 0x0

    .line 980
    const/4 v4, 0x0

    .line 981
    const/4 v1, 0x0

    .line 983
    const/4 v6, -0x1

    if-eq v12, v6, :cond_1f

    .line 984
    invoke-virtual {v11}, Lcom/e/a/a/a/b/j;->a()I

    move-result v6

    if-gt v12, v6, :cond_2

    .line 985
    const/4 v0, 0x1

    .line 987
    :cond_2
    invoke-virtual {v11}, Lcom/e/a/a/a/b/j;->a()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-gt v12, v6, :cond_1f

    .line 988
    const/4 v5, 0x1

    move v6, v5

    move v5, v0

    .line 992
    :goto_3
    const/4 v0, -0x1

    if-eq v13, v0, :cond_1e

    .line 993
    invoke-virtual {v11}, Lcom/e/a/a/a/b/j;->b()I

    move-result v0

    if-lt v13, v0, :cond_1d

    .line 994
    const/4 v0, 0x1

    .line 996
    :goto_4
    invoke-virtual {v11}, Lcom/e/a/a/a/b/j;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-lt v13, v1, :cond_1c

    .line 997
    const/4 v1, 0x1

    move v4, v0

    .line 1002
    :goto_5
    if-lez v3, :cond_b

    .line 1003
    if-eqz p2, :cond_a

    const/16 v0, 0x8

    :goto_6
    and-int/2addr v0, v9

    if-nez v0, :cond_3

    .line 1004
    const/4 v0, 0x0

    move v3, v0

    .line 1013
    :cond_3
    :goto_7
    if-nez v6, :cond_4

    if-ltz v3, :cond_5

    :cond_4
    if-nez v1, :cond_11

    if-lez v3, :cond_11

    .line 1015
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/e/a/a/a/b/l;->d(Landroid/support/v7/widget/RecyclerView;)V

    .line 1017
    if-eqz p2, :cond_d

    .line 1018
    invoke-direct {p0, v3}, Lcom/e/a/a/a/b/l;->b(I)I

    move-result v1

    .line 1021
    :goto_8
    if-gez v3, :cond_f

    .line 1022
    if-nez v5, :cond_e

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {v10, v0}, Lcom/e/a/a/a/b/h;->b(Z)V

    .line 1027
    :goto_a
    invoke-virtual {v10}, Lcom/e/a/a/a/b/h;->a()V

    .line 1028
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->E:Lcom/e/a/a/a/b/t;

    if-eqz v0, :cond_1b

    .line 1029
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->E:Lcom/e/a/a/a/b/t;

    .line 1030
    invoke-virtual {v10}, Lcom/e/a/a/a/b/h;->c()I

    move-result v2

    .line 1031
    invoke-virtual {v10}, Lcom/e/a/a/a/b/h;->b()I

    move-result v4

    .line 1029
    invoke-virtual {v0, v2, v4}, Lcom/e/a/a/a/b/t;->a(II)V

    move v0, v1

    .line 1037
    :goto_b
    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 1040
    :goto_c
    iget-object v1, p0, Lcom/e/a/a/a/b/l;->i:Lcom/e/a/a/a/b/c;

    if-eqz v1, :cond_8

    .line 1043
    if-eqz p2, :cond_13

    invoke-virtual {v10}, Lcom/e/a/a/a/b/h;->j()I

    move-result v2

    .line 1044
    :goto_d
    if-eqz p2, :cond_14

    invoke-virtual {v10}, Lcom/e/a/a/a/b/h;->k()I

    move-result v1

    .line 1045
    :goto_e
    add-int v4, v2, v1

    div-int/lit8 v4, v4, 0x2

    .line 1048
    if-nez v12, :cond_15

    if-nez v13, :cond_15

    .line 1050
    if-gez v3, :cond_6

    move v1, v2

    .line 1055
    :cond_6
    :goto_f
    int-to-float v1, v1

    mul-float/2addr v1, v8

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float v2, v1, v2

    .line 1056
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1057
    const/4 v1, 0x0

    .line 1059
    const v5, 0x3ecccccd    # 0.4f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_18

    if-eqz v3, :cond_18

    if-nez v0, :cond_18

    .line 1060
    const/4 v0, 0x0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_19

    .line 1061
    if-eqz p2, :cond_17

    invoke-virtual {v10}, Lcom/e/a/a/a/b/h;->f()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1062
    :cond_7
    iget v0, p0, Lcom/e/a/a/a/b/l;->k:F

    neg-float v0, v0

    const v1, 0x3ba3d70a    # 0.005f

    mul-float/2addr v0, v1

    .line 1071
    :goto_10
    invoke-direct {p0, v0}, Lcom/e/a/a/a/b/l;->a(F)V

    .line 1074
    :cond_8
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/e/a/a/a/b/l;->W:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 961
    :cond_9
    iget v0, p0, Lcom/e/a/a/a/b/l;->G:I

    goto/16 :goto_2

    .line 1003
    :cond_a
    const/4 v0, 0x2

    goto/16 :goto_6

    .line 1006
    :cond_b
    if-gez v3, :cond_3

    .line 1007
    if-eqz p2, :cond_c

    const/4 v0, 0x4

    :goto_11
    and-int/2addr v0, v9

    if-nez v0, :cond_3

    .line 1008
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_7

    .line 1007
    :cond_c
    const/4 v0, 0x1

    goto :goto_11

    .line 1019
    :cond_d
    invoke-direct {p0, v3}, Lcom/e/a/a/a/b/l;->a(I)I

    move-result v1

    goto/16 :goto_8

    .line 1022
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_9

    .line 1024
    :cond_f
    if-nez v4, :cond_10

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {v10, v0}, Lcom/e/a/a/a/b/h;->b(Z)V

    goto/16 :goto_a

    :cond_10
    const/4 v0, 0x0

    goto :goto_12

    .line 1034
    :cond_11
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/e/a/a/a/b/h;->b(Z)V

    move v0, v2

    goto/16 :goto_b

    .line 1037
    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_c

    .line 1043
    :cond_13
    invoke-virtual {v10}, Lcom/e/a/a/a/b/h;->h()I

    move-result v2

    goto :goto_d

    .line 1044
    :cond_14
    invoke-virtual {v10}, Lcom/e/a/a/a/b/h;->i()I

    move-result v1

    goto :goto_e

    .line 1052
    :cond_15
    div-int/lit8 v5, v7, 0x2

    if-ge v4, v5, :cond_16

    :goto_13
    move v1, v2

    goto :goto_f

    :cond_16
    move v2, v1

    goto :goto_13

    .line 1061
    :cond_17
    invoke-virtual {v10}, Lcom/e/a/a/a/b/h;->d()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_18
    move v0, v1

    goto :goto_10

    .line 1065
    :cond_19
    if-eqz p2, :cond_1a

    invoke-virtual {v10}, Lcom/e/a/a/a/b/h;->g()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1066
    :goto_14
    iget v0, p0, Lcom/e/a/a/a/b/l;->k:F

    const v1, 0x3ba3d70a    # 0.005f

    mul-float/2addr v0, v1

    goto :goto_10

    .line 1065
    :cond_1a
    invoke-virtual {v10}, Lcom/e/a/a/a/b/h;->e()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_14

    :cond_1b
    move v0, v1

    goto/16 :goto_b

    :cond_1c
    move v1, v4

    move v4, v0

    goto/16 :goto_5

    :cond_1d
    move v0, v1

    goto/16 :goto_4

    :cond_1e
    move v14, v1

    move v1, v4

    move v4, v14

    goto/16 :goto_5

    :cond_1f
    move v6, v5

    move v5, v0

    goto/16 :goto_3
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 578
    iget-boolean v0, p0, Lcom/e/a/a/a/b/l;->q:Z

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/e/a/a/a/b/l;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;Z)Z

    .line 581
    :cond_0
    return-void
.end method

.method private a(Lcom/e/a/a/a/b/j;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .prologue
    .line 859
    .line 860
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/e/a/a/a/b/l;->A:Lcom/e/a/a/a/b/g;

    invoke-virtual {v1}, Lcom/e/a/a/a/b/g;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 862
    invoke-virtual {p1}, Lcom/e/a/a/a/b/j;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/e/a/a/a/b/j;->b()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 863
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid range specified --- start > range (range = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 866
    :cond_0
    invoke-virtual {p1}, Lcom/e/a/a/a/b/j;->a()I

    move-result v1

    if-gez v1, :cond_1

    .line 867
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid range specified --- start < 0 (range = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 870
    :cond_1
    invoke-virtual {p1}, Lcom/e/a/a/a/b/j;->b()I

    move-result v1

    if-le v1, v0, :cond_2

    .line 871
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid range specified --- end >= count (range = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 874
    :cond_2
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/e/a/a/a/b/j;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 875
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid range specified --- does not contain drag target item (range = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 877
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 879
    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/e/a/a/a/b/l;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/e/a/a/a/b/l;->b(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic a(Lcom/e/a/a/a/b/l;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/e/a/a/a/b/l;->a(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic a(Lcom/e/a/a/a/b/l;Z)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/e/a/a/a/b/l;->e(Z)V

    return-void
.end method

.method private a(IZ)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 759
    if-ne p1, v1, :cond_1

    move v0, v1

    .line 761
    :goto_0
    iget-object v3, p0, Lcom/e/a/a/a/b/l;->Q:Lcom/e/a/a/a/b/q;

    invoke-virtual {v3}, Lcom/e/a/a/a/b/q;->b()V

    .line 763
    iput v2, p0, Lcom/e/a/a/a/b/l;->n:I

    .line 764
    iput v2, p0, Lcom/e/a/a/a/b/l;->o:I

    .line 765
    iput v2, p0, Lcom/e/a/a/a/b/l;->F:I

    .line 766
    iput v2, p0, Lcom/e/a/a/a/b/l;->G:I

    .line 767
    iput v2, p0, Lcom/e/a/a/a/b/l;->H:I

    .line 768
    iput v2, p0, Lcom/e/a/a/a/b/l;->I:I

    .line 769
    iput v2, p0, Lcom/e/a/a/a/b/l;->J:I

    .line 770
    iput v2, p0, Lcom/e/a/a/a/b/l;->K:I

    .line 771
    iput v2, p0, Lcom/e/a/a/a/b/l;->L:I

    .line 772
    iput v2, p0, Lcom/e/a/a/a/b/l;->M:I

    .line 773
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/e/a/a/a/b/l;->p:J

    .line 774
    iput-boolean v2, p0, Lcom/e/a/a/a/b/l;->S:Z

    .line 775
    iput-boolean v2, p0, Lcom/e/a/a/a/b/l;->T:Z

    .line 777
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/e/a/a/a/b/l;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 782
    invoke-direct {p0, v0}, Lcom/e/a/a/a/b/l;->e(Z)V

    .line 785
    :cond_0
    return v1

    :cond_1
    move v0, v2

    .line 759
    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1276
    instance-of v1, p2, Lcom/e/a/a/a/b/f;

    if-nez v1, :cond_1

    .line 1293
    :cond_0
    :goto_0
    return v0

    .line 1280
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 1281
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    .line 1284
    if-ltz v1, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1289
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v2

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    .line 1293
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;Z)Z
    .locals 9

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 797
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->C:Lcom/e/a/a/a/b/i;

    if-eqz v0, :cond_0

    move v0, v1

    .line 855
    :goto_0
    return v0

    .line 801
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    .line 802
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v8

    float-to-int v2, v2

    .line 804
    iput v0, p0, Lcom/e/a/a/a/b/l;->F:I

    .line 805
    iput v2, p0, Lcom/e/a/a/a/b/l;->G:I

    .line 807
    iget-wide v4, p0, Lcom/e/a/a/a/b/l;->p:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    move v0, v1

    .line 808
    goto :goto_0

    .line 811
    :cond_1
    if-eqz p3, :cond_4

    .line 812
    iget-boolean v3, p0, Lcom/e/a/a/a/b/l;->S:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/e/a/a/a/b/l;->n:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/e/a/a/a/b/l;->l:I

    if-gt v3, v4, :cond_4

    :cond_2
    iget-boolean v3, p0, Lcom/e/a/a/a/b/l;->T:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/e/a/a/a/b/l;->o:I

    sub-int v3, v2, v3

    .line 813
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/e/a/a/a/b/l;->l:I

    if-gt v3, v4, :cond_4

    :cond_3
    move v0, v1

    .line 814
    goto :goto_0

    .line 818
    :cond_4
    iget v3, p0, Lcom/e/a/a/a/b/l;->n:I

    int-to-float v3, v3

    iget v4, p0, Lcom/e/a/a/a/b/l;->o:I

    int-to-float v4, v4

    invoke-static {p1, v3, v4}, Lcom/e/a/a/a/d/d;->a(Landroid/support/v7/widget/RecyclerView;FF)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 820
    if-nez v3, :cond_5

    move v0, v1

    .line 821
    goto :goto_0

    .line 824
    :cond_5
    invoke-static {v3}, Lcom/e/a/a/a/d/d;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v4

    .line 826
    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    move v0, v1

    .line 827
    goto :goto_0

    .line 830
    :cond_6
    iget-object v5, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 831
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v6

    add-float/2addr v6, v8

    float-to-int v6, v6

    .line 832
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v7

    add-float/2addr v7, v8

    float-to-int v7, v7

    .line 833
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    add-int/2addr v6, v8

    sub-int/2addr v0, v6

    .line 834
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v5, v7

    sub-int/2addr v2, v5

    .line 836
    iget-object v5, p0, Lcom/e/a/a/a/b/l;->A:Lcom/e/a/a/a/b/g;

    invoke-virtual {v5, v3, v4, v0, v2}, Lcom/e/a/a/a/b/g;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;III)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 837
    goto :goto_0

    .line 840
    :cond_7
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->A:Lcom/e/a/a/a/b/g;

    invoke-virtual {v0, v3, v4}, Lcom/e/a/a/a/b/g;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Lcom/e/a/a/a/b/j;

    move-result-object v0

    .line 842
    if-nez v0, :cond_8

    .line 843
    new-instance v0, Lcom/e/a/a/a/b/j;

    iget-object v2, p0, Lcom/e/a/a/a/b/l;->A:Lcom/e/a/a/a/b/g;

    invoke-virtual {v2}, Lcom/e/a/a/a/b/g;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/e/a/a/a/b/j;-><init>(II)V

    .line 846
    :cond_8
    invoke-direct {p0, v0, v3}, Lcom/e/a/a/a/b/l;->a(Lcom/e/a/a/a/b/j;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 853
    invoke-direct {p0, p1, p2, v3, v0}, Lcom/e/a/a/a/b/l;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/e/a/a/a/b/j;)V

    .line 855
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private b(I)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1112
    iput v1, p0, Lcom/e/a/a/a/b/l;->u:I

    .line 1113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/e/a/a/a/b/l;->t:Z

    .line 1114
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 1115
    iput-boolean v1, p0, Lcom/e/a/a/a/b/l;->t:Z

    .line 1117
    iget v0, p0, Lcom/e/a/a/a/b/l;->u:I

    return v0
.end method

.method private static b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/e/a/a/a/b/i;IILcom/e/a/a/a/b/j;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    .line 1416
    const/4 v0, 0x0

    .line 1418
    if-eqz p1, :cond_0

    .line 1419
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 1420
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1422
    if-ge p4, v2, :cond_1

    .line 1423
    if-lez v1, :cond_0

    .line 1424
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 1433
    :cond_0
    :goto_0
    return-object v0

    .line 1426
    :cond_1
    if-le p4, v2, :cond_0

    .line 1427
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1428
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/e/a/a/a/b/l;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->B:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method private b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 6

    .prologue
    .line 927
    iget-object v1, p0, Lcom/e/a/a/a/b/l;->B:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 929
    iget v0, p0, Lcom/e/a/a/a/b/l;->F:I

    iget-object v2, p0, Lcom/e/a/a/a/b/l;->C:Lcom/e/a/a/a/b/i;

    iget v2, v2, Lcom/e/a/a/a/b/i;->d:I

    sub-int v3, v0, v2

    .line 930
    iget v0, p0, Lcom/e/a/a/a/b/l;->G:I

    iget-object v2, p0, Lcom/e/a/a/a/b/l;->C:Lcom/e/a/a/a/b/i;

    iget v2, v2, Lcom/e/a/a/a/b/i;->e:I

    sub-int v4, v0, v2

    .line 931
    iget-object v2, p0, Lcom/e/a/a/a/b/l;->C:Lcom/e/a/a/a/b/i;

    iget-object v5, p0, Lcom/e/a/a/a/b/l;->P:Lcom/e/a/a/a/b/j;

    move-object v0, p1

    .line 932
    invoke-static/range {v0 .. v5}, Lcom/e/a/a/a/b/l;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/e/a/a/a/b/i;IILcom/e/a/a/a/b/j;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 934
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/e/a/a/a/b/l;->B:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eq v0, v2, :cond_0

    .line 935
    iget-object v2, p0, Lcom/e/a/a/a/b/l;->A:Lcom/e/a/a/a/b/g;

    invoke-virtual {v2}, Lcom/e/a/a/a/b/g;->e()I

    move-result v2

    .line 936
    invoke-direct {p0, p1, v2, v1, v0}, Lcom/e/a/a/a/b/l;->a(Landroid/support/v7/widget/RecyclerView;ILandroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 938
    :cond_0
    return-void
.end method

.method private static b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .prologue
    .line 1305
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 1306
    :goto_0
    if-eqz v0, :cond_0

    .line 1307
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1309
    :cond_0
    return-void

    .line 1305
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/e/a/a/a/b/i;IILcom/e/a/a/a/b/j;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1439
    const/4 v0, 0x0

    .line 1441
    if-eqz p1, :cond_0

    .line 1442
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 1443
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1445
    if-ge p3, v2, :cond_1

    .line 1446
    if-lez v1, :cond_0

    .line 1447
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 1456
    :cond_0
    :goto_0
    return-object v0

    .line 1449
    :cond_1
    if-le p3, v2, :cond_0

    .line 1450
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1451
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/e/a/a/a/b/l;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private static c(Landroid/support/v7/widget/RecyclerView;)Lcom/e/a/a/a/b/g;
    .locals 2

    .prologue
    .line 1271
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    const-class v1, Lcom/e/a/a/a/b/g;

    invoke-static {v0, v1}, Lcom/e/a/a/a/d/e;->a(Landroid/support/v7/widget/RecyclerView$Adapter;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/e/a/a/a/b/g;

    return-object v0
.end method

.method private c(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 552
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {p1, v0, v3}, Lcom/e/a/a/a/d/d;->a(Landroid/support/v7/widget/RecyclerView;FF)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 554
    invoke-direct {p0, p1, v0}, Lcom/e/a/a/a/b/l;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 574
    :goto_0
    return v1

    .line 558
    :cond_0
    iget-object v3, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Lcom/e/a/a/a/d/d;->e(Landroid/support/v7/widget/RecyclerView;)I

    move-result v3

    .line 559
    iget-object v4, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Lcom/e/a/a/a/d/d;->d(Landroid/support/v7/widget/RecyclerView;)I

    move-result v4

    .line 561
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/e/a/a/a/b/l;->F:I

    iput v5, p0, Lcom/e/a/a/a/b/l;->n:I

    .line 562
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/e/a/a/a/b/l;->G:I

    iput v5, p0, Lcom/e/a/a/a/b/l;->o:I

    .line 563
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/e/a/a/a/b/l;->p:J

    .line 564
    if-eqz v3, :cond_1

    if-ne v3, v2, :cond_5

    if-le v4, v2, :cond_5

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/e/a/a/a/b/l;->S:Z

    .line 566
    if-eq v3, v2, :cond_2

    if-nez v3, :cond_3

    if-le v4, v2, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/e/a/a/a/b/l;->T:Z

    .line 570
    iget-boolean v0, p0, Lcom/e/a/a/a/b/l;->q:Z

    if-eqz v0, :cond_4

    .line 571
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->Q:Lcom/e/a/a/a/b/q;

    iget v1, p0, Lcom/e/a/a/a/b/l;->s:I

    invoke-virtual {v0, p2, v1}, Lcom/e/a/a/a/b/q;->a(Landroid/view/MotionEvent;I)V

    :cond_4
    move v1, v2

    .line 574
    goto :goto_0

    :cond_5
    move v0, v1

    .line 564
    goto :goto_1
.end method

.method private static d(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 1312
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 1313
    :goto_0
    if-eqz v0, :cond_0

    .line 1314
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 1316
    :cond_0
    return-void

    .line 1312
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 652
    const/4 v0, 0x3

    invoke-direct {p0, v0, v1}, Lcom/e/a/a/a/b/l;->a(IZ)Z

    .line 654
    if-eqz p1, :cond_1

    .line 655
    invoke-direct {p0, v1}, Lcom/e/a/a/a/b/l;->e(Z)V

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    invoke-virtual {p0}, Lcom/e/a/a/a/b/l;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->x:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 659
    new-instance v0, Lcom/e/a/a/a/b/o;

    invoke-direct {v0, p0}, Lcom/e/a/a/a/b/o;-><init>(Lcom/e/a/a/a/b/l;)V

    iput-object v0, p0, Lcom/e/a/a/a/b/l;->x:Ljava/lang/Runnable;

    .line 668
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/e/a/a/a/b/l;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private d(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 789
    iget-boolean v0, p0, Lcom/e/a/a/a/b/l;->r:Z

    if-eqz v0, :cond_0

    .line 790
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/e/a/a/a/b/l;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;Z)Z

    move-result v0

    .line 792
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 883
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/e/a/a/a/b/l;->F:I

    .line 884
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/e/a/a/a/b/l;->G:I

    .line 886
    iget v0, p0, Lcom/e/a/a/a/b/l;->J:I

    iget v1, p0, Lcom/e/a/a/a/b/l;->F:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/e/a/a/a/b/l;->J:I

    .line 887
    iget v0, p0, Lcom/e/a/a/a/b/l;->K:I

    iget v1, p0, Lcom/e/a/a/a/b/l;->G:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/e/a/a/a/b/l;->K:I

    .line 888
    iget v0, p0, Lcom/e/a/a/a/b/l;->L:I

    iget v1, p0, Lcom/e/a/a/a/b/l;->F:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/e/a/a/a/b/l;->L:I

    .line 889
    iget v0, p0, Lcom/e/a/a/a/b/l;->M:I

    iget v1, p0, Lcom/e/a/a/a/b/l;->G:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/e/a/a/a/b/l;->M:I

    .line 892
    invoke-direct {p0}, Lcom/e/a/a/a/b/l;->h()V

    .line 895
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->D:Lcom/e/a/a/a/b/h;

    invoke-virtual {v0, p2}, Lcom/e/a/a/a/b/h;->a(Landroid/view/MotionEvent;)V

    .line 896
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->E:Lcom/e/a/a/a/b/t;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->E:Lcom/e/a/a/a/b/t;

    iget-object v1, p0, Lcom/e/a/a/a/b/l;->D:Lcom/e/a/a/a/b/h;

    invoke-virtual {v1}, Lcom/e/a/a/a/b/h;->c()I

    move-result v1

    iget-object v2, p0, Lcom/e/a/a/a/b/l;->D:Lcom/e/a/a/a/b/h;

    invoke-virtual {v2}, Lcom/e/a/a/a/b/h;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/e/a/a/a/b/t;->a(II)V

    .line 901
    :cond_0
    invoke-direct {p0, p1}, Lcom/e/a/a/a/b/l;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 902
    return-void
.end method

.method private e(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 677
    invoke-virtual {p0}, Lcom/e/a/a/a/b/l;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 682
    :cond_1
    iget-object v1, p0, Lcom/e/a/a/a/b/l;->x:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 683
    iget-object v1, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/e/a/a/a/b/l;->x:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 684
    iput-object v4, p0, Lcom/e/a/a/a/b/l;->x:Ljava/lang/Runnable;

    .line 688
    :cond_2
    iget-object v1, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/e/a/a/a/b/l;->B:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_3

    .line 689
    iget-object v1, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    iget v2, p0, Lcom/e/a/a/a/b/l;->O:I

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setOverScrollMode(Landroid/view/View;I)V

    .line 692
    :cond_3
    iget-object v1, p0, Lcom/e/a/a/a/b/l;->D:Lcom/e/a/a/a/b/h;

    if-eqz v1, :cond_4

    .line 693
    iget-object v1, p0, Lcom/e/a/a/a/b/l;->D:Lcom/e/a/a/a/b/h;

    iget v2, p0, Lcom/e/a/a/a/b/l;->y:I

    invoke-virtual {v1, v2}, Lcom/e/a/a/a/b/h;->a(I)V

    .line 694
    iget-object v1, p0, Lcom/e/a/a/a/b/l;->D:Lcom/e/a/a/a/b/h;

    iget-object v2, p0, Lcom/e/a/a/a/b/l;->z:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Lcom/e/a/a/a/b/h;->a(Landroid/view/animation/Interpolator;)V

    .line 695
    iget-object v1, p0, Lcom/e/a/a/a/b/l;->D:Lcom/e/a/a/a/b/h;

    invoke-virtual {v1, v5}, Lcom/e/a/a/a/b/h;->a(Z)V

    .line 698
    :cond_4
    iget-object v1, p0, Lcom/e/a/a/a/b/l;->E:Lcom/e/a/a/a/b/t;

    if-eqz v1, :cond_5

    .line 699
    iget-object v1, p0, Lcom/e/a/a/a/b/l;->E:Lcom/e/a/a/a/b/t;

    iget v2, p0, Lcom/e/a/a/a/b/l;->y:I

    invoke-virtual {v1, v2}, Lcom/e/a/a/a/b/t;->a(I)V

    .line 700
    iget-object v1, p0, Lcom/e/a/a/a/b/l;->D:Lcom/e/a/a/a/b/h;

    iget-object v2, p0, Lcom/e/a/a/a/b/l;->z:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Lcom/e/a/a/a/b/h;->a(Landroid/view/animation/Interpolator;)V

    .line 701
    iget-object v1, p0, Lcom/e/a/a/a/b/l;->E:Lcom/e/a/a/a/b/t;

    invoke-virtual {v1, v5}, Lcom/e/a/a/a/b/t;->a(Z)V

    .line 704
    :cond_5
    iget-object v1, p0, Lcom/e/a/a/a/b/l;->i:Lcom/e/a/a/a/b/c;

    if-eqz v1, :cond_6

    .line 705
    iget-object v1, p0, Lcom/e/a/a/a/b/l;->i:Lcom/e/a/a/a/b/c;

    invoke-virtual {v1}, Lcom/e/a/a/a/b/c;->c()V

    .line 708
    :cond_6
    invoke-direct {p0}, Lcom/e/a/a/a/b/l;->j()V

    .line 710
    iget-object v1, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 711
    iget-object v1, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 714
    :cond_7
    iget-object v1, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_8

    .line 715
    iget-object v1, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 718
    :cond_8
    iput-object v4, p0, Lcom/e/a/a/a/b/l;->P:Lcom/e/a/a/a/b/j;

    .line 719
    iput-object v4, p0, Lcom/e/a/a/a/b/l;->D:Lcom/e/a/a/a/b/h;

    .line 720
    iput-object v4, p0, Lcom/e/a/a/a/b/l;->E:Lcom/e/a/a/a/b/t;

    .line 721
    iput-object v4, p0, Lcom/e/a/a/a/b/l;->B:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 722
    iput-object v4, p0, Lcom/e/a/a/a/b/l;->C:Lcom/e/a/a/a/b/i;

    .line 724
    iput v3, p0, Lcom/e/a/a/a/b/l;->F:I

    .line 725
    iput v3, p0, Lcom/e/a/a/a/b/l;->G:I

    .line 726
    iput v3, p0, Lcom/e/a/a/a/b/l;->H:I

    .line 727
    iput v3, p0, Lcom/e/a/a/a/b/l;->I:I

    .line 728
    iput v3, p0, Lcom/e/a/a/a/b/l;->J:I

    .line 729
    iput v3, p0, Lcom/e/a/a/a/b/l;->K:I

    .line 730
    iput v3, p0, Lcom/e/a/a/a/b/l;->L:I

    .line 731
    iput v3, p0, Lcom/e/a/a/a/b/l;->M:I

    .line 732
    iput-boolean v3, p0, Lcom/e/a/a/a/b/l;->S:Z

    .line 733
    iput-boolean v3, p0, Lcom/e/a/a/a/b/l;->T:Z

    .line 740
    iget-object v1, p0, Lcom/e/a/a/a/b/l;->A:Lcom/e/a/a/a/b/g;

    if-eqz v1, :cond_9

    .line 741
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->A:Lcom/e/a/a/a/b/g;

    invoke-virtual {v0}, Lcom/e/a/a/a/b/g;->d()I

    move-result v1

    .line 742
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->A:Lcom/e/a/a/a/b/g;

    invoke-virtual {v0}, Lcom/e/a/a/a/b/g;->e()I

    move-result v0

    .line 743
    iget-object v2, p0, Lcom/e/a/a/a/b/l;->A:Lcom/e/a/a/a/b/g;

    invoke-virtual {v2, p1}, Lcom/e/a/a/a/b/g;->a(Z)V

    .line 750
    :goto_1
    iget-object v2, p0, Lcom/e/a/a/a/b/l;->R:Lcom/e/a/a/a/b/r;

    if-eqz v2, :cond_0

    .line 751
    iget-object v2, p0, Lcom/e/a/a/a/b/l;->R:Lcom/e/a/a/a/b/r;

    invoke-interface {v2, v1, v0, p1}, Lcom/e/a/a/a/b/r;->a(IIZ)V

    goto/16 :goto_0

    :cond_9
    move v1, v0

    goto :goto_1
.end method

.method private h()V
    .locals 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lcom/e/a/a/a/d/d;->e(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 906
    iget v0, p0, Lcom/e/a/a/a/b/l;->I:I

    iget v1, p0, Lcom/e/a/a/a/b/l;->K:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/e/a/a/a/b/l;->m:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/e/a/a/a/b/l;->M:I

    iget v1, p0, Lcom/e/a/a/a/b/l;->G:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/e/a/a/a/b/l;->m:I

    if-le v0, v1, :cond_1

    .line 908
    :cond_0
    iget v0, p0, Lcom/e/a/a/a/b/l;->N:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/e/a/a/a/b/l;->N:I

    .line 910
    :cond_1
    iget v0, p0, Lcom/e/a/a/a/b/l;->M:I

    iget v1, p0, Lcom/e/a/a/a/b/l;->I:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/e/a/a/a/b/l;->m:I

    if-gt v0, v1, :cond_2

    iget v0, p0, Lcom/e/a/a/a/b/l;->G:I

    iget v1, p0, Lcom/e/a/a/a/b/l;->K:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/e/a/a/a/b/l;->m:I

    if-le v0, v1, :cond_3

    .line 912
    :cond_2
    iget v0, p0, Lcom/e/a/a/a/b/l;->N:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/e/a/a/a/b/l;->N:I

    .line 924
    :cond_3
    :goto_0
    return-void

    .line 914
    :cond_4
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lcom/e/a/a/a/d/d;->e(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    if-nez v0, :cond_3

    .line 915
    iget v0, p0, Lcom/e/a/a/a/b/l;->H:I

    iget v1, p0, Lcom/e/a/a/a/b/l;->J:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/e/a/a/a/b/l;->m:I

    if-gt v0, v1, :cond_5

    iget v0, p0, Lcom/e/a/a/a/b/l;->L:I

    iget v1, p0, Lcom/e/a/a/a/b/l;->F:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/e/a/a/a/b/l;->m:I

    if-le v0, v1, :cond_6

    .line 917
    :cond_5
    iget v0, p0, Lcom/e/a/a/a/b/l;->N:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/e/a/a/a/b/l;->N:I

    .line 919
    :cond_6
    iget v0, p0, Lcom/e/a/a/a/b/l;->L:I

    iget v1, p0, Lcom/e/a/a/a/b/l;->H:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/e/a/a/a/b/l;->m:I

    if-gt v0, v1, :cond_7

    iget v0, p0, Lcom/e/a/a/a/b/l;->F:I

    iget v1, p0, Lcom/e/a/a/a/b/l;->J:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/e/a/a/a/b/l;->m:I

    if-le v0, v1, :cond_3

    .line 921
    :cond_7
    iget v0, p0, Lcom/e/a/a/a/b/l;->N:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/e/a/a/a/b/l;->N:I

    goto :goto_0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->e:Lcom/e/a/a/a/b/s;

    invoke-virtual {v0}, Lcom/e/a/a/a/b/s;->a()V

    .line 1126
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->e:Lcom/e/a/a/a/b/s;

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->e:Lcom/e/a/a/a/b/s;

    invoke-virtual {v0}, Lcom/e/a/a/a/b/s;->b()V

    .line 1132
    :cond_0
    return-void
.end method

.method private static k()Z
    .locals 2

    .prologue
    .line 1297
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static l()Z
    .locals 2

    .prologue
    .line 1301
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$Adapter;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 2
    .param p1    # Landroid/support/v7/widget/RecyclerView$Adapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 208
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->A:Lcom/e/a/a/a/b/g;

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "already have a wrapped adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    new-instance v0, Lcom/e/a/a/a/b/g;

    invoke-direct {v0, p0, p1}, Lcom/e/a/a/a/b/g;-><init>(Lcom/e/a/a/a/b/l;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcom/e/a/a/a/b/l;->A:Lcom/e/a/a/a/b/g;

    .line 214
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->A:Lcom/e/a/a/a/b/g;

    return-object v0
.end method

.method a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .prologue
    .line 1503
    iput-object p1, p0, Lcom/e/a/a/a/b/l;->B:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 1504
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->D:Lcom/e/a/a/a/b/h;

    invoke-virtual {v0, p1}, Lcom/e/a/a/a/b/h;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1505
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/e/a/a/a/b/l;->a(Landroid/support/v7/widget/RecyclerView;Lcom/e/a/a/a/c/c;)V

    .line 237
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 545
    if-ne p2, v0, :cond_0

    .line 546
    invoke-direct {p0, v0}, Lcom/e/a/a/a/b/l;->d(Z)V

    .line 548
    :cond_0
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/e/a/a/a/b/l;->t:Z

    if-eqz v0, :cond_0

    .line 535
    iput p2, p0, Lcom/e/a/a/a/b/l;->u:I

    .line 536
    iput p3, p0, Lcom/e/a/a/a/b/l;->v:I

    .line 538
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Lcom/e/a/a/a/c/c;)V
    .locals 2
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/e/a/a/a/c/c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 250
    if-nez p1, :cond_0

    .line 251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "RecyclerView cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/e/a/a/a/b/l;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Accessing released object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 259
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RecyclerView instance has already been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->A:Lcom/e/a/a/a/b/g;

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/e/a/a/a/b/l;->c(Landroid/support/v7/widget/RecyclerView;)Lcom/e/a/a/a/b/g;

    move-result-object v0

    iget-object v1, p0, Lcom/e/a/a/a/b/l;->A:Lcom/e/a/a/a/b/g;

    if-eq v0, v1, :cond_4

    .line 263
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "adapter is not set properly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_4
    if-eqz p2, :cond_5

    .line 267
    invoke-virtual {p2}, Lcom/e/a/a/a/c/c;->a()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_5

    if-eq v0, p1, :cond_5

    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The scroll event distributor attached to different RecyclerView instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_5
    iput-object p1, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    .line 276
    if-eqz p2, :cond_7

    .line 277
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->h:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p2, v0}, Lcom/e/a/a/a/c/c;->a(Ljava/lang/Object;)Z

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/e/a/a/a/b/l;->f:Z

    .line 284
    :goto_0
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/e/a/a/a/b/l;->g:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 286
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/e/a/a/a/b/l;->k:F

    .line 287
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/e/a/a/a/b/l;->l:I

    .line 288
    iget v0, p0, Lcom/e/a/a/a/b/l;->l:I

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/e/a/a/a/b/l;->m:I

    .line 289
    new-instance v0, Lcom/e/a/a/a/b/q;

    invoke-direct {v0, p0}, Lcom/e/a/a/a/b/q;-><init>(Lcom/e/a/a/a/b/l;)V

    iput-object v0, p0, Lcom/e/a/a/a/b/l;->Q:Lcom/e/a/a/a/b/q;

    .line 291
    invoke-static {}, Lcom/e/a/a/a/b/l;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 293
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lcom/e/a/a/a/d/d;->e(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 301
    :goto_1
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->i:Lcom/e/a/a/a/b/c;

    if-eqz v0, :cond_6

    .line 302
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->i:Lcom/e/a/a/a/b/c;

    invoke-virtual {v0}, Lcom/e/a/a/a/b/c;->a()V

    .line 305
    :cond_6
    return-void

    .line 280
    :cond_7
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/e/a/a/a/b/l;->h:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/e/a/a/a/b/l;->f:Z

    goto :goto_0

    .line 295
    :pswitch_0
    new-instance v0, Lcom/e/a/a/a/b/k;

    iget-object v1, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v0, v1}, Lcom/e/a/a/a/b/k;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/e/a/a/a/b/l;->i:Lcom/e/a/a/a/b/c;

    goto :goto_1

    .line 298
    :pswitch_1
    new-instance v0, Lcom/e/a/a/a/b/u;

    iget-object v1, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v0, v1}, Lcom/e/a/a/a/b/u;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/e/a/a/a/b/l;->i:Lcom/e/a/a/a/b/c;

    goto :goto_1

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 386
    iput-boolean p1, p0, Lcom/e/a/a/a/b/l;->q:Z

    .line 387
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->g:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 464
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    .line 470
    packed-switch v1, :pswitch_data_0

    .line 494
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 473
    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/e/a/a/a/b/l;->a(IZ)Z

    goto :goto_0

    .line 477
    :pswitch_1
    invoke-virtual {p0}, Lcom/e/a/a/a/b/l;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    invoke-direct {p0, p1, p2}, Lcom/e/a/a/a/b/l;->c(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 483
    :pswitch_2
    invoke-virtual {p0}, Lcom/e/a/a/a/b/l;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    invoke-direct {p0, p1, p2}, Lcom/e/a/a/a/b/l;->e(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 488
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/e/a/a/a/b/l;->d(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 470
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 312
    invoke-virtual {p0}, Lcom/e/a/a/a/b/l;->d()V

    .line 314
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->Q:Lcom/e/a/a/a/b/q;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->Q:Lcom/e/a/a/a/b/q;

    invoke-virtual {v0}, Lcom/e/a/a/a/b/q;->a()V

    .line 316
    iput-object v2, p0, Lcom/e/a/a/a/b/l;->Q:Lcom/e/a/a/a/b/q;

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->i:Lcom/e/a/a/a/b/c;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->i:Lcom/e/a/a/a/b/c;

    invoke-virtual {v0}, Lcom/e/a/a/a/b/c;->b()V

    .line 321
    iput-object v2, p0, Lcom/e/a/a/a/b/l;->i:Lcom/e/a/a/a/b/c;

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/e/a/a/a/b/l;->g:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/e/a/a/a/b/l;->g:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 327
    :cond_2
    iput-object v2, p0, Lcom/e/a/a/a/b/l;->g:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 329
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/e/a/a/a/b/l;->h:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/e/a/a/a/b/l;->f:Z

    if-eqz v0, :cond_3

    .line 330
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/e/a/a/a/b/l;->h:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 332
    :cond_3
    iput-object v2, p0, Lcom/e/a/a/a/b/l;->h:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 334
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->e:Lcom/e/a/a/a/b/s;

    if-eqz v0, :cond_4

    .line 335
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->e:Lcom/e/a/a/a/b/s;

    invoke-virtual {v0}, Lcom/e/a/a/a/b/s;->c()V

    .line 336
    iput-object v2, p0, Lcom/e/a/a/a/b/l;->e:Lcom/e/a/a/a/b/s;

    .line 338
    :cond_4
    iput-object v2, p0, Lcom/e/a/a/a/b/l;->A:Lcom/e/a/a/a/b/g;

    .line 339
    iput-object v2, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    .line 340
    iput-object v2, p0, Lcom/e/a/a/a/b/l;->d:Landroid/view/animation/Interpolator;

    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/e/a/a/a/b/l;->f:Z

    .line 342
    return-void
.end method

.method b(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 498
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 504
    invoke-virtual {p0}, Lcom/e/a/a/a/b/l;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 520
    :goto_0
    return-void

    .line 509
    :cond_0
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 512
    :pswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/e/a/a/a/b/l;->a(IZ)Z

    goto :goto_0

    .line 516
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/e/a/a/a/b/l;->e(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 509
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 404
    iput-boolean p1, p0, Lcom/e/a/a/a/b/l;->r:Z

    .line 405
    return-void
.end method

.method c(Z)V
    .locals 1

    .prologue
    .line 523
    if-eqz p1, :cond_0

    .line 524
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/e/a/a/a/b/l;->d(Z)V

    .line 526
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->C:Lcom/e/a/a/a/b/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/e/a/a/a/b/l;->x:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/e/a/a/a/b/l;->d(Z)V

    .line 649
    return-void
.end method

.method e()V
    .locals 2

    .prologue
    .line 941
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    .line 943
    invoke-static {v0}, Lcom/e/a/a/a/d/d;->e(Landroid/support/v7/widget/RecyclerView;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 951
    :goto_0
    return-void

    .line 945
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/e/a/a/a/b/l;->a(Landroid/support/v7/widget/RecyclerView;Z)V

    goto :goto_0

    .line 948
    :pswitch_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/e/a/a/a/b/l;->a(Landroid/support/v7/widget/RecyclerView;Z)V

    goto :goto_0

    .line 943
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method f()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->c:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method g()V
    .locals 1

    .prologue
    .line 1498
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/e/a/a/a/b/l;->B:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 1499
    iget-object v0, p0, Lcom/e/a/a/a/b/l;->D:Lcom/e/a/a/a/b/h;

    invoke-virtual {v0}, Lcom/e/a/a/a/b/h;->l()V

    .line 1500
    return-void
.end method
