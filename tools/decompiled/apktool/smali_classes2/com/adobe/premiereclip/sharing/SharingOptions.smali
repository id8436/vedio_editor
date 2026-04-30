.class public Lcom/adobe/premiereclip/sharing/SharingOptions;
.super Ljava/lang/Object;
.source "SharingOptions.java"

# interfaces
.implements Lcom/adobe/premiereclip/sharing/PProSharing$Listener;


# static fields
.field public static final CCV_PUBLISH:I = 0x4e21

.field private static final CC_FHD_EXPORT_DURATION_LIMIT:J = 0x35a4e900L

.field private static final CC_HD_EXPORT_DURATION_LIMIT:J = 0x55d4a800L

.field private static final TWITTER_FHD_EXPORT_DURATION_LIMIT:J = 0x8583b00L

.field private static final TWITTER_HD_EXPORT_DURATION_LIMIT:J = 0x8583b00L

.field public static final TWITTER_SETTINGS:I = 0x4e23

.field public static final YOUTUBE_SETTINGS:I = 0x4e22


# instance fields
.field private final MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_CC:I

.field private final MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_GALLERY:I

.field private final MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_PUBLISH:I

.field private final MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_TWITTER:I

.field private final MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_YOUTUBE:I

.field private activity:Landroid/app/Activity;

.field private background:Landroid/view/View;

.field private closeAnimation:Landroid/view/animation/Animation;

.field private listener:Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;

.field private open:Z

.field private openAnimation:Landroid/view/animation/Animation;

.field private pProSharing:Lcom/adobe/premiereclip/sharing/PProSharing;

.field private project:Lcom/adobe/premiereclip/project/Project;

.field private sharingInProgress:Z

.field private sharingManager:Lcom/adobe/premiereclip/sharing/SharingManager;

.field private sharingOptionsLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/adobe/premiereclip/project/Project;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/16 v0, 0x33

    iput v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_PUBLISH:I

    .line 55
    const/16 v0, 0x34

    iput v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_GALLERY:I

    .line 56
    const/16 v0, 0x35

    iput v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_CC:I

    .line 57
    const/16 v0, 0x36

    iput v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_YOUTUBE:I

    .line 58
    const/16 v0, 0x37

    iput v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_TWITTER:I

    .line 86
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    .line 87
    iput-object p2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->project:Lcom/adobe/premiereclip/project/Project;

    .line 89
    new-instance v0, Lcom/adobe/premiereclip/sharing/SharingManager;

    iget-object v1, p2, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/adobe/premiereclip/sharing/SharingManager;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharingManager:Lcom/adobe/premiereclip/sharing/SharingManager;

    .line 90
    new-instance v0, Lcom/adobe/premiereclip/sharing/PProSharing;

    invoke-direct {v0, p1, p2}, Lcom/adobe/premiereclip/sharing/PProSharing;-><init>(Landroid/app/Activity;Lcom/adobe/premiereclip/project/Project;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->pProSharing:Lcom/adobe/premiereclip/sharing/PProSharing;

    .line 91
    const v0, 0x7f120560

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharingOptionsLayout:Landroid/widget/LinearLayout;

    .line 92
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->isPrivateCloud()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharingOptionsLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f120563

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    :cond_0
    const v0, 0x7f12055f

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->background:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->background:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharingOptionsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 98
    iput-boolean v2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->open:Z

    .line 99
    iput-boolean v2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharingInProgress:Z

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/sharing/SharingOptions;)Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->listener:Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/adobe/premiereclip/sharing/SharingOptions;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharingInProgress:Z

    return p1
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/sharing/SharingOptions;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/sharing/SharingOptions;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/sharing/SharingOptions;->continueSharing(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/sharing/SharingOptions;)Lcom/adobe/premiereclip/sharing/SharingManager;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharingManager:Lcom/adobe/premiereclip/sharing/SharingManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/sharing/SharingOptions;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->startSharingProcess()V

    return-void
.end method

.method static synthetic access$600(Lcom/adobe/premiereclip/sharing/SharingOptions;)Lcom/adobe/premiereclip/sharing/PProSharing;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->pProSharing:Lcom/adobe/premiereclip/sharing/PProSharing;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/premiereclip/sharing/SharingOptions;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharingOptionsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private animationsNotInitialized()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->openAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->closeAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canAddBumper()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method private canStartSharing()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/adobe/premiereclip/util/Utilities;->isConnectedToInternet(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private continueSharing(I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 268
    packed-switch p1, :pswitch_data_0

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 270
    :pswitch_0
    const/16 v0, 0x34

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/util/MarshmallowUtils;->getPermission(ILjava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->shareSaveGallery()V

    goto :goto_0

    .line 275
    :pswitch_1
    const/16 v0, 0x33

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/util/MarshmallowUtils;->getPermission(ILjava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharePublish()V

    goto :goto_0

    .line 280
    :pswitch_2
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    const-string/jumbo v2, "Premiere Pro"

    const-string/jumbo v3, "NotApplicable"

    invoke-virtual {v1, v2, v3}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapExportForDestination(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->listener:Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;

    if-eqz v1, :cond_1

    .line 284
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->listener:Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;

    invoke-interface {v1}, Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;->onSharingOptionsClosed()V

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->project:Lcom/adobe/premiereclip/project/Project;

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->pProSharing:Lcom/adobe/premiereclip/sharing/PProSharing;

    invoke-virtual {v2, v0, p0}, Lcom/adobe/premiereclip/sharing/PProSharing;->performSendToPPro(ZLcom/adobe/premiereclip/sharing/PProSharing$Listener;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/project/Project;->setPendingSendPPro(Z)V

    goto :goto_0

    .line 289
    :pswitch_3
    const/16 v0, 0x35

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/util/MarshmallowUtils;->getPermission(ILjava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->shareSaveCC()V

    goto :goto_0

    .line 294
    :pswitch_4
    const/16 v0, 0x36

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/util/MarshmallowUtils;->getPermission(ILjava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->shareYoutube()V

    goto :goto_0

    .line 299
    :pswitch_5
    const/16 v0, 0x37

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/util/MarshmallowUtils;->getPermission(ILjava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->shareTwitter()V

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x7f120561
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private initializeAnimations()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 427
    const/16 v0, 0xc8

    .line 428
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharingOptionsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->openAnimation:Landroid/view/animation/Animation;

    .line 429
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->openAnimation:Landroid/view/animation/Animation;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 431
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharingOptionsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->closeAnimation:Landroid/view/animation/Animation;

    .line 432
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->closeAnimation:Landroid/view/animation/Animation;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 434
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->closeAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/adobe/premiereclip/sharing/SharingOptions$7;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/sharing/SharingOptions$7;-><init>(Lcom/adobe/premiereclip/sharing/SharingOptions;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 450
    return-void
.end method

.method private showRetryPProDialog()V
    .locals 5

    .prologue
    .line 395
    const-string/jumbo v0, "PProRetry"

    const-string/jumbo v1, "retrying dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v0, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0472

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    .line 397
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0470

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 399
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0471

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/premiereclip/sharing/SharingOptions$5;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/sharing/SharingOptions$5;-><init>(Lcom/adobe/premiereclip/sharing/SharingOptions;)V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->setAcceptButton(Ljava/lang/String;Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V

    .line 407
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0394

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/premiereclip/sharing/SharingOptions$6;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/sharing/SharingOptions$6;-><init>(Lcom/adobe/premiereclip/sharing/SharingOptions;)V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->setRejectButton(Ljava/lang/String;Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V

    .line 415
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    const-string/jumbo v2, "Premiere Pro"

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowPopUpForUploadToPremiereProAfterSyncAlert(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->show()V

    .line 417
    return-void
.end method

.method private startSharingProcess()V
    .locals 2

    .prologue
    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharingInProgress:Z

    .line 188
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharingManager:Lcom/adobe/premiereclip/sharing/SharingManager;

    new-instance v1, Lcom/adobe/premiereclip/sharing/SharingOptions$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/sharing/SharingOptions$1;-><init>(Lcom/adobe/premiereclip/sharing/SharingOptions;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/sharing/SharingManager;->startSharing(Lcom/adobe/premiereclip/sharing/SharingManager$Listener;)V

    .line 208
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->listener:Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->listener:Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;

    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->canAddBumper()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;->onSharingStarted(Z)V

    .line 211
    :cond_0
    return-void
.end method


# virtual methods
.method public closeView()V
    .locals 2

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->open:Z

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->open:Z

    .line 122
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->openAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 123
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->background:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharingOptionsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->closeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 126
    :cond_0
    return-void
.end method

.method public getSharingManager()Lcom/adobe/premiereclip/sharing/SharingManager;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharingManager:Lcom/adobe/premiereclip/sharing/SharingManager;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->open:Z

    return v0
.end method

.method public mayBeExportPPro()V
    .locals 2

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharingInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->project:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->isPendingSendPPro()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->pProSharing:Lcom/adobe/premiereclip/sharing/PProSharing;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/PProSharing;->isProjectReadyToExport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->project:Lcom/adobe/premiereclip/project/Project;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/Project;->setPendingSendPPro(Z)V

    .line 390
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->showRetryPProDialog()V

    .line 392
    :cond_0
    return-void
.end method

.method public onFinished()V
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharingInProgress:Z

    .line 460
    return-void
.end method

.method public onOptionSelected(Landroid/view/View;)V
    .locals 5

    .prologue
    const v2, 0x7f120561

    .line 228
    iget-boolean v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharingInProgress:Z

    if-eqz v0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->canStartSharing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 232
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    .line 233
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a043e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    .line 234
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a043d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 236
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    goto :goto_0

    .line 240
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 241
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/adobe/premiereclip/util/Utilities;->is1080pExportSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    .line 242
    invoke-static {v1}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/ClipPreferences;->isDefaultExportResolutionSet()Z

    move-result v1

    if-nez v1, :cond_4

    if-eq v0, v2, :cond_3

    const v1, 0x7f120563

    if-eq v0, v1, :cond_3

    const v1, 0x7f120562

    if-eq v0, v1, :cond_3

    const v1, 0x7f120565

    if-eq v0, v1, :cond_3

    const v1, 0x7f120566

    if-ne v0, v1, :cond_4

    .line 248
    :cond_3
    new-instance v1, Lcom/adobe/premiereclip/dialogs/ExportResDialog;

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/adobe/premiereclip/dialogs/ExportResDialog;-><init>(Landroid/content/Context;)V

    .line 249
    new-instance v2, Lcom/adobe/premiereclip/sharing/SharingOptions$2;

    invoke-direct {v2, p0, v0}, Lcom/adobe/premiereclip/sharing/SharingOptions$2;-><init>(Lcom/adobe/premiereclip/sharing/SharingOptions;I)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->setOnContinueListener(Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V

    .line 255
    invoke-virtual {v1}, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->show()V

    .line 256
    invoke-virtual {v1}, Lcom/adobe/premiereclip/dialogs/ExportResDialog;->setSelection()V

    .line 257
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->listener:Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->listener:Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;->onSharingOptionsClosed()V

    goto :goto_0

    .line 261
    :cond_4
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->continueSharing(I)V

    goto/16 :goto_0
.end method

.method public onStarted()V
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharingInProgress:Z

    .line 455
    return-void
.end method

.method public openView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-boolean v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->open:Z

    if-nez v0, :cond_1

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->open:Z

    .line 109
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->animationsNotInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->initializeAnimations()V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->background:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharingOptionsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->closeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 115
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharingOptionsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->openAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 117
    :cond_1
    return-void
.end method

.method public setListener(Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->listener:Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;

    .line 104
    return-void
.end method

.method public sharePublish()V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->listener:Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->listener:Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;->onSharingOptionsClosed()V

    .line 318
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    const-class v2, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 319
    const-string/jumbo v1, "project_key"

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->project:Lcom/adobe/premiereclip/project/Project;

    iget-object v2, v2, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    const/16 v2, 0x4e21

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 321
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    const v1, 0x7f05002b

    const v2, 0x7f05002c

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 322
    return-void
.end method

.method public shareSaveCC()V
    .locals 3

    .prologue
    .line 325
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "Creative Cloud"

    const-string/jumbo v2, "NotApplicable"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapExportForDestination(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharingManager:Lcom/adobe/premiereclip/sharing/SharingManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/sharing/SharingManager;->setMode(I)V

    .line 329
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->startSharing()V

    .line 330
    return-void
.end method

.method public shareSaveGallery()V
    .locals 3

    .prologue
    .line 307
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "CameraRoll"

    const-string/jumbo v2, "NotApplicable"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapExportForDestination(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharingManager:Lcom/adobe/premiereclip/sharing/SharingManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/sharing/SharingManager;->setMode(I)V

    .line 311
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->startSharing()V

    .line 312
    return-void
.end method

.method public shareTwitter()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x8583b00

    const/4 v4, 0x0

    .line 344
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->listener:Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->listener:Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;->onSharingOptionsClosed()V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->project:Lcom/adobe/premiereclip/project/Project;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXReader;->getBumperPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/Editor;->createBumperClip(Ljava/lang/String;)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    .line 349
    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    .line 351
    :goto_0
    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->project:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationUs()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 352
    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/ClipPreferences;->getExportResolution()I

    move-result v2

    .line 353
    iget-object v3, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/adobe/premiereclip/util/Utilities;->is1080pExportSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x438

    if-ne v2, v3, :cond_1

    cmp-long v3, v0, v6

    if-gtz v3, :cond_2

    :cond_1
    const/16 v3, 0x2d0

    if-ne v2, v3, :cond_4

    cmp-long v0, v0, v6

    if-lez v0, :cond_4

    .line 358
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharingManager:Lcom/adobe/premiereclip/sharing/SharingManager;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->project:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getProjectExportName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4, v4}, Lcom/adobe/premiereclip/sharing/SharingManager;->setTwitterData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v0, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    .line 360
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    .line 361
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a04c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 363
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/premiereclip/sharing/SharingOptions$3;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/sharing/SharingOptions$3;-><init>(Lcom/adobe/premiereclip/sharing/SharingOptions;)V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->setAcceptButton(Ljava/lang/String;Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V

    .line 370
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a04a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/premiereclip/sharing/SharingOptions$4;

    invoke-direct {v2, p0, v0}, Lcom/adobe/premiereclip/sharing/SharingOptions$4;-><init>(Lcom/adobe/premiereclip/sharing/SharingOptions;Lcom/adobe/premiereclip/dialogs/ConfirmDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->setRejectButton(Ljava/lang/String;Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V

    .line 376
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->show()V

    .line 385
    :goto_1
    return-void

    .line 349
    :cond_3
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUs()J

    move-result-wide v0

    goto/16 :goto_0

    .line 380
    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    const-class v2, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 381
    const-string/jumbo v1, "project_key"

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->project:Lcom/adobe/premiereclip/project/Project;

    iget-object v2, v2, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string/jumbo v1, "project_name"

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->project:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/Project;->getProjectExportName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    const/16 v2, 0x4e23

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 384
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    const v1, 0x7f05002b

    const v2, 0x7f05002c

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1
.end method

.method public shareYoutube()V
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->listener:Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->listener:Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;->onSharingOptionsClosed()V

    .line 336
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    const-class v2, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    const-string/jumbo v1, "project_key"

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->project:Lcom/adobe/premiereclip/project/Project;

    iget-object v2, v2, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string/jumbo v1, "project_name"

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->project:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/Project;->getProjectExportName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    const/16 v2, 0x4e22

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 340
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    const v1, 0x7f05002b

    const v2, 0x7f05002c

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 341
    return-void
.end method

.method public startSharing()V
    .locals 8

    .prologue
    const v7, 0x7f0a04b1

    const/4 v6, 0x0

    .line 153
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->listener:Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->listener:Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;->onSharingOptionsClosed()V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->project:Lcom/adobe/premiereclip/project/Project;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXReader;->getBumperPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/Editor;->createBumperClip(Ljava/lang/String;)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    .line 158
    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    .line 160
    :goto_0
    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->project:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationUs()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 161
    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/ClipPreferences;->getExportResolution()I

    move-result v2

    .line 162
    iget-object v3, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharingManager:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/sharing/SharingManager;->getMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 163
    iget-object v3, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/adobe/premiereclip/util/Utilities;->is1080pExportSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x438

    if-ne v2, v3, :cond_2

    const-wide/32 v4, 0x35a4e900

    cmp-long v3, v0, v4

    if-lez v3, :cond_2

    .line 166
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    .line 167
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    .line 168
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a04af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 170
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 184
    :goto_1
    return-void

    .line 158
    :cond_1
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUs()J

    move-result-wide v0

    goto :goto_0

    .line 172
    :cond_2
    const/16 v3, 0x2d0

    if-ne v2, v3, :cond_3

    const-wide/32 v2, 0x55d4a800

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 174
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    .line 175
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->activity:Landroid/app/Activity;

    .line 176
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a04b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 178
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    goto :goto_1

    .line 183
    :cond_3
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->startSharingProcess()V

    goto :goto_1
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->listener:Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->listener:Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;->onSharingOptionsClosed()V

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharingManager:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingManager;->stop()V

    .line 424
    return-void
.end method
