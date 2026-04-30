.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/DividerDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "DividerDecoration.java"


# static fields
.field private static final ATTRS:[I


# instance fields
.field private leftMargin:I

.field private mDivider1:Landroid/graphics/drawable/Drawable;

.field private mDivider2:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/DividerDecoration;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->sectional_list_divider_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/DividerDecoration;->mDivider1:Landroid/graphics/drawable/Drawable;

    .line 26
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/DividerDecoration;->ATTRS:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 27
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/DividerDecoration;->mDivider2:Landroid/graphics/drawable/Drawable;

    .line 28
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    iput p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/DividerDecoration;->leftMargin:I

    .line 30
    return-void
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 8

    .prologue
    .line 34
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    .line 35
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    .line 37
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v4

    .line 38
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int/lit8 v0, v4, -0x1

    if-ge v1, v0, :cond_0

    .line 39
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 41
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 43
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v5

    .line 44
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/DividerDecoration;->mDivider1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v0

    .line 46
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/DividerDecoration;->mDivider1:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/DividerDecoration;->leftMargin:I

    add-int/2addr v7, v2

    invoke-virtual {v6, v2, v0, v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 47
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/DividerDecoration;->mDivider1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 48
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/DividerDecoration;->mDivider2:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/DividerDecoration;->leftMargin:I

    add-int/2addr v7, v2

    invoke-virtual {v6, v7, v0, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 49
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/DividerDecoration;->mDivider2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 38
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method
