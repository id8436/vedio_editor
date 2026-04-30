.class public Lcom/adobe/premiereclip/editor/VideoSettingActivity;
.super Lcom/adobe/premiereclip/editor/TopOfEditorActivity;
.source "VideoSettingActivity.java"


# instance fields
.field private crossFade:Z

.field private fadeIn:Z

.field private fadeOut:Z

.field private photoMotion:Z

.field private projKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/adobe/premiereclip/editor/VideoSettingActivity;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->crossFade:Z

    return p1
.end method

.method static synthetic access$102(Lcom/adobe/premiereclip/editor/VideoSettingActivity;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->fadeIn:Z

    return p1
.end method

.method static synthetic access$202(Lcom/adobe/premiereclip/editor/VideoSettingActivity;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->fadeOut:Z

    return p1
.end method

.method static synthetic access$302(Lcom/adobe/premiereclip/editor/VideoSettingActivity;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->photoMotion:Z

    return p1
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/editor/VideoSettingActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->projKey:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final closeAndGoBack(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->onBackPressed()V

    .line 104
    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    const-string/jumbo v1, "cross_fade"

    iget-boolean v2, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->crossFade:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    const-string/jumbo v1, "fade_in"

    iget-boolean v2, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->fadeIn:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    const-string/jumbo v1, "fade_out"

    iget-boolean v2, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->fadeOut:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 94
    const-string/jumbo v1, "photo_motion"

    iget-boolean v2, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->photoMotion:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->setResult(ILandroid/content/Intent;)V

    .line 98
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onBackPressed()V

    .line 99
    const v0, 0x7f05002d

    const v1, 0x7f05002e

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->overridePendingTransition(II)V

    .line 100
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-super {p0, p1}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f040038

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->setContentView(I)V

    .line 49
    invoke-static {p0}, Lcom/h/a/d;->a(Landroid/app/Activity;)V

    .line 51
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 52
    const-string/jumbo v1, "project_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->projKey:Ljava/lang/String;

    .line 55
    const-string/jumbo v1, "cross_fade"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->crossFade:Z

    .line 56
    const-string/jumbo v1, "fade_in"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->fadeIn:Z

    .line 57
    const-string/jumbo v1, "fade_out"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->fadeOut:Z

    .line 58
    const-string/jumbo v1, "photo_motion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->photoMotion:Z

    .line 60
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->setCrossFadeSwitch()V

    .line 61
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->setFadeInSwitch()V

    .line 62
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->setFadeOutSwitch()V

    .line 63
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->setPhotoMotionSwitch()V

    .line 64
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->setBumperSwitch()V

    .line 65
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->setWatermarkView()V

    .line 73
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onPause()V

    .line 85
    invoke-static {}, Lcom/adobe/mobile/Config;->pauseCollectingLifecycleData()V

    .line 86
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onResume()V

    .line 79
    invoke-static {p0}, Lcom/adobe/mobile/Config;->collectLifecycleData(Landroid/app/Activity;)V

    .line 80
    return-void
.end method

.method public final setBumperSwitch()V
    .locals 3

    .prologue
    .line 163
    const v0, 0x7f12018b

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 165
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->projKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/premiereclip/dcx/DCXReader;->isBumperEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 166
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 168
    const v1, 0x7f12018a

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 169
    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->projKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXReader;->getBumperName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :cond_0
    new-instance v2, Lcom/adobe/premiereclip/editor/VideoSettingActivity$5;

    invoke-direct {v2, p0, v1}, Lcom/adobe/premiereclip/editor/VideoSettingActivity$5;-><init>(Lcom/adobe/premiereclip/editor/VideoSettingActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 185
    return-void
.end method

.method public final setCrossFadeSwitch()V
    .locals 2

    .prologue
    .line 115
    const v0, 0x7f120188

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 116
    iget-boolean v1, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->crossFade:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 117
    new-instance v1, Lcom/adobe/premiereclip/editor/VideoSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/VideoSettingActivity$1;-><init>(Lcom/adobe/premiereclip/editor/VideoSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 124
    return-void
.end method

.method public final setFadeInSwitch()V
    .locals 2

    .prologue
    .line 127
    const v0, 0x7f120186

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 128
    iget-boolean v1, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->fadeIn:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 129
    new-instance v1, Lcom/adobe/premiereclip/editor/VideoSettingActivity$2;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/VideoSettingActivity$2;-><init>(Lcom/adobe/premiereclip/editor/VideoSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 136
    return-void
.end method

.method public final setFadeOutSwitch()V
    .locals 2

    .prologue
    .line 139
    const v0, 0x7f120187

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 140
    iget-boolean v1, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->fadeOut:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 141
    new-instance v1, Lcom/adobe/premiereclip/editor/VideoSettingActivity$3;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/VideoSettingActivity$3;-><init>(Lcom/adobe/premiereclip/editor/VideoSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 148
    return-void
.end method

.method public final setPhotoMotionSwitch()V
    .locals 2

    .prologue
    .line 151
    const v0, 0x7f120189

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 152
    iget-boolean v1, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->photoMotion:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 153
    new-instance v1, Lcom/adobe/premiereclip/editor/VideoSettingActivity$4;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/VideoSettingActivity$4;-><init>(Lcom/adobe/premiereclip/editor/VideoSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 160
    return-void
.end method

.method public final setWatermarkView()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 188
    const v0, 0x7f12018e

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 190
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->projKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXReader;->getOverlayPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    move v2, v1

    .line 191
    :goto_0
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 192
    if-nez v2, :cond_0

    .line 193
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-static {v4}, Lcom/adobe/premiereclip/dcx/DCXReader;->getPreferenceOverlayPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    .line 197
    :cond_0
    const v1, 0x7f12018d

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 198
    if-eqz v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->projKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXReader;->getOverlayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_1
    new-instance v2, Lcom/adobe/premiereclip/editor/VideoSettingActivity$6;

    invoke-direct {v2, p0, v1, v0}, Lcom/adobe/premiereclip/editor/VideoSettingActivity$6;-><init>(Lcom/adobe/premiereclip/editor/VideoSettingActivity;Landroid/widget/TextView;Landroid/support/v7/widget/SwitchCompat;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 217
    return-void

    :cond_2
    move v2, v3

    .line 190
    goto :goto_0

    :cond_3
    move v1, v3

    .line 194
    goto :goto_1
.end method
