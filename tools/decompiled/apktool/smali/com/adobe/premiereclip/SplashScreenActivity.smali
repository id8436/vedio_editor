.class public Lcom/adobe/premiereclip/SplashScreenActivity;
.super Landroid/app/Activity;
.source "SplashScreenActivity.java"


# static fields
.field private static final SPLASH_DISPLAY_TIME:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/SplashScreenActivity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/adobe/premiereclip/SplashScreenActivity;->switchToTourView()V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/SplashScreenActivity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/adobe/premiereclip/SplashScreenActivity;->switchToMainView()V

    return-void
.end method

.method private switchToMainView()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 96
    return-void
.end method

.method private switchToTourView()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/TourViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f040033

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/SplashScreenActivity;->setContentView(I)V

    .line 43
    invoke-static {p0}, Lcom/adobe/premiereclip/util/ScreenUtils;->fullscreen(Landroid/app/Activity;)V

    .line 44
    invoke-static {p0}, Lcom/adobe/premiereclip/util/Utilities;->setStatusBar(Landroid/app/Activity;)V

    .line 46
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 57
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 51
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowSplashScreen()V

    .line 52
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/adobe/premiereclip/SplashScreenActivity$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/SplashScreenActivity$1;-><init>(Lcom/adobe/premiereclip/SplashScreenActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    return-void
.end method
