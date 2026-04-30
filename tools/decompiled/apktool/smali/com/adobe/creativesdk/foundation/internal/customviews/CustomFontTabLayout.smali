.class public Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;
.super Landroid/support/design/widget/TabLayout;
.source "CustomFontTabLayout.java"


# instance fields
.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;->init()V

    .line 32
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/AdobeClean-SemiLight.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;->mTypeface:Landroid/graphics/Typeface;

    .line 36
    return-void
.end method


# virtual methods
.method public addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V
    .locals 7
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 40
    invoke-super {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 42
    invoke-virtual {p0, v3}, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 43
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 45
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v2, v3

    .line 46
    :goto_0
    if-ge v2, v4, :cond_1

    .line 47
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 48
    instance-of v5, v1, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 49
    check-cast v1, Landroid/widget/TextView;

    .line 50
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 51
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 52
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 46
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method

.method public dynamicallyAddTab(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 58
    invoke-virtual {p0, v3}, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 59
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    .line 60
    invoke-virtual {v1, p1}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 61
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;->getTabCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatTextView;

    .line 62
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 63
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/AppCompatTextView;->setSingleLine(Z)V

    .line 64
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/AppCompatTextView;->setAllCaps(Z)V

    .line 65
    return-void
.end method
