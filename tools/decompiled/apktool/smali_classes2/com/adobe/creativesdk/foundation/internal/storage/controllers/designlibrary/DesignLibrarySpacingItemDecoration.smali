.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "DesignLibrarySpacingItemDecoration.java"


# instance fields
.field horizontalSpacing:I

.field private isFixedColumn:Z

.field private numFixedColumnsCount:I

.field verticalSpacing:I


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 12
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;->isFixedColumn:Z

    .line 13
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;->numFixedColumnsCount:I

    .line 19
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_2

    move v2, v0

    .line 20
    :goto_0
    if-nez v2, :cond_0

    .line 21
    add-int/lit8 p1, p1, 0x1

    .line 23
    :cond_0
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_3

    .line 24
    :goto_1
    if-nez v0, :cond_1

    .line 25
    add-int/lit8 p2, p2, 0x1

    .line 28
    :cond_1
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;->verticalSpacing:I

    .line 29
    iput p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;->horizontalSpacing:I

    .line 30
    return-void

    :cond_2
    move v2, v1

    .line 19
    goto :goto_0

    :cond_3
    move v0, v1

    .line 23
    goto :goto_1
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v1

    .line 47
    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;->verticalSpacing:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 48
    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;->horizontalSpacing:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 51
    iget-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;->isFixedColumn:Z

    if-eqz v2, :cond_0

    .line 52
    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;->numFixedColumnsCount:I

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    .line 54
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    .line 55
    :cond_1
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;->verticalSpacing:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 58
    :cond_2
    return-void
.end method

.method public setFixedColumn(I)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;->isFixedColumn:Z

    .line 34
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;->numFixedColumnsCount:I

    .line 35
    return-void
.end method

.method public setMultiColumnDelegate()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;->isFixedColumn:Z

    .line 39
    return-void
.end method
