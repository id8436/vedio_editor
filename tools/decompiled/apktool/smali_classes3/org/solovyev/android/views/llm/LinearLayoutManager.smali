.class public Lorg/solovyev/android/views/llm/LinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "LinearLayoutManager.java"


# static fields
.field private static final CHILD_HEIGHT:I = 0x1

.field private static final CHILD_WIDTH:I = 0x0

.field private static final DEFAULT_CHILD_SIZE:I = 0x64

.field private static canMakeInsetsDirty:Z

.field private static insetsDirtyField:Ljava/lang/reflect/Field;


# instance fields
.field private final childDimensions:[I

.field private childSize:I

.field private hasChildSize:Z

.field private overScrollMode:I

.field private final tmpRect:Landroid/graphics/Rect;

.field private final view:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->canMakeInsetsDirty:Z

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->insetsDirtyField:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->childDimensions:[I

    .line 34
    const/16 v0, 0x64

    iput v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->childSize:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->overScrollMode:I

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->tmpRect:Landroid/graphics/Rect;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->view:Landroid/support/v7/widget/RecyclerView;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->childDimensions:[I

    .line 34
    const/16 v0, 0x64

    iput v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->childSize:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->overScrollMode:I

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->tmpRect:Landroid/graphics/Rect;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->view:Landroid/support/v7/widget/RecyclerView;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->childDimensions:[I

    .line 34
    const/16 v0, 0x64

    iput v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->childSize:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->overScrollMode:I

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->tmpRect:Landroid/graphics/Rect;

    .line 54
    iput-object p1, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->view:Landroid/support/v7/widget/RecyclerView;

    .line 55
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->overScrollMode:I

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;IZ)V
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->childDimensions:[I

    .line 34
    const/16 v0, 0x64

    iput v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->childSize:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->overScrollMode:I

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->tmpRect:Landroid/graphics/Rect;

    .line 61
    iput-object p1, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->view:Landroid/support/v7/widget/RecyclerView;

    .line 62
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->overScrollMode:I

    .line 63
    return-void
.end method

.method private initChildDimensions(IIZ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 191
    iget-object v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->childDimensions:[I

    aget v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->childDimensions:[I

    aget v0, v0, v3

    if-eqz v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    if-eqz p3, :cond_2

    .line 196
    iget-object v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->childDimensions:[I

    aput p1, v0, v2

    .line 197
    iget-object v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->childDimensions:[I

    iget v1, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->childSize:I

    aput v1, v0, v3

    goto :goto_0

    .line 199
    :cond_2
    iget-object v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->childDimensions:[I

    iget v1, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->childSize:I

    aput v1, v0, v2

    .line 200
    iget-object v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->childDimensions:[I

    aput p2, v0, v3

    goto :goto_0
.end method

.method private logMeasureWarning(I)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method private static makeInsetsDirty(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V
    .locals 2

    .prologue
    .line 263
    sget-boolean v0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->canMakeInsetsDirty:Z

    if-nez v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 267
    :cond_0
    :try_start_0
    sget-object v0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->insetsDirtyField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    .line 268
    const-class v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const-string/jumbo v1, "mInsetsDirty"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->insetsDirtyField:Ljava/lang/reflect/Field;

    .line 269
    sget-object v0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->insetsDirtyField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 271
    :cond_1
    sget-object v0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->insetsDirtyField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    invoke-static {}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->onMakeInsertDirtyFailed()V

    goto :goto_0

    .line 274
    :catch_1
    move-exception v0

    .line 275
    invoke-static {}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->onMakeInsertDirtyFailed()V

    goto :goto_0
.end method

.method public static makeUnspecifiedSpec()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private measureChild(Landroid/support/v7/widget/RecyclerView$Recycler;III[I)V
    .locals 9

    .prologue
    .line 231
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    .line 233
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 235
    invoke-virtual {p0}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    .line 236
    invoke-virtual {p0}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 238
    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 239
    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    iget v6, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .line 242
    invoke-static {v0}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->makeInsetsDirty(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V

    .line 244
    iget-object v6, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v6}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 246
    invoke-virtual {p0, v1}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p0, v1}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    .line 247
    invoke-virtual {p0, v1}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v7

    invoke-virtual {p0, v1}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    .line 249
    add-int/2addr v2, v4

    add-int/2addr v2, v6

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-virtual {p0}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->canScrollHorizontally()Z

    move-result v6

    invoke-static {p3, v2, v4, v6}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result v2

    .line 250
    add-int/2addr v3, v5

    add-int/2addr v3, v7

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-virtual {p0}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->canScrollVertically()Z

    move-result v5

    invoke-static {p4, v3, v4, v5}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result v3

    .line 252
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 254
    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v3

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    aput v3, p5, v2

    .line 255
    const/4 v2, 0x1

    invoke-virtual {p0, v1}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v3

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    aput v3, p5, v2

    .line 258
    invoke-static {v0}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->makeInsetsDirty(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V

    .line 259
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 260
    return-void
.end method

.method private static onMakeInsertDirtyFailed()V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    sput-boolean v0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->canMakeInsetsDirty:Z

    .line 284
    return-void
.end method


# virtual methods
.method public clearChildSize()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->hasChildSize:Z

    .line 219
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->setChildSize(I)V

    .line 220
    return-void
.end method

.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 21

    .prologue
    .line 79
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 80
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 82
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 83
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 85
    if-eqz v2, :cond_1

    const/4 v1, 0x1

    move/from16 v18, v1

    .line 86
    :goto_0
    if-eqz v3, :cond_2

    const/4 v1, 0x1

    move/from16 v17, v1

    .line 88
    :goto_1
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v2, v1, :cond_3

    const/4 v1, 0x1

    move/from16 v16, v1

    .line 89
    :goto_2
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v3, v1, :cond_4

    const/4 v1, 0x1

    move v12, v1

    .line 91
    :goto_3
    invoke-static {}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->makeUnspecifiedSpec()I

    move-result v5

    .line 93
    if-eqz v16, :cond_5

    if-eqz v12, :cond_5

    .line 95
    invoke-super/range {p0 .. p4}, Landroid/support/v7/widget/LinearLayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 181
    :cond_0
    :goto_4
    return-void

    .line 85
    :cond_1
    const/4 v1, 0x0

    move/from16 v18, v1

    goto :goto_0

    .line 86
    :cond_2
    const/4 v1, 0x0

    move/from16 v17, v1

    goto :goto_1

    .line 88
    :cond_3
    const/4 v1, 0x0

    move/from16 v16, v1

    goto :goto_2

    .line 89
    :cond_4
    const/4 v1, 0x0

    move v12, v1

    goto :goto_3

    .line 99
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    const/4 v1, 0x1

    move v13, v1

    .line 101
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10, v13}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->initChildDimensions(IIZ)V

    .line 103
    const/4 v15, 0x0

    .line 104
    const/4 v14, 0x0

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v19

    .line 113
    invoke-virtual/range {p0 .. p0}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->getItemCount()I

    move-result v20

    .line 117
    const/4 v3, 0x0

    :goto_6
    move/from16 v0, v20

    if-ge v3, v0, :cond_17

    .line 118
    if-eqz v13, :cond_c

    .line 119
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->hasChildSize:Z

    if-nez v1, :cond_6

    .line 120
    move/from16 v0, v19

    if-ge v3, v0, :cond_b

    .line 123
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->childDimensions:[I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->measureChild(Landroid/support/v7/widget/RecyclerView$Recycler;III[I)V

    .line 128
    :cond_6
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->childDimensions:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/2addr v1, v14

    .line 129
    if-nez v3, :cond_16

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->childDimensions:[I

    const/4 v6, 0x0

    aget v2, v2, v6

    .line 132
    :goto_8
    if-eqz v17, :cond_f

    if-lt v1, v10, :cond_f

    move v3, v1

    .line 155
    :goto_9
    if-eqz v16, :cond_10

    move v2, v4

    .line 164
    :goto_a
    if-eqz v12, :cond_11

    move v1, v10

    .line 173
    :cond_7
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->setMeasuredDimension(II)V

    .line 175
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->view:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->overScrollMode:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 176
    if-eqz v13, :cond_8

    if-eqz v17, :cond_9

    if-lt v1, v10, :cond_9

    :cond_8
    if-nez v13, :cond_12

    if-eqz v18, :cond_9

    if-ge v2, v4, :cond_12

    :cond_9
    const/4 v1, 0x1

    .line 179
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->view:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_13

    const/4 v1, 0x2

    :goto_d
    invoke-static {v2, v1}, Landroid/support/v4/view/ViewCompat;->setOverScrollMode(Landroid/view/View;I)V

    goto/16 :goto_4

    .line 99
    :cond_a
    const/4 v1, 0x0

    move v13, v1

    goto :goto_5

    .line 125
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->logMeasureWarning(I)V

    goto :goto_7

    .line 136
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->hasChildSize:Z

    if-nez v1, :cond_d

    .line 137
    move/from16 v0, v19

    if-ge v3, v0, :cond_e

    .line 140
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->childDimensions:[I

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move v8, v3

    move v9, v5

    invoke-direct/range {v6 .. v11}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->measureChild(Landroid/support/v7/widget/RecyclerView$Recycler;III[I)V

    .line 145
    :cond_d
    :goto_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->childDimensions:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int v2, v15, v1

    .line 146
    if-nez v3, :cond_15

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->childDimensions:[I

    const/4 v6, 0x1

    aget v1, v1, v6

    .line 149
    :goto_f
    if-eqz v18, :cond_f

    if-lt v2, v4, :cond_f

    move v3, v1

    .line 150
    goto :goto_9

    .line 142
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->logMeasureWarning(I)V

    goto :goto_e

    .line 117
    :cond_f
    add-int/lit8 v3, v3, 0x1

    move v14, v1

    move v15, v2

    goto/16 :goto_6

    .line 158
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->getPaddingRight()I

    move-result v5

    add-int/2addr v1, v5

    add-int/2addr v1, v2

    .line 159
    if-eqz v18, :cond_14

    .line 160
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, v1

    goto/16 :goto_a

    .line 167
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->getPaddingBottom()I

    move-result v5

    add-int/2addr v1, v5

    add-int/2addr v1, v3

    .line 168
    if-eqz v17, :cond_7

    .line 169
    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto/16 :goto_b

    .line 176
    :cond_12
    const/4 v1, 0x0

    goto :goto_c

    .line 179
    :cond_13
    const/4 v1, 0x0

    goto :goto_d

    :cond_14
    move v2, v1

    goto/16 :goto_a

    :cond_15
    move v1, v14

    goto :goto_f

    :cond_16
    move v2, v15

    goto/16 :goto_8

    :cond_17
    move v3, v14

    move v2, v15

    goto/16 :goto_9
.end method

.method public setChildSize(I)V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->hasChildSize:Z

    .line 224
    iget v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->childSize:I

    if-eq v0, p1, :cond_0

    .line 225
    iput p1, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->childSize:I

    .line 226
    invoke-virtual {p0}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->requestLayout()V

    .line 228
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-object v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->childDimensions:[I

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->getOrientation()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 210
    iget-object v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->childDimensions:[I

    aput v2, v0, v2

    .line 211
    iget-object v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->childDimensions:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 214
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 215
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3

    .prologue
    .line 66
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown overscroll mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    iget-object v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->view:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "view == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_2
    iput p1, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->overScrollMode:I

    .line 70
    iget-object v0, p0, Lorg/solovyev/android/views/llm/LinearLayoutManager;->view:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setOverScrollMode(Landroid/view/View;I)V

    .line 71
    return-void
.end method
