.class public abstract Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;
.super Landroid/support/v4/app/Fragment;
.source "BasePreferenceFragment.java"


# instance fields
.field protected assetName:Ljava/lang/String;

.field protected assetPath:Ljava/lang/String;

.field protected assetState:Z

.field protected ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

.field protected context:Landroid/content/Context;

.field protected height:I

.field protected onOffSwitch:Landroid/support/v7/widget/SwitchCompat;

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    .line 45
    check-cast v0, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    .line 47
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 48
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 50
    iget v0, v1, Landroid/graphics/Point;->x:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/adobe/creativeapps/settings/R$dimen;->card_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;->width:I

    .line 51
    iget v0, p0, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;->width:I

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;->height:I

    .line 52
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;->context:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public onRestoreFragment()V
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;->setUX(Landroid/view/View;)V

    .line 40
    return-void
.end method

.method protected abstract setPreferenceState(Z)V
.end method

.method protected abstract setPreviewUX(Landroid/view/View;)V
.end method

.method protected setSwitchUX(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 55
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->addSwitch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;->onOffSwitch:Landroid/support/v7/widget/SwitchCompat;

    .line 56
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;->onOffSwitch:Landroid/support/v7/widget/SwitchCompat;

    iget-boolean v1, p0, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;->assetState:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 57
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;->onOffSwitch:Landroid/support/v7/widget/SwitchCompat;

    new-instance v1, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment$1;-><init>(Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 65
    return-void
.end method

.method protected abstract setUX(Landroid/view/View;)V
.end method
