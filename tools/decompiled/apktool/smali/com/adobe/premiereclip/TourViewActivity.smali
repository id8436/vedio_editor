.class public Lcom/adobe/premiereclip/TourViewActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "TourViewActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLoginCallback;


# static fields
.field private static PACKAGE_NAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "TourViewActivity"


# instance fields
.field private final CLOUD_CHANGE_REQUEST_CODE:I

.field private mSectionsPagerAdapter:Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private passOnDataToMain:Z

.field private savedMediaUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private spinner:Landroid/widget/ImageView;

.field private spinnerActive:Z

.field private spinnerBackground:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 77
    const/16 v0, 0x65

    iput v0, p0, Lcom/adobe/premiereclip/TourViewActivity;->CLOUD_CHANGE_REQUEST_CODE:I

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/TourViewActivity;->passOnDataToMain:Z

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/TourViewActivity;)Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity;->mSectionsPagerAdapter:Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/TourViewActivity;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/adobe/premiereclip/TourViewActivity;->switchToMainView()V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/TourViewActivity;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/adobe/premiereclip/TourViewActivity;->openSignInPage()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/adobe/premiereclip/TourViewActivity;->PACKAGE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/TourViewActivity;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/adobe/premiereclip/TourViewActivity;->chooseMainOrCloudPickerView()V

    return-void
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/TourViewActivity;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/adobe/premiereclip/TourViewActivity;->switchToCloudPickerView()V

    return-void
.end method

.method private chooseMainOrCloudPickerView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 598
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity;->mSectionsPagerAdapter:Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/TourViewActivity;->mSectionsPagerAdapter:Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->getCurrentPageIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->pauseVideo(I)V

    .line 599
    const v0, 0x7f120173

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/TourViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 600
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 602
    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getAdobeId()Ljava/lang/String;

    move-result-object v0

    .line 603
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didSignInWithAdobeID(Ljava/lang/String;)V

    .line 604
    const-string/jumbo v1, "TourViewActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-virtual {p0}, Lcom/adobe/premiereclip/TourViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v1

    .line 606
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v2

    .line 607
    if-eqz v2, :cond_1

    .line 609
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hasLoggedInOnce_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getGUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 610
    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/ClipPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 615
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getInstance()Lcom/adobe/premiereclip/PremiereClipApplication;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/PremiereClipApplication;->setFirstLogin(Z)V

    .line 623
    :goto_0
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getInstance()Lcom/adobe/premiereclip/PremiereClipApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/PremiereClipApplication;->isFirstLogin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 625
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v1

    .line 626
    invoke-virtual {p0}, Lcom/adobe/premiereclip/TourViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 625
    invoke-virtual {v1, v2, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->initalize(Landroid/content/Context;Ljava/lang/String;)V

    .line 630
    :cond_0
    new-instance v0, Lcom/adobe/premiereclip/TourViewActivity$TourViewRunnable;

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getInstance()Lcom/adobe/premiereclip/PremiereClipApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/PremiereClipApplication;->isFirstLogin()Z

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/TourViewActivity$TourViewRunnable;-><init>(Lcom/adobe/premiereclip/TourViewActivity;Z)V

    .line 631
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/TourViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 635
    :cond_1
    return-void

    .line 618
    :cond_2
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getInstance()Lcom/adobe/premiereclip/PremiereClipApplication;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/adobe/premiereclip/PremiereClipApplication;->setFirstLogin(Z)V

    goto :goto_0
.end method

.method private clearAccountPreferences()V
    .locals 2

    .prologue
    .line 592
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "googleAccount"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/ClipPreferences;->removePreference(Ljava/lang/String;)V

    .line 593
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "ACCESS_KEY"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/ClipPreferences;->removePreference(Ljava/lang/String;)V

    .line 594
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "ACCESS_SECRET"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/ClipPreferences;->removePreference(Ljava/lang/String;)V

    .line 595
    return-void
.end method

.method private handleMediaFromExternalApp(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 242
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 244
    const-string/jumbo v2, "clip_notification"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 245
    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 246
    const-string/jumbo v0, "TourViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ACTION_SEND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string/jumbo v0, "image/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    const-string/jumbo v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/adobe/premiereclip/TourViewActivity;->savedMediaUris:Ljava/util/ArrayList;

    .line 250
    iget-object v1, p0, Lcom/adobe/premiereclip/TourViewActivity;->savedMediaUris:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    iput-boolean v5, p0, Lcom/adobe/premiereclip/TourViewActivity;->passOnDataToMain:Z

    .line 259
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/TourViewActivity;->passOnDataToMain:Z

    if-eqz v0, :cond_2

    .line 260
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didAttemptExternalLaunch(Z)V

    .line 262
    :cond_2
    return-void

    .line 253
    :cond_3
    const-string/jumbo v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 254
    const-string/jumbo v0, "TourViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ACTION_SEND_MULTIPLE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string/jumbo v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity;->savedMediaUris:Ljava/util/ArrayList;

    .line 256
    iput-boolean v5, p0, Lcom/adobe/premiereclip/TourViewActivity;->passOnDataToMain:Z

    goto :goto_0
.end method

.method private openSignInPage()V
    .locals 1

    .prologue
    .line 345
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didAttemptSignIn()V

    .line 346
    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->login(Landroid/app/Activity;)V

    .line 347
    return-void
.end method

.method private prepareButtonListeners()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 350
    const v0, 0x7f120173

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/TourViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 351
    new-instance v1, Lcom/adobe/premiereclip/TourViewActivity$5;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/TourViewActivity$5;-><init>(Lcom/adobe/premiereclip/TourViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 360
    const v1, 0x7f120172

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/TourViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 361
    new-instance v2, Lcom/adobe/premiereclip/TourViewActivity$6;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/TourViewActivity$6;-><init>(Lcom/adobe/premiereclip/TourViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 371
    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 372
    invoke-static {v1}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 373
    return-void
.end method

.method private switchToCloudPickerView()V
    .locals 4

    .prologue
    .line 285
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/TourViewActivity$3;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/TourViewActivity$3;-><init>(Lcom/adobe/premiereclip/TourViewActivity;)V

    new-instance v2, Lcom/adobe/premiereclip/TourViewActivity$4;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/TourViewActivity$4;-><init>(Lcom/adobe/premiereclip/TourViewActivity;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->refreshClouds(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V

    .line 342
    return-void
.end method

.method private switchToMainView()V
    .locals 4

    .prologue
    .line 266
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    iget-boolean v1, p0, Lcom/adobe/premiereclip/TourViewActivity;->passOnDataToMain:Z

    if-eqz v1, :cond_0

    .line 268
    const-string/jumbo v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string/jumbo v1, "multiple"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string/jumbo v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/adobe/premiereclip/TourViewActivity;->savedMediaUris:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 272
    :cond_0
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getAdobeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didAuthenticateUserWithAdobeID(Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/adobe/utility/AndroidMiscUtils;->getFreeDiskspace()J

    move-result-wide v2

    .line 274
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/adobe/premiereclip/metrics/Metrics;->didRetrieveDeviceFreeSpaceBytes(J)V

    .line 275
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/TourViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 276
    invoke-direct {p0}, Lcom/adobe/premiereclip/TourViewActivity;->toggleSpinner()V

    .line 277
    invoke-virtual {p0}, Lcom/adobe/premiereclip/TourViewActivity;->finish()V

    .line 278
    return-void
.end method

.method private toggleSpinner()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 657
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity;->spinnerBackground:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity;->spinnerBackground:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/TourViewActivity;->spinnerActive:Z

    .line 661
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity;->spinnerBackground:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity;->spinner:Landroid/widget/ImageView;

    const v1, 0x7f05002f

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    iput-boolean v1, p0, Lcom/adobe/premiereclip/TourViewActivity;->spinnerActive:Z

    .line 665
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity;->spinner:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 666
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity;->spinnerBackground:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 667
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity;->mSectionsPagerAdapter:Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/TourViewActivity;->mSectionsPagerAdapter:Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->getCurrentPageIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->resumeVideo(I)V

    goto :goto_0
.end method


# virtual methods
.method public didLogin(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 3

    .prologue
    .line 563
    const-string/jumbo v0, "TourViewActivity"

    const-string/jumbo v1, "didLogin()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    if-eqz p1, :cond_0

    .line 565
    const-string/jumbo v0, "App"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error in Login: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :goto_0
    return-void

    .line 567
    :cond_0
    invoke-static {}, Lcom/adobe/sync/s3utils/S3TransferManager;->getInstance()Lcom/adobe/sync/s3utils/S3TransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/sync/s3utils/S3TransferManager;->setReadyForTransfers()V

    .line 569
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity;->mSectionsPagerAdapter:Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/TourViewActivity;->mSectionsPagerAdapter:Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->getCurrentPageIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->preventPlayback(I)V

    .line 570
    invoke-direct {p0}, Lcom/adobe/premiereclip/TourViewActivity;->clearAccountPreferences()V

    .line 571
    invoke-direct {p0}, Lcom/adobe/premiereclip/TourViewActivity;->toggleSpinner()V

    .line 572
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/TourViewActivity$7;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/TourViewActivity$7;-><init>(Lcom/adobe/premiereclip/TourViewActivity;)V

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/util/CloudUtil;->initCloud(Landroid/content/Context;Lcom/adobe/premiereclip/util/CloudUtil$Listener;)V

    goto :goto_0
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v2, -0x1

    const/4 v6, 0x1

    .line 171
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 172
    const-string/jumbo v0, "TourViewActivity"

    const-string/jumbo v1, "onActivityResult called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sparse-switch p1, :sswitch_data_0

    .line 236
    const-string/jumbo v0, "App"

    const-string/jumbo v1, "Unhandled Intent on MainActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 176
    :sswitch_0
    if-ne p2, v2, :cond_1

    .line 177
    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v0

    .line 178
    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->handleLoginActivityResponse(IILandroid/content/Intent;Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLoginCallback;)V

    goto :goto_0

    .line 179
    :cond_1
    if-nez p2, :cond_2

    .line 180
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didCancelSignIn()V

    goto :goto_0

    .line 182
    :cond_2
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/metrics/Metrics;->didFailSignInWithError(I)V

    goto :goto_0

    .line 186
    :sswitch_1
    if-ne p2, v2, :cond_0

    .line 187
    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v0

    .line 188
    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->handleLoginActivityResponse(IILandroid/content/Intent;Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLoginCallback;)V

    goto :goto_0

    .line 208
    :sswitch_2
    invoke-virtual {p0}, Lcom/adobe/premiereclip/TourViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    .line 210
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getInstance()Lcom/adobe/premiereclip/PremiereClipApplication;

    move-result-object v1

    .line 213
    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getAdobeId()Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v3

    .line 218
    if-eqz v3, :cond_3

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hasLoggedInOnce_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getGUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/ClipPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hasLoggedInOnce_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getGUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Lcom/adobe/premiereclip/ClipPreferences;->setPreference(Ljava/lang/String;Z)V

    .line 223
    invoke-virtual {v1, v6}, Lcom/adobe/premiereclip/PremiereClipApplication;->setFirstLogin(Z)V

    .line 228
    :cond_3
    :goto_1
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/adobe/premiereclip/dcx/DCXModelController;->setRefreshCloud(Z)V

    .line 229
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    .line 230
    invoke-virtual {p0}, Lcom/adobe/premiereclip/TourViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 229
    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/dcx/DCXModelController;->initalize(Landroid/content/Context;Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lcom/adobe/premiereclip/TourViewActivity;->switchToMainView()V

    goto/16 :goto_0

    .line 225
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/PremiereClipApplication;->setFirstLogin(Z)V

    goto :goto_1

    .line 174
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_2
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/adobe/premiereclip/TourViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 91
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/TourViewActivity;->handleMediaFromExternalApp(Landroid/content/Intent;)V

    .line 92
    invoke-virtual {p0}, Lcom/adobe/premiereclip/TourViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/premiereclip/TourViewActivity;->PACKAGE_NAME:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/adobe/premiereclip/util/Utilities;->getAdobeIdWrapped()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/adobe/premiereclip/TourViewActivity;->switchToMainView()V

    .line 95
    invoke-virtual {p0}, Lcom/adobe/premiereclip/TourViewActivity;->finish()V

    .line 146
    :goto_0
    return-void

    .line 97
    :cond_0
    const v0, 0x7f040035

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/TourViewActivity;->setContentView(I)V

    .line 98
    if-eqz v1, :cond_1

    .line 99
    const-string/jumbo v0, "TourViewActivity"

    const-string/jumbo v2, "not signed in"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string/jumbo v0, "LightroomProject"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-direct {p0}, Lcom/adobe/premiereclip/TourViewActivity;->openSignInPage()V

    .line 105
    :cond_1
    new-instance v0, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/TourViewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;-><init>(Lcom/adobe/premiereclip/TourViewActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity;->mSectionsPagerAdapter:Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;

    .line 107
    const v0, 0x7f12016f

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/TourViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 108
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/adobe/premiereclip/TourViewActivity;->mSectionsPagerAdapter:Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 109
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/adobe/premiereclip/TourViewActivity$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/TourViewActivity$1;-><init>(Lcom/adobe/premiereclip/TourViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 129
    const v0, 0x7f120170

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/TourViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    .line 130
    iget-object v1, p0, Lcom/adobe/premiereclip/TourViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 132
    invoke-direct {p0}, Lcom/adobe/premiereclip/TourViewActivity;->prepareButtonListeners()V

    .line 134
    const v0, 0x7f120174

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/TourViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity;->spinnerBackground:Landroid/widget/RelativeLayout;

    .line 135
    const v0, 0x7f120175

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/TourViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity;->spinner:Landroid/widget/ImageView;

    .line 136
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity;->spinnerBackground:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/adobe/premiereclip/TourViewActivity$2;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/TourViewActivity$2;-><init>(Lcom/adobe/premiereclip/TourViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 142
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity;->spinnerBackground:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 144
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowWelcomeView()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 167
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 151
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity;->mSectionsPagerAdapter:Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/TourViewActivity;->mSectionsPagerAdapter:Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->getCurrentPageIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->pauseVideo(I)V

    .line 152
    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->handleOnPause()V

    .line 153
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 158
    iget-boolean v0, p0, Lcom/adobe/premiereclip/TourViewActivity;->spinnerActive:Z

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity;->mSectionsPagerAdapter:Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/TourViewActivity;->mSectionsPagerAdapter:Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->getCurrentPageIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/TourViewActivity$SectionsPagerAdapter;->restartVideo(I)V

    .line 161
    :cond_0
    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->handleOnResume()V

    .line 162
    return-void
.end method
