.class public Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;
.super Landroid/support/v7/widget/RecyclerView;
.source "BehanceSDKInsetPaddedRecycler.java"


# instance fields
.field private bottomSystemPadding:I

.field private padSystemWindowsBottom:Z

.field private padSystemWindowsTop:Z

.field private paddingBottom:I

.field private paddingTop:I

.field private topSystemPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    sget-object v0, Lcom/behance/sdk/R$styleable;->BehanceSDKEndlessScrollRecycler:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 37
    sget v1, Lcom/behance/sdk/R$styleable;->BehanceSDKEndlessScrollRecycler_padSystemWindowTop:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->padSystemWindowsTop:Z

    .line 38
    sget v1, Lcom/behance/sdk/R$styleable;->BehanceSDKEndlessScrollRecycler_padSystemWindowBottom:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->padSystemWindowsBottom:Z

    .line 39
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->isPadInsets()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->paddingTop:I

    .line 42
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->paddingBottom:I

    .line 43
    iput v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->topSystemPadding:I

    .line 44
    iput v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->bottomSystemPadding:I

    .line 46
    :cond_0
    return-void
.end method

.method private isPadInsets()Z
    .locals 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->padSystemWindowsTop:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->padSystemWindowsBottom:Z

    if-eqz v0, :cond_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->isPadInsets()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->padSystemWindowsTop:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->topSystemPadding:I

    .line 74
    iget-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->padSystemWindowsBottom:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->bottomSystemPadding:I

    .line 75
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->paddingTop:I

    iget v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->topSystemPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->paddingBottom:I

    iget v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->bottomSystemPadding:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->setPadding(IIII)V

    .line 77
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    :cond_2
    move v0, v1

    .line 73
    goto :goto_0
.end method

.method public setPadding(I)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->isPadInsets()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iput p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->paddingTop:I

    .line 52
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->topSystemPadding:I

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->paddingBottom:I

    iget v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->bottomSystemPadding:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->setPadding(IIII)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->getPaddingRight()I

    move-result v1

    iget v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->paddingBottom:I

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setPadding(II)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->isPadInsets()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iput p2, p0, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->paddingBottom:I

    .line 62
    iput p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->paddingTop:I

    .line 63
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->topSystemPadding:I

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->bottomSystemPadding:I

    add-int/2addr v3, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->setPadding(IIII)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/behance/sdk/ui/components/BehanceSDKInsetPaddedRecycler;->setPadding(IIII)V

    goto :goto_0
.end method
