.class public Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorCheckBoxField;
.super Landroid/widget/RelativeLayout;
.source "BehanceSDKProjectEditorCheckBoxField.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private selectSwitch:Landroid/support/v7/widget/SwitchCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorCheckBoxField;->init(Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p2}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorCheckBoxField;->init(Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p2}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorCheckBoxField;->init(Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorCheckBoxField;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$layout;->bsdk_view_project_editor_setting_check_box:I

    invoke-static {v0, v1, p0}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorCheckBoxField;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    sget v0, Lcom/behance/sdk/R$id;->bsdk_settings_check_box_switch:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorCheckBoxField;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorCheckBoxField;->selectSwitch:Landroid/support/v7/widget/SwitchCompat;

    .line 41
    sget v0, Lcom/behance/sdk/R$id;->bsdk_settings_check_box_title:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorCheckBoxField;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorCheckBoxField;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/behance/sdk/R$styleable;->BehanceSDKSettingsSwitchView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 46
    sget v2, Lcom/behance/sdk/R$styleable;->BehanceSDKSettingsSwitchView_bsdk_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorCheckBoxField;->selectSwitch:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->toggle()V

    .line 54
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorCheckBoxField;->selectSwitch:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 58
    return-void
.end method

.method public setOnCheckChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKProjectEditorCheckBoxField;->selectSwitch:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 62
    return-void
.end method
