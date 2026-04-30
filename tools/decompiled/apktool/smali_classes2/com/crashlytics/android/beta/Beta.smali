.class public Lcom/crashlytics/android/beta/Beta;
.super Lc/a/a/a/q;
.source "Beta.java"

# interfaces
.implements Lc/a/a/a/a/b/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/a/q",
        "<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lc/a/a/a/a/b/u;"
    }
.end annotation


# static fields
.field private static final CRASHLYTICS_API_ENDPOINT:Ljava/lang/String; = "com.crashlytics.ApiEndpoint"

.field private static final CRASHLYTICS_BUILD_PROPERTIES:Ljava/lang/String; = "crashlytics-build.properties"

.field static final NO_DEVICE_TOKEN:Ljava/lang/String; = ""

.field public static final TAG:Ljava/lang/String; = "Beta"


# instance fields
.field private final deviceTokenCache:Lc/a/a/a/a/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/a/a/a/b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceTokenLoader:Lcom/crashlytics/android/beta/DeviceTokenLoader;

.field private updatesController:Lcom/crashlytics/android/beta/UpdatesController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lc/a/a/a/q;-><init>()V

    .line 40
    new-instance v0, Lc/a/a/a/a/a/b;

    invoke-direct {v0}, Lc/a/a/a/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/beta/Beta;->deviceTokenCache:Lc/a/a/a/a/a/b;

    .line 41
    new-instance v0, Lcom/crashlytics/android/beta/DeviceTokenLoader;

    invoke-direct {v0}, Lcom/crashlytics/android/beta/DeviceTokenLoader;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/beta/Beta;->deviceTokenLoader:Lcom/crashlytics/android/beta/DeviceTokenLoader;

    return-void
.end method

.method private getBetaDeviceToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 157
    .line 159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p2, v0}, Lcom/crashlytics/android/beta/Beta;->isAppPossiblyInstalledByBeta(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v2, "Beta"

    const-string/jumbo v3, "App was possibly installed by Beta. Getting device token"

    invoke-interface {v0, v2, v3}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/beta/Beta;->deviceTokenCache:Lc/a/a/a/a/a/b;

    iget-object v2, p0, Lcom/crashlytics/android/beta/Beta;->deviceTokenLoader:Lcom/crashlytics/android/beta/DeviceTokenLoader;

    invoke-virtual {v0, p1, v2}, Lc/a/a/a/a/a/b;->a(Landroid/content/Context;Lc/a/a/a/a/a/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    move-object v1, v0

    .line 171
    :goto_0
    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v2

    const-string/jumbo v3, "Beta"

    const-string/jumbo v4, "Failed to load the Beta device token"

    invoke-interface {v2, v3, v4, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 168
    :cond_1
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v2, "Beta"

    const-string/jumbo v3, "App was not installed by Beta. Skipping device token"

    invoke-interface {v0, v2, v3}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getBetaSettingsData()Lc/a/a/a/a/g/f;
    .locals 1

    .prologue
    .line 175
    invoke-static {}, Lc/a/a/a/a/g/q;->a()Lc/a/a/a/a/g/q;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/a/a/g/q;->b()Lc/a/a/a/a/g/w;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    .line 178
    iget-object v0, v0, Lc/a/a/a/a/g/w;->f:Lc/a/a/a/a/g/f;

    .line 181
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/crashlytics/android/beta/Beta;
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/crashlytics/android/beta/Beta;

    invoke-static {v0}, Lc/a/a/a/f;->a(Ljava/lang/Class;)Lc/a/a/a/q;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/beta/Beta;

    return-object v0
.end method

.method private loadBuildProperties(Landroid/content/Context;)Lcom/crashlytics/android/beta/BuildProperties;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 185
    .line 189
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v2, "crashlytics-build.properties"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 191
    if-eqz v2, :cond_2

    .line 192
    :try_start_1
    invoke-static {v2}, Lcom/crashlytics/android/beta/BuildProperties;->fromPropertiesStream(Ljava/io/InputStream;)Lcom/crashlytics/android/beta/BuildProperties;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 194
    :try_start_2
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v3, "Beta"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/crashlytics/android/beta/BuildProperties;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " build properties: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/crashlytics/android/beta/BuildProperties;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/crashlytics/android/beta/BuildProperties;->versionCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/crashlytics/android/beta/BuildProperties;->buildId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    .line 201
    :goto_0
    if-eqz v2, :cond_0

    .line 203
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 210
    :cond_0
    :goto_1
    return-object v0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v2

    const-string/jumbo v3, "Beta"

    const-string/jumbo v4, "Error closing Beta build properties asset"

    invoke-interface {v2, v3, v4, v1}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 198
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 199
    :goto_2
    :try_start_4
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v3

    const-string/jumbo v4, "Beta"

    const-string/jumbo v5, "Error reading Beta build properties"

    invoke-interface {v3, v4, v5, v1}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 201
    if-eqz v2, :cond_0

    .line 203
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 204
    :catch_2
    move-exception v1

    .line 205
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v2

    const-string/jumbo v3, "Beta"

    const-string/jumbo v4, "Error closing Beta build properties asset"

    invoke-interface {v2, v3, v4, v1}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 201
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_1

    .line 203
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 206
    :cond_1
    :goto_4
    throw v0

    .line 204
    :catch_3
    move-exception v1

    .line 205
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v2

    const-string/jumbo v3, "Beta"

    const-string/jumbo v4, "Error closing Beta build properties asset"

    invoke-interface {v2, v3, v4, v1}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 201
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 198
    :catch_4
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method canCheckForUpdates(Lc/a/a/a/a/g/f;Lcom/crashlytics/android/beta/BuildProperties;)Z
    .locals 1

    .prologue
    .line 151
    if-eqz p1, :cond_0

    iget-object v0, p1, Lc/a/a/a/a/g/f;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method createUpdatesController(ILandroid/app/Application;)Lcom/crashlytics/android/beta/UpdatesController;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 98
    const/16 v0, 0xe

    if-lt p1, v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/crashlytics/android/beta/Beta;->getFabric()Lc/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/a/f;->e()Lc/a/a/a/a;

    move-result-object v1

    .line 104
    invoke-virtual {p0}, Lcom/crashlytics/android/beta/Beta;->getFabric()Lc/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/a/f;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 105
    new-instance v0, Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController;

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/beta/ActivityLifecycleCheckForUpdatesController;-><init>(Lc/a/a/a/a;Ljava/util/concurrent/ExecutorService;)V

    .line 108
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/crashlytics/android/beta/ImmediateCheckForUpdatesController;

    invoke-direct {v0}, Lcom/crashlytics/android/beta/ImmediateCheckForUpdatesController;-><init>()V

    goto :goto_0
.end method

.method protected doInBackground()Ljava/lang/Boolean;
    .locals 9

    .prologue
    .line 61
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "Beta"

    const-string/jumbo v2, "Beta kit initializing..."

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/crashlytics/android/beta/Beta;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 64
    invoke-virtual {p0}, Lcom/crashlytics/android/beta/Beta;->getIdManager()Lc/a/a/a/a/b/z;

    move-result-object v3

    .line 65
    invoke-virtual {v3}, Lc/a/a/a/a/b/z;->h()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/beta/Beta;->getBetaDeviceToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "Beta"

    const-string/jumbo v2, "A Beta device token was not found for this app"

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 73
    :cond_0
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v2, "Beta"

    const-string/jumbo v4, "Beta device token is present, checking for app updates."

    invoke-interface {v0, v2, v4}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/crashlytics/android/beta/Beta;->getBetaSettingsData()Lc/a/a/a/a/g/f;

    move-result-object v4

    .line 76
    invoke-direct {p0, v1}, Lcom/crashlytics/android/beta/Beta;->loadBuildProperties(Landroid/content/Context;)Lcom/crashlytics/android/beta/BuildProperties;

    move-result-object v5

    .line 78
    invoke-virtual {p0, v4, v5}, Lcom/crashlytics/android/beta/Beta;->canCheckForUpdates(Lc/a/a/a/a/g/f;Lcom/crashlytics/android/beta/BuildProperties;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/crashlytics/android/beta/Beta;->updatesController:Lcom/crashlytics/android/beta/UpdatesController;

    new-instance v6, Lc/a/a/a/a/f/d;

    invoke-direct {v6, p0}, Lc/a/a/a/a/f/d;-><init>(Lc/a/a/a/q;)V

    new-instance v7, Lc/a/a/a/a/b/aj;

    invoke-direct {v7}, Lc/a/a/a/a/b/aj;-><init>()V

    new-instance v8, Lc/a/a/a/a/e/b;

    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v2

    invoke-direct {v8, v2}, Lc/a/a/a/a/e/b;-><init>(Lc/a/a/a/t;)V

    move-object v2, p0

    invoke-interface/range {v0 .. v8}, Lcom/crashlytics/android/beta/UpdatesController;->initialize(Landroid/content/Context;Lcom/crashlytics/android/beta/Beta;Lc/a/a/a/a/b/z;Lc/a/a/a/a/g/f;Lcom/crashlytics/android/beta/BuildProperties;Lc/a/a/a/a/f/c;Lc/a/a/a/a/b/s;Lc/a/a/a/a/e/m;)V

    .line 90
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/crashlytics/android/beta/Beta;->doInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdentifiers()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lc/a/a/a/a/b/aa;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/crashlytics/android/beta/Beta;->getIdManager()Lc/a/a/a/a/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/a/a/b/z;->h()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Lcom/crashlytics/android/beta/Beta;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/beta/Beta;->getBetaDeviceToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    sget-object v2, Lc/a/a/a/a/b/aa;->c:Lc/a/a/a/a/b/aa;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    return-object v1
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string/jumbo v0, "com.crashlytics.sdk.android:beta"

    return-object v0
.end method

.method getOverridenSpiEndpoint()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/crashlytics/android/beta/Beta;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lc/a/a/a/a/b/m;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string/jumbo v0, "1.1.3.61"

    return-object v0
.end method

.method isAppPossiblyInstalledByBeta(Ljava/lang/String;I)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 139
    const/16 v0, 0xb

    if-ge p2, v0, :cond_1

    .line 143
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 146
    :cond_1
    const-string/jumbo v0, "io.crash.air"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPreExecute()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/crashlytics/android/beta/Beta;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 55
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, v1, v0}, Lcom/crashlytics/android/beta/Beta;->createUpdatesController(ILandroid/app/Application;)Lcom/crashlytics/android/beta/UpdatesController;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/beta/Beta;->updatesController:Lcom/crashlytics/android/beta/UpdatesController;

    .line 56
    const/4 v0, 0x1

    return v0
.end method
