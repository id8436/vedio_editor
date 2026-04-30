.class public Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;
.super Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;
.source "BumperPreferenceFragment.java"


# instance fields
.field bumperPreview:Landroid/widget/VideoView;

.field clipCheck:Landroid/widget/ImageView;

.field customCheck:Landroid/widget/ImageView;

.field isBumperPremiereClip:Z

.field loadingSpinner:Landroid/widget/ProgressBar;

.field playButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->pausePreview()V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->handlePlaybackError()V

    return-void
.end method

.method private handlePlaybackError()V
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->bumperPreview:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->playButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->assetPath:Ljava/lang/String;

    iget v2, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->width:I

    iget v3, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->height:I

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->generateBumperPreview(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 147
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->loadingSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 148
    return-void
.end method

.method private pausePreview()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->bumperPreview:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 160
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->bumperPreview:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 162
    return-void
.end method

.method private setCheckedUX(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->isBumperPremiereClip()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->isBumperPremiereClip:Z

    .line 202
    iget-boolean v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->isBumperPremiereClip:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->customCheck:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->clipCheck:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->customCheck:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->clipCheck:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setCustomBumperUX(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 180
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->bumper_type_custom:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 181
    new-instance v1, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$4;

    invoke-direct {v1, p0}, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$4;-><init>(Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    return-void
.end method

.method private setDefaultBumperUX(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 190
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->bumper_type_clip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 191
    new-instance v1, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$5;-><init>(Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 173
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->isBumperPremiereClip()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->isBumperPremiereClip:Z

    .line 174
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->getBumperState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->assetState:Z

    .line 175
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->getBumperPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->assetPath:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->getBumperName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->assetName:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 59
    sget v0, Lcom/adobe/creativeapps/settings/R$layout;->fragment_bumper_preference:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 60
    invoke-static {v1}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 61
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->clip_type_check:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->clipCheck:Landroid/widget/ImageView;

    .line 62
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->custom_type_check:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->customCheck:Landroid/widget/ImageView;

    .line 63
    invoke-virtual {p0, v1}, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->setUX(Landroid/view/View;)V

    .line 64
    return-object v1
.end method

.method public postBumperPreview(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->loadingSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 152
    if-eqz p1, :cond_0

    .line 153
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 154
    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->bumperPreview:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 156
    :cond_0
    return-void
.end method

.method protected setPreferenceState(Z)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v0, p1}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->setBumperState(Z)V

    .line 167
    return-void
.end method

.method protected setPreviewUX(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->isBumperPremiereClip()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->isBumperPremiereClip:Z

    .line 79
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->getBumperName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->assetName:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->getBumperPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->assetPath:Ljava/lang/String;

    .line 81
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->bumperPreview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->bumperPreview:Landroid/widget/VideoView;

    .line 82
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->asset_load:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->loadingSpinner:Landroid/widget/ProgressBar;

    .line 83
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->play_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->playButton:Landroid/widget/ImageView;

    .line 85
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->assetPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->loadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->bumperPreview:Landroid/widget/VideoView;

    invoke-virtual {v0, v3}, Landroid/widget/VideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->loadingSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->bumperPreview:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 93
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->bumperPreview:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 96
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->bumperPreview:Landroid/widget/VideoView;

    new-instance v1, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$1;-><init>(Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->bumperPreview:Landroid/widget/VideoView;

    new-instance v1, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$2;-><init>(Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 119
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->bumperPreview:Landroid/widget/VideoView;

    new-instance v1, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$3;

    invoke-direct {v1, p0}, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$3;-><init>(Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 128
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->bumperPreview:Landroid/widget/VideoView;

    invoke-virtual {v0, v3}, Landroid/widget/VideoView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->bumperPreview:Landroid/widget/VideoView;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->assetPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 131
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->bumperPreview:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->bumperPreview:Landroid/widget/VideoView;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 135
    :cond_1
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->bumper_file_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 136
    iget-boolean v1, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->isBumperPremiereClip:Z

    if-eqz v1, :cond_2

    .line 137
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->assetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setUX(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->setSwitchUX(Landroid/view/View;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->setDefaultBumperUX(Landroid/view/View;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->setCustomBumperUX(Landroid/view/View;)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->setPreviewUX(Landroid/view/View;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->setCheckedUX(Landroid/view/View;)V

    .line 74
    return-void
.end method
