.class public Lcom/behance/sdk/ui/components/BehanceSDKFollowUnFollowButton;
.super Landroid/widget/Button;
.source "BehanceSDKFollowUnFollowButton.java"


# instance fields
.field private context:Landroid/content/Context;

.field private usesFollowAll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKFollowUnFollowButton;->usesFollowAll:Z

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/ui/components/BehanceSDKFollowUnFollowButton;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKFollowUnFollowButton;->context:Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKFollowUnFollowButton;->layout()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKFollowUnFollowButton;->usesFollowAll:Z

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/ui/components/BehanceSDKFollowUnFollowButton;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKFollowUnFollowButton;->context:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKFollowUnFollowButton;->layout()V

    .line 35
    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 38
    sget-object v0, Lcom/behance/sdk/R$styleable;->BehanceSDKFollowButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    sget v1, Lcom/behance/sdk/R$styleable;->BehanceSDKFollowButton_bsdk_uses_follow_all:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKFollowUnFollowButton;->usesFollowAll:Z

    .line 40
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    return-void
.end method

.method private layout()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 45
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKFollowUnFollowButton;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 46
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 47
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 49
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKFollowUnFollowButton;->getTextSize()F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_0

    .line 51
    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 53
    :cond_0
    sget v0, Lcom/behance/sdk/R$string;->bsdk_follow:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v0, v7, v4, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 55
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 57
    sget v4, Lcom/behance/sdk/R$string;->bsdk_unfollow:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 58
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v7, v5, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 59
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    .line 61
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 63
    iget-boolean v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKFollowUnFollowButton;->usesFollowAll:Z

    if-eqz v5, :cond_1

    .line 64
    sget v5, Lcom/behance/sdk/R$string;->bsdk_follow_all:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 65
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v4, v7, v6, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 66
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    .line 68
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 71
    :cond_1
    sget v2, Lcom/behance/sdk/R$dimen;->bsdk_follow_button_horizontal_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKFollowUnFollowButton;->setWidth(I)V

    .line 72
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 81
    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    .line 82
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->onMeasure(II)V

    .line 77
    return-void
.end method
