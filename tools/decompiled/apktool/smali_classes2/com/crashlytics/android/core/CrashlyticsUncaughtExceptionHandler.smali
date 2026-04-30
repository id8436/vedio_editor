.class Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final ANALYZER_VERSION:I = 0x1

.field static final ANY_SESSION_FILENAME_FILTER:Ljava/io/FilenameFilter;

.field static final CLS_CRASH_MARKER_FILE_NAME:Ljava/lang/String; = "crash_marker"

.field private static final EVENT_TYPE_CRASH:Ljava/lang/String; = "crash"

.field private static final EVENT_TYPE_LOGGED:Ljava/lang/String; = "error"

.field private static final GENERATOR_FORMAT:Ljava/lang/String; = "Crashlytics Android SDK/%s"

.field static final INVALID_CLS_CACHE_DIR:Ljava/lang/String; = "invalidClsFiles"

.field static final LARGEST_FILE_NAME_FIRST:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_COMPLETE_SESSIONS_COUNT:I = 0x4

.field private static final MAX_LOCAL_LOGGED_EXCEPTIONS:I = 0x40

.field static final MAX_OPEN_SESSIONS:I = 0x8

.field private static final SEND_AT_CRASHTIME_HEADER:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final SESSION_APP_TAG:Ljava/lang/String; = "SessionApp"

.field static final SESSION_BEGIN_TAG:Ljava/lang/String; = "BeginSession"

.field static final SESSION_DEVICE_TAG:Ljava/lang/String; = "SessionDevice"

.field static final SESSION_FATAL_TAG:Ljava/lang/String; = "SessionCrash"

.field static final SESSION_FILE_FILTER:Ljava/io/FilenameFilter;

.field private static final SESSION_FILE_PATTERN:Ljava/util/regex/Pattern;

.field private static final SESSION_ID_LENGTH:I = 0x23

.field static final SESSION_NON_FATAL_TAG:Ljava/lang/String; = "SessionEvent"

.field static final SESSION_OS_TAG:Ljava/lang/String; = "SessionOS"

.field static final SESSION_USER_TAG:Ljava/lang/String; = "SessionUser"

.field static final SMALLEST_FILE_NAME_FIRST:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

.field private final defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final eventCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

.field private final filesDir:Ljava/io/File;

.field private final idManager:Lc/a/a/a/a/b/z;

.field private final isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final logFileManager:Lcom/crashlytics/android/core/LogFileManager;

.field private powerConnected:Z

.field private final powerConnectedReceiver:Landroid/content/BroadcastReceiver;

.field private final powerDisconnectedReceiver:Landroid/content/BroadcastReceiver;

.field private final receiversRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final sessionDataWriter:Lcom/crashlytics/android/core/SessionDataWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$1;

    invoke-direct {v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$1;-><init>()V

    sput-object v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->SESSION_FILE_FILTER:Ljava/io/FilenameFilter;

    .line 130
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$2;

    invoke-direct {v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$2;-><init>()V

    sput-object v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->LARGEST_FILE_NAME_FIRST:Ljava/util/Comparator;

    .line 137
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$3;

    invoke-direct {v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$3;-><init>()V

    sput-object v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->SMALLEST_FILE_NAME_FIRST:Ljava/util/Comparator;

    .line 147
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$4;

    invoke-direct {v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$4;-><init>()V

    sput-object v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->ANY_SESSION_FILENAME_FILTER:Ljava/io/FilenameFilter;

    .line 154
    const-string/jumbo v0, "([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->SESSION_FILE_PATTERN:Ljava/util/regex/Pattern;

    .line 157
    const-string/jumbo v0, "X-CRASHLYTICS-SEND-FLAGS"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->SEND_AT_CRASHTIME_HEADER:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/crashlytics/android/core/CrashlyticsListener;Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;Lc/a/a/a/a/b/z;Lcom/crashlytics/android/core/SessionDataWriter;Lcom/crashlytics/android/core/CrashlyticsCore;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->eventCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 185
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->receiversRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 217
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 218
    iput-object p3, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

    .line 219
    iput-object p4, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->idManager:Lc/a/a/a/a/b/z;

    .line 220
    iput-object p6, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    .line 221
    iput-object p5, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->sessionDataWriter:Lcom/crashlytics/android/core/SessionDataWriter;

    .line 222
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 224
    invoke-virtual {p6}, Lcom/crashlytics/android/core/CrashlyticsCore;->getSdkDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    .line 225
    new-instance v0, Lcom/crashlytics/android/core/LogFileManager;

    invoke-virtual {p6}, Lcom/crashlytics/android/core/CrashlyticsCore;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/core/LogFileManager;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->logFileManager:Lcom/crashlytics/android/core/LogFileManager;

    .line 227
    invoke-direct {p0, p2}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->notifyCrashlyticsListenerOfPreviousCrash(Lcom/crashlytics/android/core/CrashlyticsListener;)V

    .line 229
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$5;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$5;-><init>(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->powerConnectedReceiver:Landroid/content/BroadcastReceiver;

    .line 236
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 238
    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$6;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$6;-><init>(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;)V

    iput-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->powerDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    .line 245
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p6}, Lcom/crashlytics/android/core/CrashlyticsCore;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 249
    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->powerConnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->powerDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->receiversRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 252
    return-void
.end method

.method static synthetic access$000()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->SESSION_FILE_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;Lcom/crashlytics/android/core/internal/models/SessionEventData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeExternalCrashEvent(Lcom/crashlytics/android/core/internal/models/SessionEventData;)V

    return-void
.end method

.method static synthetic access$102(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->powerConnected:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->doCloseSessions(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()Ljava/util/Map;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->SEND_AT_CRASHTIME_HEADER:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->handleUncaughtException(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;)Lcom/crashlytics/android/core/LogFileManager;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->logFileManager:Lcom/crashlytics/android/core/LogFileManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->doWriteNonFatal(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;)Ljava/io/File;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$800(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->doOpenSession()V

    return-void
.end method

.method static synthetic access$900(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;)Lcom/crashlytics/android/core/CrashlyticsCore;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    return-object v0
.end method

.method private closeWithoutRenamingOrLog(Lcom/crashlytics/android/core/ClsFileOutputStream;)V
    .locals 4

    .prologue
    .line 673
    if-eqz p1, :cond_0

    .line 675
    :try_start_0
    invoke-virtual {p1}, Lcom/crashlytics/android/core/ClsFileOutputStream;->closeInProgressStream()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 676
    :catch_0
    move-exception v0

    .line 677
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Error closing session file stream in the presence of an exception"

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private deleteLegacyInvalidCacheDir()V
    .locals 5

    .prologue
    .line 832
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getSdkDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "invalidClsFiles"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 834
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 837
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 839
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 838
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 843
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 845
    :cond_1
    return-void
.end method

.method private deleteSessionPartFilesFor(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 687
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listSessionPartFilesFor(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 688
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 687
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 690
    :cond_0
    return-void
.end method

.method private doCloseSessions(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 620
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 622
    :goto_0
    add-int/lit8 v1, v0, 0x8

    .line 623
    invoke-direct {p0, v1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->trimOpenSessions(I)V

    .line 625
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listSessionBeginFiles()[Ljava/io/File;

    move-result-object v1

    .line 626
    sget-object v2, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->LARGEST_FILE_NAME_FIRST:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 628
    array-length v2, v1

    if-le v2, v0, :cond_3

    .line 629
    aget-object v2, v1, v0

    invoke-direct {p0, v2}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getSessionIdFromSessionFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 634
    invoke-direct {p0, v2}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeSessionUser(Ljava/lang/String;)V

    .line 636
    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/CrashlyticsCore;->getSessionSettingsData()Lc/a/a/a/a/g/p;

    move-result-object v2

    .line 638
    if-eqz v2, :cond_1

    .line 639
    iget v2, v2, Lc/a/a/a/a/g/p;->c:I

    .line 641
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v3

    const-string/jumbo v4, "CrashlyticsCore"

    const-string/jumbo v5, "Closing open sessions."

    invoke-interface {v3, v4, v5}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 644
    aget-object v3, v1, v0

    .line 645
    invoke-direct {p0, v3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getSessionIdFromSessionFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 648
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v5

    const-string/jumbo v6, "CrashlyticsCore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Closing session: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-direct {p0, v3, v4, v2}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeSessionPartsToSessionFile(Ljava/io/File;Ljava/lang/String;I)V

    .line 643
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 620
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 654
    :cond_1
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Unable to close session. Settings are not loaded."

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    :cond_2
    :goto_2
    return-void

    .line 658
    :cond_3
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "No open sessions to be closed."

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private doOpenSession()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 599
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 600
    new-instance v1, Lcom/crashlytics/android/core/CLSUUID;

    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->idManager:Lc/a/a/a/a/b/z;

    invoke-direct {v1, v2}, Lcom/crashlytics/android/core/CLSUUID;-><init>(Lc/a/a/a/a/b/z;)V

    invoke-virtual {v1}, Lcom/crashlytics/android/core/CLSUUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 602
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v2

    const-string/jumbo v3, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Opening an new session with ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeBeginSession(Ljava/lang/String;Ljava/util/Date;)V

    .line 606
    invoke-direct {p0, v1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeSessionApp(Ljava/lang/String;)V

    .line 607
    invoke-direct {p0, v1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeSessionOS(Ljava/lang/String;)V

    .line 608
    invoke-direct {p0, v1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeSessionDevice(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->logFileManager:Lcom/crashlytics/android/core/LogFileManager;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/LogFileManager;->setCurrentSession(Ljava/lang/String;)V

    .line 610
    return-void
.end method

.method private doWriteNonFatal(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 1053
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v8

    .line 1055
    if-eqz v8, :cond_0

    .line 1058
    invoke-static {v8}, Lcom/crashlytics/android/core/CrashlyticsCore;->recordLoggedExceptionEvent(Ljava/lang/String;)V

    .line 1063
    :try_start_0
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v2, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Crashlytics is logging non-fatal exception \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" from thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->eventCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Lc/a/a/a/a/b/m;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 1069
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "SessionEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1071
    new-instance v7, Lcom/crashlytics/android/core/ClsFileOutputStream;

    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    invoke-direct {v7, v2, v0}, Lcom/crashlytics/android/core/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    :try_start_1
    invoke-static {v7}, Lcom/crashlytics/android/core/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;

    move-result-object v1

    .line 1074
    const-string/jumbo v5, "error"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeSessionEvent(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1080
    const-string/jumbo v0, "Failed to flush to non-fatal file."

    invoke-static {v1, v0}, Lc/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1081
    const-string/jumbo v0, "Failed to close non-fatal file output stream."

    invoke-static {v7, v0}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1087
    :goto_0
    const/16 v0, 0x40

    :try_start_2
    invoke-direct {p0, v8, v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->trimSessionEventFiles(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1096
    :goto_1
    return-void

    .line 1075
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 1076
    :goto_2
    :try_start_3
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v3

    const-string/jumbo v4, "CrashlyticsCore"

    const-string/jumbo v5, "An error occurred in the non-fatal exception logger"

    invoke-interface {v3, v4, v5, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1078
    invoke-static {v0, v2}, Lcom/crashlytics/android/core/ExceptionUtils;->writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1080
    const-string/jumbo v0, "Failed to flush to non-fatal file."

    invoke-static {v1, v0}, Lc/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1081
    const-string/jumbo v0, "Failed to close non-fatal file output stream."

    invoke-static {v2, v0}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    .line 1080
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    const-string/jumbo v3, "Failed to flush to non-fatal file."

    invoke-static {v1, v3}, Lc/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1081
    const-string/jumbo v1, "Failed to close non-fatal file output stream."

    invoke-static {v2, v1}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 1088
    :catch_1
    move-exception v0

    .line 1089
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "An error occurred when trimming non-fatal files."

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1093
    :cond_0
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Tried to write a non-fatal exception while no session was open."

    invoke-interface {v0, v2, v3, v1}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1080
    :catchall_1
    move-exception v0

    move-object v2, v7

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 1075
    :catch_2
    move-exception v0

    move-object v2, v7

    goto :goto_2
.end method

.method private ensureFileArrayNotNull([Ljava/io/File;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 719
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/io/File;

    :cond_0
    return-object p1
.end method

.method private getCurrentSessionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listSessionBeginFiles()[Ljava/io/File;

    move-result-object v0

    .line 523
    sget-object v1, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->LARGEST_FILE_NAME_FIRST:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 524
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getSessionIdFromSessionFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPreviousSessionId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 533
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listSessionBeginFiles()[Ljava/io/File;

    move-result-object v0

    .line 534
    sget-object v1, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->LARGEST_FILE_NAME_FIRST:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 535
    array-length v1, v0

    if-le v1, v2, :cond_0

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getSessionIdFromSessionFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSessionIdFromSessionFile(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 549
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserMetaData(Ljava/lang/String;)Lcom/crashlytics/android/core/UserMetaData;
    .locals 4

    .prologue
    .line 981
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->isHandlingException()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/crashlytics/android/core/UserMetaData;

    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v1}, Lcom/crashlytics/android/core/CrashlyticsCore;->getUserIdentifier()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/CrashlyticsCore;->getUserName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v3}, Lcom/crashlytics/android/core/CrashlyticsCore;->getUserEmail()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/crashlytics/android/core/UserMetaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/crashlytics/android/core/MetaDataStore;

    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/MetaDataStore;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/MetaDataStore;->readUserData(Ljava/lang/String;)Lcom/crashlytics/android/core/UserMetaData;

    move-result-object v0

    goto :goto_0
.end method

.method private handleUncaughtException(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 298
    invoke-direct {p0, p1, p2, p3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeFatal(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 300
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->doCloseSessions()V

    .line 301
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->doOpenSession()V

    .line 303
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->trimSessionFiles()V

    .line 305
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->shouldPromptUserBeforeSendingCrashReports()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->sendSessionReports()V

    .line 308
    :cond_0
    return-void
.end method

.method private listCompleteSessionFiles()[Ljava/io/File;
    .locals 1

    .prologue
    .line 700
    sget-object v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->SESSION_FILE_FILTER:Ljava/io/FilenameFilter;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->ensureFileArrayNotNull([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private listSessionPartFilesFor(Ljava/lang/String;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 696
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SessionPartFileFilter;

    invoke-direct {v0, p1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SessionPartFileFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private notifyCrashlyticsListenerOfPreviousCrash(Lcom/crashlytics/android/core/CrashlyticsListener;)V
    .locals 4

    .prologue
    .line 319
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Checking for previous crash marker."

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v1}, Lcom/crashlytics/android/core/CrashlyticsCore;->getSdkDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "crash_marker"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 326
    if-eqz p1, :cond_0

    .line 328
    :try_start_0
    invoke-interface {p1}, Lcom/crashlytics/android/core/CrashlyticsListener;->crashlyticsDidDetectCrashDuringPreviousExecution()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Exception thrown by CrashlyticsListener while notifying of previous crash."

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendSessionReports()V
    .locals 6

    .prologue
    .line 1266
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listCompleteSessionFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1270
    iget-object v4, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

    new-instance v5, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$16;

    invoke-direct {v5, p0, v3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$16;-><init>(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;Ljava/io/File;)V

    invoke-virtual {v4, v5}, Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;->executeAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1291
    :cond_0
    return-void
.end method

.method private trimOpenSessions(I)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 752
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 754
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listSessionBeginFiles()[Ljava/io/File;

    move-result-object v3

    .line 755
    sget-object v1, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->LARGEST_FILE_NAME_FIRST:Ljava/util/Comparator;

    invoke-static {v3, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 756
    array-length v1, v3

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v1, v0

    .line 758
    :goto_0
    if-ge v1, v4, :cond_0

    .line 759
    aget-object v5, v3, v1

    invoke-direct {p0, v5}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getSessionIdFromSessionFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 760
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 758
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 763
    :cond_0
    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->logFileManager:Lcom/crashlytics/android/core/LogFileManager;

    invoke-virtual {v1, v2}, Lcom/crashlytics/android/core/LogFileManager;->discardOldLogFiles(Ljava/util/Set;)V

    .line 765
    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$AnySessionPartFileFilter;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$AnySessionPartFileFilter;-><init>(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$1;)V

    invoke-direct {p0, v1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 767
    array-length v3, v1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    .line 768
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 769
    sget-object v6, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->SESSION_FILE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 771
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    .line 772
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 774
    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 775
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v6

    const-string/jumbo v7, "CrashlyticsCore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Trimming open session file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 767
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 780
    :cond_2
    return-void
.end method

.method private trimSessionEventFiles(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 732
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "SessionEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->SMALLEST_FILE_NAME_FIRST:Ljava/util/Comparator;

    invoke-static {v0, v1, p2, v2}, Lcom/crashlytics/android/core/Utils;->capFileCount(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    .line 734
    return-void
.end method

.method private writeBeginSession(Ljava/lang/String;Ljava/util/Date;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 848
    .line 851
    :try_start_0
    new-instance v6, Lcom/crashlytics/android/core/ClsFileOutputStream;

    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "BeginSession"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v0, v2}, Lcom/crashlytics/android/core/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 852
    :try_start_1
    invoke-static {v6}, Lcom/crashlytics/android/core/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;

    move-result-object v1

    .line 854
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "Crashlytics Android SDK/%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v5}, Lcom/crashlytics/android/core/CrashlyticsCore;->getVersion()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 856
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    .line 858
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->sessionDataWriter:Lcom/crashlytics/android/core/SessionDataWriter;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/crashlytics/android/core/SessionDataWriter;->writeBeginSession(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 863
    const-string/jumbo v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lc/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 864
    const-string/jumbo v0, "Failed to close begin session file."

    invoke-static {v6, v0}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 866
    return-void

    .line 859
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 860
    :goto_0
    :try_start_2
    invoke-static {v0, v2}, Lcom/crashlytics/android/core/ExceptionUtils;->writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 861
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 863
    :catchall_0
    move-exception v0

    move-object v6, v2

    :goto_1
    const-string/jumbo v2, "Failed to flush to session begin file."

    invoke-static {v1, v2}, Lc/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 864
    const-string/jumbo v1, "Failed to close begin session file."

    invoke-static {v6, v1}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 863
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_1

    .line 859
    :catch_1
    move-exception v0

    move-object v2, v6

    goto :goto_0
.end method

.method private writeExternalCrashEvent(Lcom/crashlytics/android/core/internal/models/SessionEventData;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 421
    .line 424
    :try_start_0
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getPreviousSessionId()Ljava/lang/String;

    move-result-object v2

    .line 426
    if-eqz v2, :cond_0

    .line 429
    invoke-static {v2}, Lcom/crashlytics/android/core/CrashlyticsCore;->recordFatalExceptionEvent(Ljava/lang/String;)V

    .line 431
    new-instance v1, Lcom/crashlytics/android/core/ClsFileOutputStream;

    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "SessionCrash"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/crashlytics/android/core/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    :try_start_1
    invoke-static {v1}, Lcom/crashlytics/android/core/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 434
    :try_start_2
    new-instance v3, Lcom/crashlytics/android/core/MetaDataStore;

    iget-object v4, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    invoke-direct {v3, v4}, Lcom/crashlytics/android/core/MetaDataStore;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, v2}, Lcom/crashlytics/android/core/MetaDataStore;->readKeyData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 436
    new-instance v4, Lcom/crashlytics/android/core/LogFileManager;

    iget-object v5, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v5}, Lcom/crashlytics/android/core/CrashlyticsCore;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    invoke-direct {v4, v5, v6, v2}, Lcom/crashlytics/android/core/LogFileManager;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 439
    invoke-static {p1, v4, v3, v0}, Lcom/crashlytics/android/core/NativeCrashWriter;->writeNativeCrash(Lcom/crashlytics/android/core/internal/models/SessionEventData;Lcom/crashlytics/android/core/LogFileManager;Ljava/util/Map;Lcom/crashlytics/android/core/CodedOutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 450
    :goto_0
    const-string/jumbo v2, "Failed to flush to session begin file."

    invoke-static {v0, v2}, Lc/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 451
    const-string/jumbo v0, "Failed to close fatal exception file output stream."

    invoke-static {v1, v0}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 453
    :goto_1
    return-void

    .line 442
    :cond_0
    :try_start_3
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Tried to write a native crash while no session was open."

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v0

    goto :goto_0

    .line 445
    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 446
    :goto_2
    :try_start_4
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v3

    const-string/jumbo v4, "CrashlyticsCore"

    const-string/jumbo v5, "An error occurred in the native crash logger"

    invoke-interface {v3, v4, v5, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 448
    invoke-static {v0, v2}, Lcom/crashlytics/android/core/ExceptionUtils;->writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 450
    const-string/jumbo v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lc/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 451
    const-string/jumbo v0, "Failed to close fatal exception file output stream."

    invoke-static {v2, v0}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_1

    .line 450
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_3
    const-string/jumbo v3, "Failed to flush to session begin file."

    invoke-static {v1, v3}, Lc/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 451
    const-string/jumbo v1, "Failed to close fatal exception file output stream."

    invoke-static {v2, v1}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 450
    :catchall_1
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    .line 445
    :catch_1
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method

.method private writeFatal(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 379
    .line 384
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    const-string/jumbo v3, "crash_marker"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 386
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v0

    .line 388
    if-eqz v0, :cond_0

    .line 391
    invoke-static {v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->recordFatalExceptionEvent(Ljava/lang/String;)V

    .line 393
    new-instance v7, Lcom/crashlytics/android/core/ClsFileOutputStream;

    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "SessionCrash"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v2, v0}, Lcom/crashlytics/android/core/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    :try_start_1
    invoke-static {v7}, Lcom/crashlytics/android/core/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;

    move-result-object v1

    .line 395
    const-string/jumbo v5, "crash"

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeSessionEvent(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v7

    .line 405
    :goto_0
    const-string/jumbo v2, "Failed to flush to session begin file."

    invoke-static {v1, v2}, Lc/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 406
    const-string/jumbo v1, "Failed to close fatal exception file output stream."

    invoke-static {v0, v1}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 408
    :goto_1
    return-void

    .line 397
    :cond_0
    :try_start_2
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Tried to write a fatal exception while no session was open."

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    move-object v7, v1

    .line 401
    :goto_2
    :try_start_3
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v2

    const-string/jumbo v3, "CrashlyticsCore"

    const-string/jumbo v4, "An error occurred in the fatal exception logger"

    invoke-interface {v2, v3, v4, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 403
    invoke-static {v0, v7}, Lcom/crashlytics/android/core/ExceptionUtils;->writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 405
    const-string/jumbo v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lc/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 406
    const-string/jumbo v0, "Failed to close fatal exception file output stream."

    invoke-static {v7, v0}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_1

    .line 405
    :catchall_0
    move-exception v0

    move-object v7, v1

    :goto_3
    const-string/jumbo v2, "Failed to flush to session begin file."

    invoke-static {v1, v2}, Lc/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 406
    const-string/jumbo v1, "Failed to close fatal exception file output stream."

    invoke-static {v7, v1}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 405
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 400
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private writeInitialPartsTo(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1206
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "SessionUser"

    aput-object v0, v2, v1

    const/4 v0, 0x1

    const-string/jumbo v3, "SessionApp"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v3, "SessionOS"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v3, "SessionDevice"

    aput-object v3, v2, v0

    .line 1210
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 1211
    new-instance v5, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 1214
    array-length v6, v5

    if-nez v6, :cond_0

    .line 1215
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v5

    const-string/jumbo v6, "CrashlyticsCore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Can\'t find "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, " data for session ID "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v5, v6, v4, v7}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1210
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1218
    :cond_0
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v6

    const-string/jumbo v7, "CrashlyticsCore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Collecting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " data for session ID "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    aget-object v4, v5, v1

    invoke-direct {p0, p1, v4}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeToCosFromFile(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/io/File;)V

    goto :goto_1

    .line 1223
    :cond_1
    return-void
.end method

.method private writeNonFatalEventsTo(Lcom/crashlytics/android/core/CodedOutputStream;[Ljava/io/File;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 1190
    sget-object v1, Lc/a/a/a/a/b/m;->a:Ljava/util/Comparator;

    invoke-static {p2, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1192
    array-length v2, p2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p2, v1

    .line 1194
    :try_start_0
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v3

    const-string/jumbo v4, "CrashlyticsCore"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "Found Non Fatal for session ID %s in %s "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p3, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    invoke-direct {p0, p1, v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeToCosFromFile(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1198
    :catch_0
    move-exception v0

    .line 1199
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v3

    const-string/jumbo v4, "CrashlyticsCore"

    const-string/jumbo v5, "Error writting non-fatal to session."

    invoke-interface {v3, v4, v5, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1203
    :cond_0
    return-void
.end method

.method private writeSessionApp(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 869
    .line 872
    :try_start_0
    new-instance v7, Lcom/crashlytics/android/core/ClsFileOutputStream;

    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "SessionApp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v0, v2}, Lcom/crashlytics/android/core/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 873
    :try_start_1
    invoke-static {v7}, Lcom/crashlytics/android/core/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;

    move-result-object v1

    .line 875
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 876
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getVersionCode()Ljava/lang/String;

    move-result-object v3

    .line 877
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getVersionName()Ljava/lang/String;

    move-result-object v4

    .line 878
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->idManager:Lc/a/a/a/a/b/z;

    invoke-virtual {v0}, Lc/a/a/a/a/b/z;->b()Ljava/lang/String;

    move-result-object v5

    .line 879
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/a/a/b/t;->a(Ljava/lang/String;)Lc/a/a/a/a/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/a/a/b/t;->a()I

    move-result v6

    .line 882
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->sessionDataWriter:Lcom/crashlytics/android/core/SessionDataWriter;

    invoke-virtual/range {v0 .. v6}, Lcom/crashlytics/android/core/SessionDataWriter;->writeSessionApp(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 889
    const-string/jumbo v0, "Failed to flush to session app file."

    invoke-static {v1, v0}, Lc/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 890
    const-string/jumbo v0, "Failed to close session app file."

    invoke-static {v7, v0}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 892
    return-void

    .line 885
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 886
    :goto_0
    :try_start_2
    invoke-static {v0, v2}, Lcom/crashlytics/android/core/ExceptionUtils;->writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 887
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 889
    :catchall_0
    move-exception v0

    move-object v7, v2

    :goto_1
    const-string/jumbo v2, "Failed to flush to session app file."

    invoke-static {v1, v2}, Lc/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 890
    const-string/jumbo v1, "Failed to close session app file."

    invoke-static {v7, v1}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 889
    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_1

    .line 885
    :catch_1
    move-exception v0

    move-object v2, v7

    goto :goto_0
.end method

.method private writeSessionDevice(Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 917
    const/4 v4, 0x0

    .line 918
    const/4 v3, 0x0

    .line 920
    :try_start_0
    new-instance v17, Lcom/crashlytics/android/core/ClsFileOutputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "SessionDevice"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v5}, Lcom/crashlytics/android/core/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 921
    :try_start_1
    invoke-static/range {v17 .. v17}, Lcom/crashlytics/android/core/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;

    move-result-object v3

    .line 923
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/CrashlyticsCore;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 924
    new-instance v6, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 926
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->idManager:Lc/a/a/a/a/b/z;

    invoke-virtual {v4}, Lc/a/a/a/a/b/z;->f()Ljava/lang/String;

    move-result-object v4

    .line 927
    invoke-static {}, Lc/a/a/a/a/b/m;->a()I

    move-result v5

    .line 928
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v7

    .line 929
    invoke-static {}, Lc/a/a/a/a/b/m;->b()J

    move-result-wide v8

    .line 930
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v12, v6

    mul-long/2addr v10, v12

    .line 931
    invoke-static {v2}, Lc/a/a/a/a/b/m;->f(Landroid/content/Context;)Z

    move-result v12

    .line 933
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->idManager:Lc/a/a/a/a/b/z;

    invoke-virtual {v6}, Lc/a/a/a/a/b/z;->g()Ljava/util/Map;

    move-result-object v13

    .line 935
    invoke-static {v2}, Lc/a/a/a/a/b/m;->h(Landroid/content/Context;)I

    move-result v14

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->sessionDataWriter:Lcom/crashlytics/android/core/SessionDataWriter;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v15, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v16, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual/range {v2 .. v16}, Lcom/crashlytics/android/core/SessionDataWriter;->writeSessionDevice(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;ILjava/lang/String;IJJZLjava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 945
    const-string/jumbo v2, "Failed to flush session device info."

    invoke-static {v3, v2}, Lc/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 946
    const-string/jumbo v2, "Failed to close session device file."

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 948
    return-void

    .line 941
    :catch_0
    move-exception v2

    .line 942
    :goto_0
    :try_start_2
    invoke-static {v2, v4}, Lcom/crashlytics/android/core/ExceptionUtils;->writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 943
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 945
    :catchall_0
    move-exception v2

    move-object/from16 v17, v4

    :goto_1
    const-string/jumbo v4, "Failed to flush session device info."

    invoke-static {v3, v4}, Lc/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 946
    const-string/jumbo v3, "Failed to close session device file."

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2

    .line 945
    :catchall_1
    move-exception v2

    move-object/from16 v17, v4

    goto :goto_1

    :catchall_2
    move-exception v2

    goto :goto_1

    .line 941
    :catch_1
    move-exception v2

    move-object/from16 v4, v17

    goto :goto_0
.end method

.method private writeSessionEvent(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/CrashlyticsCore;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 993
    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    .line 994
    invoke-static {v7}, Lc/a/a/a/a/b/m;->c(Landroid/content/Context;)F

    move-result v10

    .line 995
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->powerConnected:Z

    invoke-static {v7, v2}, Lc/a/a/a/a/b/m;->a(Landroid/content/Context;Z)I

    move-result v11

    .line 996
    invoke-static {v7}, Lc/a/a/a/a/b/m;->d(Landroid/content/Context;)Z

    move-result v12

    .line 997
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v13, v2, Landroid/content/res/Configuration;->orientation:I

    .line 998
    invoke-static {}, Lc/a/a/a/a/b/m;->b()J

    move-result-wide v2

    invoke-static {v7}, Lc/a/a/a/a/b/m;->b(Landroid/content/Context;)J

    move-result-wide v8

    sub-long v14, v2, v8

    .line 1000
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc/a/a/a/a/b/m;->b(Ljava/lang/String;)J

    move-result-wide v16

    .line 1003
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lc/a/a/a/a/b/m;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v18

    .line 1005
    new-instance v19, Ljava/util/LinkedList;

    invoke-direct/range {v19 .. v19}, Ljava/util/LinkedList;-><init>()V

    .line 1006
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v20

    .line 1009
    if-eqz p6, :cond_0

    .line 1010
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v3

    .line 1011
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    new-array v9, v2, [Ljava/lang/Thread;

    .line 1012
    const/4 v2, 0x0

    .line 1013
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v6, v2

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1014
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    aput-object v3, v9, v6

    .line 1015
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    .line 1017
    goto :goto_0

    .line 1021
    :cond_0
    const/4 v2, 0x0

    new-array v9, v2, [Ljava/lang/Thread;

    .line 1025
    :cond_1
    const-string/jumbo v2, "com.crashlytics.CollectCustomKeys"

    const/4 v3, 0x1

    invoke-static {v7, v2, v3}, Lc/a/a/a/a/b/m;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1027
    new-instance v22, Ljava/util/TreeMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeMap;-><init>()V

    .line 1038
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->sessionDataWriter:Lcom/crashlytics/android/core/SessionDataWriter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->logFileManager:Lcom/crashlytics/android/core/LogFileManager;

    move-object/from16 v21, v0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v2 .. v22}, Lcom/crashlytics/android/core/SessionDataWriter;->writeSessionEvent(Lcom/crashlytics/android/core/CodedOutputStream;JLjava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Thread;FIZIJJLandroid/app/ActivityManager$RunningAppProcessInfo;Ljava/util/List;[Ljava/lang/StackTraceElement;Lcom/crashlytics/android/core/LogFileManager;Ljava/util/Map;)V

    .line 1042
    return-void

    .line 1029
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/CrashlyticsCore;->getAttributes()Ljava/util/Map;

    move-result-object v2

    .line 1030
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    const/4 v6, 0x1

    if-le v3, v6, :cond_3

    .line 1034
    new-instance v22, Ljava/util/TreeMap;

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    move-object/from16 v22, v2

    goto :goto_1
.end method

.method private writeSessionOS(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 895
    .line 899
    :try_start_0
    new-instance v2, Lcom/crashlytics/android/core/ClsFileOutputStream;

    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "SessionOS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/crashlytics/android/core/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 901
    :try_start_1
    invoke-static {v2}, Lcom/crashlytics/android/core/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;

    move-result-object v1

    .line 903
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/a/a/b/m;->g(Landroid/content/Context;)Z

    move-result v0

    .line 905
    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->sessionDataWriter:Lcom/crashlytics/android/core/SessionDataWriter;

    invoke-virtual {v3, v1, v0}, Lcom/crashlytics/android/core/SessionDataWriter;->writeSessionOS(Lcom/crashlytics/android/core/CodedOutputStream;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 910
    const-string/jumbo v0, "Failed to flush to session OS file."

    invoke-static {v1, v0}, Lc/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 911
    const-string/jumbo v0, "Failed to close session OS file."

    invoke-static {v2, v0}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 913
    return-void

    .line 906
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 907
    :goto_0
    :try_start_2
    invoke-static {v0, v2}, Lcom/crashlytics/android/core/ExceptionUtils;->writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 908
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 910
    :catchall_0
    move-exception v0

    :goto_1
    const-string/jumbo v3, "Failed to flush to session OS file."

    invoke-static {v1, v3}, Lc/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 911
    const-string/jumbo v1, "Failed to close session OS file."

    invoke-static {v2, v1}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 910
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_1

    .line 906
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private writeSessionPartsToSessionFile(Ljava/io/File;Ljava/lang/String;I)V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1105
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v3, "CrashlyticsCore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Collecting session parts for ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "SessionCrash"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v6

    .line 1109
    if-eqz v6, :cond_3

    array-length v0, v6

    if-lez v0, :cond_3

    move v0, v1

    .line 1110
    :goto_0
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v3

    const-string/jumbo v5, "CrashlyticsCore"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v8, "Session %s has fatal exception: %s"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object p2, v9, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v7}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    new-instance v3, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "SessionEvent"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 1115
    if-eqz v5, :cond_4

    array-length v3, v5

    if-lez v3, :cond_4

    move v3, v1

    .line 1116
    :goto_1
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v7

    const-string/jumbo v8, "CrashlyticsCore"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v10, "Session %s has non-fatal exceptions: %s"

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p2, v11, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v11, v1

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v8, v1}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    if-nez v0, :cond_0

    if-eqz v3, :cond_5

    .line 1125
    :cond_0
    :try_start_0
    new-instance v2, Lcom/crashlytics/android/core/ClsFileOutputStream;

    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    invoke-direct {v2, v1, p2}, Lcom/crashlytics/android/core/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1126
    :try_start_1
    invoke-static {v2}, Lcom/crashlytics/android/core/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 1128
    :try_start_2
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v4

    const-string/jumbo v7, "CrashlyticsCore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Collecting SessionStart data for session ID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    invoke-direct {p0, v1, p1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeToCosFromFile(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/io/File;)V

    .line 1132
    const/4 v4, 0x4

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v1, v4, v8, v9}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    .line 1133
    const/4 v4, 0x5

    invoke-virtual {v1, v4, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBool(IZ)V

    .line 1135
    invoke-direct {p0, v1, p2}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeInitialPartsTo(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;)V

    .line 1137
    if-eqz v3, :cond_1

    .line 1138
    array-length v3, v5

    if-le v3, p3, :cond_6

    .line 1139
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v3

    const-string/jumbo v4, "CrashlyticsCore"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "Trimming down to %d logged exceptions."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    invoke-direct {p0, p2, p3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->trimSessionEventFiles(Ljava/lang/String;I)V

    .line 1143
    new-instance v3, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "SessionEvent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 1147
    :goto_2
    invoke-direct {p0, v1, v3, p2}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeNonFatalEventsTo(Lcom/crashlytics/android/core/CodedOutputStream;[Ljava/io/File;Ljava/lang/String;)V

    .line 1150
    :cond_1
    if-eqz v0, :cond_2

    .line 1151
    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeToCosFromFile(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/io/File;)V

    .line 1154
    :cond_2
    const/16 v0, 0xb

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt32(II)V

    .line 1156
    const/16 v0, 0xc

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeEnum(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1166
    const-string/jumbo v0, "Error flushing session file stream"

    invoke-static {v1, v0}, Lc/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1175
    const-string/jumbo v0, "Failed to close CLS file"

    invoke-static {v2, v0}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1183
    :goto_3
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Removing session part files for ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    invoke-direct {p0, p2}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->deleteSessionPartFilesFor(Ljava/lang/String;)V

    .line 1186
    return-void

    :cond_3
    move v0, v2

    .line 1109
    goto/16 :goto_0

    :cond_4
    move v3, v2

    .line 1115
    goto/16 :goto_1

    .line 1157
    :catch_0
    move-exception v0

    move-object v1, v4

    .line 1158
    :goto_4
    :try_start_3
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v2

    const-string/jumbo v3, "CrashlyticsCore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to write session file for session ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1160
    invoke-static {v0, v4}, Lcom/crashlytics/android/core/ExceptionUtils;->writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1166
    const-string/jumbo v0, "Error flushing session file stream"

    invoke-static {v1, v0}, Lc/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1171
    invoke-direct {p0, v4}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->closeWithoutRenamingOrLog(Lcom/crashlytics/android/core/ClsFileOutputStream;)V

    goto :goto_3

    .line 1166
    :catchall_0
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    :goto_5
    const-string/jumbo v3, "Error flushing session file stream"

    invoke-static {v1, v3}, Lc/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1175
    const-string/jumbo v1, "Failed to close CLS file"

    invoke-static {v2, v1}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 1179
    :cond_5
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No events present for session ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1166
    :catchall_1
    move-exception v0

    move-object v1, v4

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v2, v4

    goto :goto_5

    .line 1157
    :catch_1
    move-exception v0

    move-object v1, v4

    move-object v4, v2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v4, v2

    goto :goto_4

    :cond_6
    move-object v3, v5

    goto/16 :goto_2
.end method

.method private writeSessionUser(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 951
    .line 954
    :try_start_0
    new-instance v2, Lcom/crashlytics/android/core/ClsFileOutputStream;

    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "SessionUser"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/crashlytics/android/core/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 955
    :try_start_1
    invoke-static {v2}, Lcom/crashlytics/android/core/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;

    move-result-object v1

    .line 957
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getUserMetaData(Ljava/lang/String;)Lcom/crashlytics/android/core/UserMetaData;

    move-result-object v0

    .line 960
    invoke-virtual {v0}, Lcom/crashlytics/android/core/UserMetaData;->isEmpty()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 970
    const-string/jumbo v0, "Failed to flush session user file."

    invoke-static {v1, v0}, Lc/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 971
    const-string/jumbo v0, "Failed to close session user file."

    invoke-static {v2, v0}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 973
    :goto_0
    return-void

    .line 964
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->sessionDataWriter:Lcom/crashlytics/android/core/SessionDataWriter;

    iget-object v4, v0, Lcom/crashlytics/android/core/UserMetaData;->id:Ljava/lang/String;

    iget-object v5, v0, Lcom/crashlytics/android/core/UserMetaData;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/crashlytics/android/core/UserMetaData;->email:Ljava/lang/String;

    invoke-virtual {v3, v1, v4, v5, v0}, Lcom/crashlytics/android/core/SessionDataWriter;->writeSessionUser(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 970
    const-string/jumbo v0, "Failed to flush session user file."

    invoke-static {v1, v0}, Lc/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 971
    const-string/jumbo v0, "Failed to close session user file."

    invoke-static {v2, v0}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    .line 966
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 967
    :goto_1
    :try_start_3
    invoke-static {v0, v2}, Lcom/crashlytics/android/core/ExceptionUtils;->writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 968
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 970
    :catchall_0
    move-exception v0

    :goto_2
    const-string/jumbo v3, "Failed to flush session user file."

    invoke-static {v1, v3}, Lc/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 971
    const-string/jumbo v1, "Failed to close session user file."

    invoke-static {v2, v1}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 970
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 966
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private writeToCosFromFile(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1229
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1231
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 1232
    long-to-int v0, v0

    new-array v3, v0, [B

    .line 1237
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1239
    const/4 v0, 0x0

    .line 1242
    :goto_0
    :try_start_1
    array-length v2, v3

    if-ge v0, v2, :cond_0

    array-length v2, v3

    sub-int/2addr v2, v0

    invoke-virtual {v1, v3, v0, v2}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-ltz v2, :cond_0

    .line 1244
    add-int/2addr v0, v2

    goto :goto_0

    .line 1247
    :cond_0
    const-string/jumbo v0, "Failed to close file input stream."

    invoke-static {v1, v0}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1250
    invoke-virtual {p1, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawBytes([B)V

    .line 1255
    :goto_1
    return-void

    .line 1247
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    const-string/jumbo v2, "Failed to close file input stream."

    invoke-static {v1, v2}, Lc/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 1252
    :cond_1
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tried to include a file that doesn\'t exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3, v2}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1247
    :catchall_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method cacheKeyData(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 484
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$11;

    invoke-direct {v1, p0, p1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$11;-><init>(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;->executeAsync(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 493
    return-void
.end method

.method cacheUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$10;-><init>(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;->executeAsync(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 473
    return-void
.end method

.method cleanInvalidTempFiles()V
    .locals 2

    .prologue
    .line 786
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$14;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$14;-><init>(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;->executeAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 793
    return-void
.end method

.method doCleanInvalidTempFiles([Ljava/io/File;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 801
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->deleteLegacyInvalidCacheDir()V

    .line 806
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 807
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v4

    const-string/jumbo v5, "CrashlyticsCore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Found invalid session part file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->getSessionIdFromSessionFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 810
    new-instance v4, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$15;

    invoke-direct {v4, p0, v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$15;-><init>(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;Ljava/lang/String;)V

    .line 817
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v5

    const-string/jumbo v6, "CrashlyticsCore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Deleting all part files for invalid session: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    invoke-direct {p0, v4}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    .line 820
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v7

    const-string/jumbo v8, "CrashlyticsCore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Deleting session file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 819
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 806
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 824
    :cond_1
    return-void
.end method

.method doCloseSessions()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 613
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->doCloseSessions(Z)V

    .line 614
    return-void
.end method

.method finalizeSessions()Z
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$13;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$13;-><init>(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;->executeSyncLoggingException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method hasOpenSession()Z
    .locals 1

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listSessionBeginFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHandlingException()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method listSessionBeginFiles()[Ljava/io/File;
    .locals 2

    .prologue
    .line 704
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;

    const-string/jumbo v1, "BeginSession"

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method openSession()V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$12;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$12;-><init>(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;->executeAsync(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 510
    return-void
.end method

.method trimSessionFiles()V
    .locals 4

    .prologue
    .line 747
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    sget-object v1, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->SESSION_FILE_FILTER:Ljava/io/FilenameFilter;

    const/4 v2, 0x4

    sget-object v3, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->SMALLEST_FILE_NAME_FIRST:Ljava/util/Comparator;

    invoke-static {v0, v1, v2, v3}, Lcom/crashlytics/android/core/Utils;->capFileCount(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    .line 749
    return-void
.end method

.method public declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :try_start_1
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Crashlytics is handling uncaught exception \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" from thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->receiversRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Unregistering power receivers."

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->crashlyticsCore:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->powerConnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 269
    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->powerDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 274
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 275
    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

    new-instance v2, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$7;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$7;-><init>(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;->executeSyncLoggingException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 286
    :try_start_2
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 290
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 292
    :goto_0
    monitor-exit p0

    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    :try_start_3
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "An error occurred in the uncaught exception handler"

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 286
    :try_start_4
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 290
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 286
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-interface {v1, v2, v3}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 290
    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method writeNonFatalException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 363
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 365
    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

    new-instance v2, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$9;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$9;-><init>(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;->executeAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 373
    return-void
.end method

.method writeToLog(JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$8;-><init>(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;->executeAsync(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 355
    return-void
.end method
