.class Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$16;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;

.field final synthetic val$toSend:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$16;->this$0:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;

    iput-object p2, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$16;->val$toSend:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$16;->this$0:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;

    invoke-static {v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->access$900(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;)Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/a/a/b/m;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1274
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Attempting to send crash report at time of crash..."

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    invoke-static {}, Lc/a/a/a/a/g/q;->a()Lc/a/a/a/a/g/q;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/a/a/g/q;->b()Lc/a/a/a/a/g/w;

    move-result-object v0

    .line 1278
    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$16;->this$0:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;

    invoke-static {v1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->access$900(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;)Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getCreateReportSpiCall(Lc/a/a/a/a/g/w;)Lcom/crashlytics/android/core/CreateReportSpiCall;

    move-result-object v0

    .line 1283
    if-eqz v0, :cond_0

    .line 1284
    new-instance v1, Lcom/crashlytics/android/core/ReportUploader;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/core/ReportUploader;-><init>(Lcom/crashlytics/android/core/CreateReportSpiCall;)V

    new-instance v0, Lcom/crashlytics/android/core/SessionReport;

    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$16;->val$toSend:Ljava/io/File;

    invoke-static {}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->access$1400()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/crashlytics/android/core/SessionReport;-><init>(Ljava/io/File;Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/core/ReportUploader;->forceUpload(Lcom/crashlytics/android/core/Report;)Z

    .line 1288
    :cond_0
    return-void
.end method
