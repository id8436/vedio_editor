.class abstract Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;
.super Ljava/lang/Object;
.source "AbstractCheckForUpdatesController.java"

# interfaces
.implements Lcom/crashlytics/android/beta/UpdatesController;


# static fields
.field static final LAST_UPDATE_CHECK_DEFAULT:J = 0x0L

.field static final LAST_UPDATE_CHECK_KEY:Ljava/lang/String; = "last_update_check"

.field private static final MILLIS_PER_SECOND:J = 0x3e8L


# instance fields
.field private beta:Lcom/crashlytics/android/beta/Beta;

.field private betaSettings:Lc/a/a/a/a/g/f;

.field private buildProps:Lcom/crashlytics/android/beta/BuildProperties;

.field private context:Landroid/content/Context;

.field private currentTimeProvider:Lc/a/a/a/a/b/s;

.field private final externallyReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private httpRequestFactory:Lc/a/a/a/a/e/m;

.field private idManager:Lc/a/a/a/a/b/z;

.field private final initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastCheckTimeMillis:J

.field private preferenceStore:Lc/a/a/a/a/f/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;-><init>(Z)V

    .line 61
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->lastCheckTimeMillis:J

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->externallyReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    return-void
.end method

.method private performUpdateCheck()V
    .locals 8

    .prologue
    .line 149
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "Beta"

    const-string/jumbo v2, "Performing update check"

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v0, Lc/a/a/a/a/b/k;

    invoke-direct {v0}, Lc/a/a/a/a/b/k;-><init>()V

    iget-object v1, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lc/a/a/a/a/b/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 152
    iget-object v0, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->idManager:Lc/a/a/a/a/b/z;

    iget-object v1, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->buildProps:Lcom/crashlytics/android/beta/BuildProperties;

    iget-object v1, v1, Lcom/crashlytics/android/beta/BuildProperties;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Lc/a/a/a/a/b/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 155
    new-instance v0, Lcom/crashlytics/android/beta/CheckForUpdatesRequest;

    iget-object v1, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->beta:Lcom/crashlytics/android/beta/Beta;

    iget-object v2, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->beta:Lcom/crashlytics/android/beta/Beta;

    invoke-virtual {v2}, Lcom/crashlytics/android/beta/Beta;->getOverridenSpiEndpoint()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->betaSettings:Lc/a/a/a/a/g/f;

    iget-object v3, v3, Lc/a/a/a/a/g/f;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->httpRequestFactory:Lc/a/a/a/a/e/m;

    new-instance v5, Lcom/crashlytics/android/beta/CheckForUpdatesResponseTransform;

    invoke-direct {v5}, Lcom/crashlytics/android/beta/CheckForUpdatesResponseTransform;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/beta/CheckForUpdatesRequest;-><init>(Lc/a/a/a/q;Ljava/lang/String;Ljava/lang/String;Lc/a/a/a/a/e/m;Lcom/crashlytics/android/beta/CheckForUpdatesResponseTransform;)V

    .line 166
    iget-object v1, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->buildProps:Lcom/crashlytics/android/beta/BuildProperties;

    invoke-virtual {v0, v6, v7, v1}, Lcom/crashlytics/android/beta/CheckForUpdatesRequest;->invoke(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/beta/BuildProperties;)Lcom/crashlytics/android/beta/CheckForUpdatesResponse;

    .line 167
    return-void
.end method


# virtual methods
.method protected checkForUpdates()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v1, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->preferenceStore:Lc/a/a/a/a/f/c;

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->preferenceStore:Lc/a/a/a/a/f/c;

    invoke-interface {v0}, Lc/a/a/a/a/f/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "last_update_check"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->preferenceStore:Lc/a/a/a/a/f/c;

    iget-object v2, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->preferenceStore:Lc/a/a/a/a/f/c;

    invoke-interface {v2}, Lc/a/a/a/a/f/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "last_update_check"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v0, v2}, Lc/a/a/a/a/f/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 122
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget-object v0, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->currentTimeProvider:Lc/a/a/a/a/b/s;

    invoke-interface {v0}, Lc/a/a/a/a/b/s;->a()J

    move-result-wide v0

    .line 125
    iget-object v2, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->betaSettings:Lc/a/a/a/a/g/f;

    iget v2, v2, Lc/a/a/a/a/g/f;->b:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 128
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v4

    const-string/jumbo v5, "Beta"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Check for updates delay: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v4

    const-string/jumbo v5, "Beta"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Check for updates last check time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->getLastCheckTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->getLastCheckTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 134
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v4

    const-string/jumbo v5, "Beta"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Check for updates current time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", next check time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 139
    :try_start_1
    invoke-direct {p0}, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->performUpdateCheck()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->setLastCheckTimeMillis(J)V

    .line 146
    :goto_0
    return-void

    .line 122
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 141
    :catchall_1
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->setLastCheckTimeMillis(J)V

    throw v2

    .line 144
    :cond_1
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "Beta"

    const-string/jumbo v2, "Check for updates next check time was not passed"

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method getLastCheckTimeMillis()J
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->lastCheckTimeMillis:J

    return-wide v0
.end method

.method public initialize(Landroid/content/Context;Lcom/crashlytics/android/beta/Beta;Lc/a/a/a/a/b/z;Lc/a/a/a/a/g/f;Lcom/crashlytics/android/beta/BuildProperties;Lc/a/a/a/a/f/c;Lc/a/a/a/a/b/s;Lc/a/a/a/a/e/m;)V
    .locals 1

    .prologue
    .line 81
    iput-object p1, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->context:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->beta:Lcom/crashlytics/android/beta/Beta;

    .line 83
    iput-object p3, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->idManager:Lc/a/a/a/a/b/z;

    .line 84
    iput-object p4, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->betaSettings:Lc/a/a/a/a/g/f;

    .line 85
    iput-object p5, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->buildProps:Lcom/crashlytics/android/beta/BuildProperties;

    .line 86
    iput-object p6, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->preferenceStore:Lc/a/a/a/a/f/c;

    .line 87
    iput-object p7, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->currentTimeProvider:Lc/a/a/a/a/b/s;

    .line 88
    iput-object p8, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->httpRequestFactory:Lc/a/a/a/a/e/m;

    .line 90
    invoke-virtual {p0}, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->signalInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->checkForUpdates()V

    .line 93
    :cond_0
    return-void
.end method

.method setLastCheckTimeMillis(J)V
    .locals 1

    .prologue
    .line 173
    iput-wide p1, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->lastCheckTimeMillis:J

    .line 174
    return-void
.end method

.method protected signalExternallyReady()Z
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->externallyReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 101
    iget-object v0, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method signalInitialized()Z
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 111
    iget-object v0, p0, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;->externallyReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
