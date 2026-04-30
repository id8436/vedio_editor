.class public Lcom/adobe/premiereclip/sharing/SharingManager;
.super Ljava/lang/Object;
.source "SharingManager.java"


# static fields
.field public static final PUBLISH_TO_CCV:I = 0x3

.field public static final SAVE_TO_CREATIVE_CLOUD:I = 0x1

.field public static final SAVE_TO_GALLERY:I = 0x0

.field public static final SHARE_TO_TWITTER:I = 0x4

.field public static final SHARE_TO_TWITTER_VIA_CCV:I = 0x5

.field public static final SHARE_TO_YOUTUBE:I = 0x2

.field public static final kAnalyticsPrivacy_NotApplicable:Ljava/lang/String; = "NotApplicable"

.field public static final kAnalyticsPrivacy_Private:Ljava/lang/String; = "Private"

.field public static final kAnalyticsPrivacy_Public:Ljava/lang/String; = "Public"

.field public static final kAnalyticsPrivacy_Unlisted:Ljava/lang/String; = "Unlisted"

.field public static final kAnalyticsSharing_CC:Ljava/lang/String; = "Creative Cloud"

.field public static final kAnalyticsSharing_CCV:Ljava/lang/String; = "CCV"

.field public static final kAnalyticsSharing_Copy:Ljava/lang/String; = "Copy URL to Clipboard"

.field public static final kAnalyticsSharing_Device:Ljava/lang/String; = "CameraRoll"

.field public static final kAnalyticsSharing_Email:Ljava/lang/String; = "Email"

.field public static final kAnalyticsSharing_Facebook:Ljava/lang/String; = "Facebook"

.field public static final kAnalyticsSharing_Msg:Ljava/lang/String; = "Message"

.field public static final kAnalyticsSharing_PPro:Ljava/lang/String; = "Premiere Pro"

.field public static final kAnalyticsSharing_Twitter:Ljava/lang/String; = "Twitter"

.field public static final kAnalyticsSharing_YouTube:Ljava/lang/String; = "YouTube"


# instance fields
.field private cancelling:Z

.field private ccvPublish:Lcom/adobe/premiereclip/sharing/CCVPublish;

.field private creativeCloudExport:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

.field private currentExportProgress:I

.field private exportFile:Ljava/io/File;

.field private listener:Lcom/adobe/premiereclip/sharing/SharingManager$Listener;

.field private mActivity:Landroid/app/Activity;

.field private mode:I

.field private prepareVideoDialog:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

.field private projKey:Ljava/lang/String;

.field private twitterUpload:Lcom/adobe/premiereclip/sharing/TwitterUpload;

.field private youTubeExport:Lcom/adobe/premiereclip/sharing/YouTubeExport;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->mode:I

    .line 98
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->mActivity:Landroid/app/Activity;

    .line 99
    iput-object p2, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->projKey:Ljava/lang/String;

    .line 100
    iput-boolean v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->cancelling:Z

    .line 101
    return-void
.end method

.method static synthetic access$002(Lcom/adobe/premiereclip/sharing/SharingManager;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->cancelling:Z

    return p1
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/sharing/SharingManager;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/SharingManager;->cancelSaving()V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/sharing/SharingManager;)Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->prepareVideoDialog:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/sharing/SharingManager;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/SharingManager;->dismissDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/sharing/SharingManager;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->mode:I

    return v0
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/sharing/SharingManager;)Lcom/adobe/premiereclip/sharing/CCVPublish;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->ccvPublish:Lcom/adobe/premiereclip/sharing/CCVPublish;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/premiereclip/sharing/SharingManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/premiereclip/sharing/SharingManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->projKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/adobe/premiereclip/sharing/SharingManager;)Lcom/adobe/premiereclip/sharing/TwitterUpload;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->twitterUpload:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    return-object v0
.end method

.method static synthetic access$900(Lcom/adobe/premiereclip/sharing/SharingManager;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/SharingManager;->deleteFile()V

    return-void
.end method

.method private cancelSaving()V
    .locals 3

    .prologue
    .line 293
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 294
    const-string/jumbo v0, "CameraRoll"

    .line 295
    iget v1, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->mode:I

    packed-switch v1, :pswitch_data_0

    .line 317
    :goto_0
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->prepareVideoDialog:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->isSaving()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 318
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didCancelVideoUploadToExportDestination(Ljava/lang/String;)V

    .line 323
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->prepareVideoDialog:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->isSaved()Z

    move-result v1

    if-nez v1, :cond_1

    .line 324
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    const-string/jumbo v2, "NotApplicable"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowShareVideoFailureViewForDestination(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_1
    return-void

    .line 297
    :pswitch_0
    const-string/jumbo v0, "CameraRoll"

    goto :goto_0

    .line 300
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->creativeCloudExport:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->cancelUpload()V

    .line 301
    const-string/jumbo v0, "Creative Cloud"

    goto :goto_0

    .line 304
    :pswitch_2
    const-string/jumbo v0, "Sharing Manager"

    const-string/jumbo v1, "Cancelling YouTube upload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->youTubeExport:Lcom/adobe/premiereclip/sharing/YouTubeExport;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/YouTubeExport;->cancelUpload()V

    .line 306
    const-string/jumbo v0, "YouTube"

    goto :goto_0

    .line 309
    :pswitch_3
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->ccvPublish:Lcom/adobe/premiereclip/sharing/CCVPublish;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/CCVPublish;->cancel()V

    .line 310
    const-string/jumbo v0, "CCV"

    goto :goto_0

    .line 314
    :pswitch_4
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->twitterUpload:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->cancel()V

    goto :goto_0

    .line 319
    :cond_2
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->prepareVideoDialog:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->isSaved()Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didCancelVideoRenderForExport()V

    goto :goto_1

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private deleteFile()V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->exportFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->exportFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->exportFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 419
    const-string/jumbo v0, "SharingManager"

    const-string/jumbo v1, "export file deleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->exportFile:Ljava/io/File;

    .line 422
    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->prepareVideoDialog:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->prepareVideoDialog:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->dismiss()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->prepareVideoDialog:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->listener:Lcom/adobe/premiereclip/sharing/SharingManager$Listener;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->listener:Lcom/adobe/premiereclip/sharing/SharingManager$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/sharing/SharingManager$Listener;->onDismissed()V

    .line 235
    :cond_1
    return-void
.end method

.method private getPrepareDialogListener(Lcom/adobe/premiereclip/sharing/SharingManager$Listener;)Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/adobe/premiereclip/sharing/SharingManager$1;

    invoke-direct {v0, p0, p1}, Lcom/adobe/premiereclip/sharing/SharingManager$1;-><init>(Lcom/adobe/premiereclip/sharing/SharingManager;Lcom/adobe/premiereclip/sharing/SharingManager$Listener;)V

    return-object v0
.end method

.method private getSharingComponentListener()Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;
    .locals 1

    .prologue
    .line 331
    new-instance v0, Lcom/adobe/premiereclip/sharing/SharingManager$2;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/sharing/SharingManager$2;-><init>(Lcom/adobe/premiereclip/sharing/SharingManager;)V

    return-object v0
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->mode:I

    return v0
.end method

.method public onExportEnded(Ljava/io/File;Z)V
    .locals 5

    .prologue
    const/16 v1, 0x2d0

    const/4 v4, 0x0

    .line 238
    if-nez p2, :cond_2

    .line 239
    iget-boolean v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->cancelling:Z

    if-eqz v0, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/SharingManager;->dismissDialog()V

    .line 241
    iput-boolean v4, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->cancelling:Z

    .line 290
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/adobe/premiereclip/util/Utilities;->is1080pExportSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getExportResolution()I

    move-result v0

    .line 249
    :goto_1
    if-le v0, v1, :cond_1

    .line 250
    const v0, 0x7f0a04b4

    .line 255
    :goto_2
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->prepareVideoDialog:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->mActivity:Landroid/app/Activity;

    .line 256
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-virtual {v1, v2, v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->goToErrorState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_1
    const v0, 0x7f0a04b5

    goto :goto_2

    .line 260
    :cond_2
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didRenderVideoForExport()V

    .line 261
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->exportFile:Ljava/io/File;

    .line 262
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->exportFile:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 263
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->projKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectWithKey(Ljava/lang/String;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getPosterPath()Ljava/lang/String;

    move-result-object v1

    .line 264
    iget v2, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->mode:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 266
    :pswitch_0
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/util/Utilities;->runMediaScanner(Landroid/content/Context;Landroid/net/Uri;)V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->exportFile:Ljava/io/File;

    .line 268
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 269
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "CameraRoll"

    const-string/jumbo v2, "NotApplicable"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowShareVideoSuccessViewForDestination(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :pswitch_1
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->creativeCloudExport:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->exportFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/SharingManager;->getSharingComponentListener()Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->upload(Landroid/net/Uri;JLcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;)V

    goto/16 :goto_0

    .line 277
    :pswitch_2
    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->ccvPublish:Lcom/adobe/premiereclip/sharing/CCVPublish;

    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/SharingManager;->getSharingComponentListener()Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/adobe/premiereclip/sharing/CCVPublish;->shareToCCV(Landroid/net/Uri;Ljava/lang/String;Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;)V

    goto/16 :goto_0

    .line 280
    :pswitch_3
    const-string/jumbo v1, "Sharing Manager"

    const-string/jumbo v2, "start youtube upload"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->youTubeExport:Lcom/adobe/premiereclip/sharing/YouTubeExport;

    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/SharingManager;->getSharingComponentListener()Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/sharing/YouTubeExport;->startUpload(Landroid/net/Uri;Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;)V

    goto/16 :goto_0

    .line 284
    :pswitch_4
    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->twitterUpload:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/SharingManager;->getSharingComponentListener()Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->shareToTwitter(Landroid/net/Uri;Ljava/lang/String;Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;Z)V

    goto/16 :goto_0

    .line 287
    :pswitch_5
    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->twitterUpload:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/SharingManager;->getSharingComponentListener()Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->shareToTwitter(Landroid/net/Uri;Ljava/lang/String;Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;Z)V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto/16 :goto_1

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setCCVPublishData(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcom/adobe/premiereclip/sharing/CCVPublish;

    const-string/jumbo v1, ""

    invoke-direct {v0, p1, v1, p2}, Lcom/adobe/premiereclip/sharing/CCVPublish;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->ccvPublish:Lcom/adobe/premiereclip/sharing/CCVPublish;

    .line 118
    return-void
.end method

.method public setExportProgress(D)V
    .locals 3

    .prologue
    .line 169
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    iput v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->currentExportProgress:I

    .line 170
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->prepareVideoDialog:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->prepareVideoDialog:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    iget v1, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->currentExportProgress:I

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->setPrepareProgress(I)V

    .line 173
    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 0

    .prologue
    .line 104
    iput p1, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->mode:I

    .line 105
    return-void
.end method

.method public setTwitterData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 121
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 122
    :cond_0
    new-instance v0, Lcom/twitter/sdk/android/core/ad;

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/ad;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/twitter/sdk/android/core/d;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/d;-><init>(I)V

    .line 123
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/ad;->a(Lcom/twitter/sdk/android/core/j;)Lcom/twitter/sdk/android/core/ad;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    const-string/jumbo v2, "W0QnNCGa5PjjVewQZpHD1e9sC"

    const-string/jumbo v3, "YKS10jaF14CpUsrocN98yljHJIszQiTt46qs8I6986vQXyPZhn"

    invoke-direct {v1, v2, v3}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/ad;->a(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Lcom/twitter/sdk/android/core/ad;

    move-result-object v0

    const/4 v1, 0x1

    .line 126
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/ad;->a(Z)Lcom/twitter/sdk/android/core/ad;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/ad;->a()Lcom/twitter/sdk/android/core/ab;

    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/twitter/sdk/android/core/v;->a(Lcom/twitter/sdk/android/core/ab;)V

    .line 130
    :cond_1
    new-instance v0, Lcom/adobe/premiereclip/sharing/TwitterUpload;

    invoke-direct {v0, p1, p4, p2, p3}, Lcom/adobe/premiereclip/sharing/TwitterUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->twitterUpload:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    .line 131
    return-void
.end method

.method public setYouTubeCredential(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 112
    new-instance v0, Lcom/adobe/premiereclip/sharing/YouTubeExport;

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->mActivity:Landroid/app/Activity;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/adobe/premiereclip/sharing/YouTubeExport;-><init>(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->youTubeExport:Lcom/adobe/premiereclip/sharing/YouTubeExport;

    .line 113
    const-string/jumbo v0, "Sharing Manager"

    const-string/jumbo v1, "setting youtube variables."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method public startSharing(Lcom/adobe/premiereclip/sharing/SharingManager$Listener;)V
    .locals 3

    .prologue
    .line 134
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->listener:Lcom/adobe/premiereclip/sharing/SharingManager$Listener;

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->currentExportProgress:I

    .line 136
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 137
    const-string/jumbo v0, "EditorActivity"

    const-string/jumbo v1, "Prepare dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->mode:I

    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->prepareVideoDialog:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->show()V

    .line 166
    return-void

    .line 140
    :pswitch_0
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "CameraRoll"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowShareVideoViewForDestination(Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/adobe/premiereclip/sharing/SaveToGalleryDialog;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/sharing/SharingManager;->getPrepareDialogListener(Lcom/adobe/premiereclip/sharing/SharingManager$Listener;)Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/sharing/SaveToGalleryDialog;-><init>(Landroid/app/Activity;Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->prepareVideoDialog:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    goto :goto_0

    .line 144
    :pswitch_1
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "Creative Cloud"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowShareVideoViewForDestination(Ljava/lang/String;)V

    .line 145
    new-instance v0, Lcom/adobe/premiereclip/sharing/SaveToCCDialog;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/sharing/SharingManager;->getPrepareDialogListener(Lcom/adobe/premiereclip/sharing/SharingManager$Listener;)Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/sharing/SaveToCCDialog;-><init>(Landroid/app/Activity;Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->prepareVideoDialog:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    .line 146
    new-instance v0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    invoke-direct {v0}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->creativeCloudExport:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    goto :goto_0

    .line 149
    :pswitch_2
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    const-string/jumbo v2, "CCV"

    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->ccvPublish:Lcom/adobe/premiereclip/sharing/CCVPublish;

    .line 150
    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/CCVPublish;->getUnlisted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Unlisted"

    .line 149
    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapExportForDestination(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v0, Lcom/adobe/premiereclip/sharing/PublishToCCVDialog;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/sharing/SharingManager;->getPrepareDialogListener(Lcom/adobe/premiereclip/sharing/SharingManager$Listener;)Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/sharing/PublishToCCVDialog;-><init>(Landroid/app/Activity;Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->prepareVideoDialog:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    goto :goto_0

    .line 150
    :cond_0
    const-string/jumbo v0, "Public"

    goto :goto_1

    .line 154
    :pswitch_3
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "YouTube"

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->youTubeExport:Lcom/adobe/premiereclip/sharing/YouTubeExport;

    .line 155
    invoke-virtual {v2}, Lcom/adobe/premiereclip/sharing/YouTubeExport;->getSharingPrivacy()Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapExportForDestination(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "YouTube"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowShareVideoViewForDestination(Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/adobe/premiereclip/sharing/SaveToYouTubeDialog;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/sharing/SharingManager;->getPrepareDialogListener(Lcom/adobe/premiereclip/sharing/SharingManager$Listener;)Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/sharing/SaveToYouTubeDialog;-><init>(Landroid/app/Activity;Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->prepareVideoDialog:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    goto/16 :goto_0

    .line 161
    :pswitch_4
    new-instance v0, Lcom/adobe/premiereclip/sharing/SaveToTwitterDialog;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/sharing/SharingManager;->getPrepareDialogListener(Lcom/adobe/premiereclip/sharing/SharingManager$Listener;)Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/sharing/SaveToTwitterDialog;-><init>(Landroid/app/Activity;Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->prepareVideoDialog:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    goto/16 :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 425
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->prepareVideoDialog:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->prepareVideoDialog:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->isSaved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->prepareVideoDialog:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->isSaving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/SharingManager;->cancelSaving()V

    .line 428
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didCancelVideoRenderForExport()V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 431
    const-string/jumbo v0, ""

    .line 432
    iget v2, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->mode:I

    packed-switch v2, :pswitch_data_0

    .line 462
    :goto_0
    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->prepareVideoDialog:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    const v3, 0x7f0a04ac

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->goToErrorState(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager;->prepareVideoDialog:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    .line 465
    :cond_1
    return-void

    .line 434
    :pswitch_0
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v2, "CameraRoll"

    const-string/jumbo v3, "NotApplicable"

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowShareVideoFailureViewForDestination(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const v0, 0x7f0a04aa

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 440
    :pswitch_1
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v2, "Creative Cloud"

    const-string/jumbo v3, "NotApplicable"

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowShareVideoFailureViewForDestination(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const v0, 0x7f0a04a9

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 446
    :pswitch_2
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v2, "CCV"

    const-string/jumbo v3, "NotApplicable"

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowShareVideoFailureViewForDestination(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const v0, 0x7f0a04ab

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 452
    :pswitch_3
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v2, "YouTube"

    const-string/jumbo v3, "NotApplicable"

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowShareVideoFailureViewForDestination(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const v0, 0x7f0a04ae

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 459
    :pswitch_4
    const v0, 0x7f0a04ad

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 432
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
