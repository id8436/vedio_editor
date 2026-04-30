.class public Lcom/adobe/premiereclip/CameraCaptureManager;
.super Ljava/lang/Object;
.source "CameraCaptureManager.java"


# static fields
.field private static instance:Lcom/adobe/premiereclip/CameraCaptureManager;


# instance fields
.field private captureFilePath:Ljava/lang/String;

.field private captureFileUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/adobe/premiereclip/CameraCaptureManager;->captureFilePath:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/CameraCaptureManager;->captureFileUri:Landroid/net/Uri;

    .line 46
    return-void
.end method

.method public static getInstance()Lcom/adobe/premiereclip/CameraCaptureManager;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/adobe/premiereclip/CameraCaptureManager;->instance:Lcom/adobe/premiereclip/CameraCaptureManager;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/adobe/premiereclip/CameraCaptureManager;

    invoke-direct {v0}, Lcom/adobe/premiereclip/CameraCaptureManager;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/CameraCaptureManager;->instance:Lcom/adobe/premiereclip/CameraCaptureManager;

    .line 52
    :cond_0
    sget-object v0, Lcom/adobe/premiereclip/CameraCaptureManager;->instance:Lcom/adobe/premiereclip/CameraCaptureManager;

    return-object v0
.end method


# virtual methods
.method public captureImage(Landroid/app/Activity;I)V
    .locals 5

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/util/CameraHelper;->checkCameraHardware(Landroid/content/Context;)Z

    move-result v0

    .line 76
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.media.action.IMAGE_CAPTURE"

    invoke-static {v1, v2}, Lcom/adobe/premiereclip/util/CameraHelper;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 79
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x65

    invoke-static {v1, v2}, Lcom/adobe/premiereclip/util/Utilities;->getCapturedMediaFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/premiereclip/CameraCaptureManager;->captureFilePath:Ljava/lang/String;

    .line 86
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-le v2, v3, :cond_1

    .line 87
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".provider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-static {v2, v3, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/premiereclip/CameraCaptureManager;->captureFileUri:Landroid/net/Uri;

    .line 89
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    :goto_0
    const-string/jumbo v1, "output"

    iget-object v2, p0, Lcom/adobe/premiereclip/CameraCaptureManager;->captureFileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowCameraCaptureView()V

    .line 100
    :try_start_0
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_0
    :goto_1
    return-void

    .line 92
    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/premiereclip/CameraCaptureManager;->captureFileUri:Landroid/net/Uri;

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public captureVideo(Landroid/app/Activity;I)V
    .locals 5

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/util/CameraHelper;->checkCameraHardware(Landroid/content/Context;)Z

    move-result v0

    .line 114
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.media.action.VIDEO_CAPTURE"

    invoke-static {v1, v2}, Lcom/adobe/premiereclip/util/CameraHelper;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 117
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x66

    invoke-static {v1, v2}, Lcom/adobe/premiereclip/util/Utilities;->getCapturedMediaFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/premiereclip/CameraCaptureManager;->captureFilePath:Ljava/lang/String;

    .line 124
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-le v2, v3, :cond_1

    .line 125
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".provider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-static {v2, v3, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/premiereclip/CameraCaptureManager;->captureFileUri:Landroid/net/Uri;

    .line 127
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 135
    :goto_0
    const-string/jumbo v1, "output"

    iget-object v2, p0, Lcom/adobe/premiereclip/CameraCaptureManager;->captureFileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 136
    const-string/jumbo v1, "android.intent.extra.videoQuality"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowCameraCaptureView()V

    .line 140
    :try_start_0
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    :goto_1
    return-void

    .line 131
    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/premiereclip/CameraCaptureManager;->captureFileUri:Landroid/net/Uri;

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public getCaptureFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/adobe/premiereclip/CameraCaptureManager;->captureFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptureFileUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/premiereclip/CameraCaptureManager;->captureFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public showMediaCaptureOptions(Landroid/app/Activity;Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;I)V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/adobe/premiereclip/CameraCaptureManager$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/adobe/premiereclip/CameraCaptureManager$1;-><init>(Lcom/adobe/premiereclip/CameraCaptureManager;Landroid/app/Activity;I)V

    invoke-virtual {p2, v0}, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->setListener(Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView$OptionSelectionListener;)V

    .line 66
    invoke-virtual {p2}, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->openView()V

    .line 67
    return-void
.end method
