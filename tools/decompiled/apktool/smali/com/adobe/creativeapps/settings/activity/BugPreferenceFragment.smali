.class public Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;
.super Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;
.source "BugPreferenceFragment.java"


# static fields
.field private static final MAX_HEIGHT:I = 0x438

.field private static final MAX_WIDTH:I = 0x780


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method private setAssetChangeUX(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 160
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->change_asset_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 161
    new-instance v1, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment$1;-><init>(Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 149
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->getBugState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->assetState:Z

    .line 150
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->getBugPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->assetPath:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 153
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 154
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 155
    iget v0, v1, Landroid/graphics/Point;->x:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/adobe/creativeapps/settings/R$dimen;->bug_preview_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->width:I

    .line 156
    iget v0, p0, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->width:I

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->height:I

    .line 157
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 50
    sget v0, Lcom/adobe/creativeapps/settings/R$layout;->fragment_bug_preference:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->setUX(Landroid/view/View;)V

    .line 53
    return-object v0
.end method

.method protected setPreferenceState(Z)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v0, p1}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->setBugState(Z)V

    .line 143
    return-void
.end method

.method protected setPreviewUX(Landroid/view/View;)V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 65
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->bug_preview_wrapper:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 66
    sget v1, Lcom/adobe/creativeapps/settings/R$id;->bug_frame:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 67
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->width:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 68
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->width:I

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->width:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 70
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->width:I

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 71
    sget v2, Lcom/adobe/creativeapps/settings/R$id;->bug_preview:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 72
    iget-object v3, p0, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v3}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->getBugPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->assetPath:Ljava/lang/String;

    .line 73
    iget-object v3, p0, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v3}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->getBugName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->assetName:Ljava/lang/String;

    .line 75
    sget v3, Lcom/adobe/creativeapps/settings/R$id;->asset_load:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 77
    iget v4, p0, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->width:I

    .line 78
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 81
    invoke-virtual {p0}, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/adobe/creativeapps/settings/R$drawable;->background_bug:I

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 82
    invoke-static {v6, v4, v5, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 83
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    sget v1, Lcom/adobe/creativeapps/settings/R$id;->change_asset:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 87
    iget-object v6, p0, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->assetPath:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->assetPath:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 89
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 90
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 91
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->bug_preview_title_wrapper:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 92
    sget v0, Lcom/adobe/creativeapps/settings/R$string;->select_asset:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :goto_0
    return-void

    .line 96
    :cond_1
    sget v6, Lcom/adobe/creativeapps/settings/R$id;->bug_preview_title_wrapper:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 97
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 98
    sget v0, Lcom/adobe/creativeapps/settings/R$string;->change_bug_asset:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 101
    iput-boolean v9, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 102
    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->assetPath:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 103
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 104
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 106
    int-to-float v6, v4

    int-to-float v7, v5

    div-float/2addr v6, v7

    .line 107
    int-to-float v7, v1

    int-to-float v8, v0

    div-float/2addr v7, v8

    .line 109
    if-le v1, v0, :cond_5

    .line 110
    int-to-float v0, v1

    int-to-float v1, v4

    const/high16 v8, 0x44f00000    # 1920.0f

    div-float/2addr v1, v8

    mul-float/2addr v1, v0

    .line 111
    div-float v0, v1, v7

    .line 118
    :goto_1
    int-to-float v8, v4

    cmpl-float v8, v1, v8

    if-gtz v8, :cond_2

    int-to-float v8, v5

    cmpl-float v8, v0, v8

    if-lez v8, :cond_3

    .line 119
    :cond_2
    cmpl-float v0, v7, v6

    if-lez v0, :cond_6

    .line 120
    int-to-float v1, v4

    .line 121
    int-to-float v0, v4

    div-float/2addr v0, v7

    .line 128
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->assetPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 129
    if-eqz v4, :cond_4

    .line 130
    float-to-int v1, v1

    float-to-int v0, v0

    invoke-static {v4, v1, v0, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 134
    :cond_4
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 136
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->bug_file_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 137
    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->assetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 114
    :cond_5
    int-to-float v0, v0

    int-to-float v1, v5

    const/high16 v8, 0x44870000    # 1080.0f

    div-float/2addr v1, v8

    mul-float/2addr v0, v1

    .line 115
    mul-float v1, v0, v7

    goto :goto_1

    .line 123
    :cond_6
    int-to-float v0, v5

    mul-float v1, v0, v7

    .line 124
    int-to-float v0, v5

    goto :goto_2
.end method

.method protected setUX(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->setSwitchUX(Landroid/view/View;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->setPreviewUX(Landroid/view/View;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->setAssetChangeUX(Landroid/view/View;)V

    .line 61
    return-void
.end method
