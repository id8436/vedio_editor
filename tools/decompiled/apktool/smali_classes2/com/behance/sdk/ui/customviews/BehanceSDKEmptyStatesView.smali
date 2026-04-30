.class public Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;
.super Landroid/widget/FrameLayout;
.source "BehanceSDKEmptyStatesView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$layout;->bsdk_custom_view_empty_state:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;->addView(Landroid/view/View;)V

    .line 33
    sget-object v0, Lcom/behance/sdk/R$styleable;->BehanceSDKEmptyStatesView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 35
    sget v1, Lcom/behance/sdk/R$styleable;->BehanceSDKEmptyStatesView_bsdk_image_res:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 36
    sget v1, Lcom/behance/sdk/R$styleable;->BehanceSDKEmptyStatesView_bsdk_title_res:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;->setTitleText(Ljava/lang/String;)V

    .line 37
    sget v1, Lcom/behance/sdk/R$styleable;->BehanceSDKEmptyStatesView_bsdk_description_res:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;->setDescriptionText(Ljava/lang/String;)V

    .line 38
    sget v1, Lcom/behance/sdk/R$styleable;->BehanceSDKEmptyStatesView_bsdk_action_res:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;->setActionText(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    return-void
.end method


# virtual methods
.method public setActionText(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 64
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    sget v0, Lcom/behance/sdk/R$id;->bsdk_empty_state_action:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_1
    sget v0, Lcom/behance/sdk/R$id;->bsdk_empty_state_action:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    sget v0, Lcom/behance/sdk/R$id;->bsdk_empty_state_action:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setActionViewOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/behance/sdk/R$id;->bsdk_empty_state_action:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method

.method public setDescriptionText(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 55
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    sget v0, Lcom/behance/sdk/R$id;->bsdk_empty_state_description:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_1
    sget v0, Lcom/behance/sdk/R$id;->bsdk_empty_state_description:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    sget v0, Lcom/behance/sdk/R$id;->bsdk_empty_state_description:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    sget v0, Lcom/behance/sdk/R$id;->bsdk_empty_state_icon:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    sget v0, Lcom/behance/sdk/R$id;->bsdk_empty_state_icon:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    sget v0, Lcom/behance/sdk/R$id;->bsdk_empty_state_icon:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 46
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    sget v0, Lcom/behance/sdk/R$id;->bsdk_empty_state_title:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_1
    sget v0, Lcom/behance/sdk/R$id;->bsdk_empty_state_title:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    sget v0, Lcom/behance/sdk/R$id;->bsdk_empty_state_title:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
