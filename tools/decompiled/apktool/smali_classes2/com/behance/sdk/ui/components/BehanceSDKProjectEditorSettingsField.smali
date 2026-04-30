.class public Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;
.super Landroid/widget/LinearLayout;
.source "BehanceSDKProjectEditorSettingsField.java"


# instance fields
.field private description:Landroid/widget/TextView;

.field private label:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->init(Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0, p2}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->init(Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0, p2}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->init(Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->setOrientation(I)V

    .line 40
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$layout;->bsdk_view_project_editor_settings:I

    invoke-static {v0, v1, p0}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    sget v0, Lcom/behance/sdk/R$id;->bsdk_settings_label:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->label:Landroid/widget/TextView;

    .line 43
    sget v0, Lcom/behance/sdk/R$id;->bsdk_settings_description:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->description:Landroid/widget/TextView;

    .line 45
    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/behance/sdk/R$styleable;->BehanceSDKSettingsView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    sget v1, Lcom/behance/sdk/R$styleable;->BehanceSDKSettingsView_bsdk_label_res:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->setLabelText(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$dimen;->bsdk_editor_settings_row_padding_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 52
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$dimen;->bsdk_editor_settings_row_padding_vertical:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 53
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_editor_settings_row_padding_horizontal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 54
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/behance/sdk/R$dimen;->bsdk_editor_settings_row_padding_vertical:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 51
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->setPadding(IIII)V

    .line 56
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->description:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->description:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 58
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->description:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 59
    return-void
.end method


# virtual methods
.method public setDescriptionText(I)V
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->setDescriptionText(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public setDescriptionText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->description:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->description:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void

    .line 70
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorSettingsField;->label:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method
