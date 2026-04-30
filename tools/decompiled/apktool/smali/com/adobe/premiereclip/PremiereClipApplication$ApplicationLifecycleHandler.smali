.class Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;
.super Ljava/lang/Object;
.source "PremiereClipApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field private mCurrentActivity:Landroid/app/Activity;

.field private mLogoutClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;

.field final synthetic this$0:Lcom/adobe/premiereclip/PremiereClipApplication;


# direct methods
.method private constructor <init>(Lcom/adobe/premiereclip/PremiereClipApplication;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;->this$0:Lcom/adobe/premiereclip/PremiereClipApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/premiereclip/PremiereClipApplication;Lcom/adobe/premiereclip/PremiereClipApplication$1;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;-><init>(Lcom/adobe/premiereclip/PremiereClipApplication;)V

    return-void
.end method


# virtual methods
.method public handleLogout()V
    .locals 3

    .prologue
    .line 114
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->setRefreshCloud(Z)V

    .line 115
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->uninitializeSync()V

    .line 116
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->uninitalize()V

    .line 117
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didSignOut()V

    .line 118
    invoke-static {}, Lcom/adobe/premiereclip/util/BitmapCache;->clearDiskCache()V

    .line 119
    invoke-static {}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->onLogout()V

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/adobe/premiereclip/TourViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    iget-object v1, p0, Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;->this$0:Lcom/adobe/premiereclip/PremiereClipApplication;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/PremiereClipApplication;->startActivity(Landroid/content/Intent;)V

    .line 123
    return-void
.end method

.method public isInstanceOfBeforeSignInActivities(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 141
    instance-of v0, p1, Lcom/adobe/premiereclip/SplashScreenActivity;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/adobe/premiereclip/TourViewActivity;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 91
    iput-object p1, p0, Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;->mCurrentActivity:Landroid/app/Activity;

    .line 92
    new-instance v0, Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler$1;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler$1;-><init>(Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;->mLogoutClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;

    .line 103
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 162
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->sharedAuthManager()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;->mLogoutClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->unregisterLogoutClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;)V

    .line 163
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 148
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->sharedAuthManager()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;->mCurrentActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;->isInstanceOfBeforeSignInActivities(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;->handleLogout()V

    .line 151
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->sharedAuthManager()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;->mLogoutClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->registerLogoutClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;)V

    .line 152
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "app went to foreground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowBecomeActiveView()V

    .line 155
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didBecomeActive()V

    .line 156
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adobe/premiereclip/PremiereClipApplication;->access$002(Z)Z

    .line 158
    :cond_1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 137
    const/4 v0, 0x4

    const-string/jumbo v1, "Started Activity"

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/crashlytics/android/Crashlytics;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    .prologue
    .line 187
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 188
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "app went to background"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didResignActive()V

    .line 190
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowResignedActiveView()V

    .line 191
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/adobe/premiereclip/PremiereClipApplication;->access$002(Z)Z

    .line 193
    :cond_0
    return-void
.end method
