.class Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$13;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$13;->this$0:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 575
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$13;->this$0:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;

    invoke-static {v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->access$300(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 576
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Finalizing previously open sessions."

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$13;->this$0:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;

    invoke-static {v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->access$900(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;)Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getExternalCrashEventData()Lcom/crashlytics/android/core/internal/models/SessionEventData;

    move-result-object v0

    .line 580
    if-eqz v0, :cond_0

    .line 581
    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$13;->this$0:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;

    invoke-static {v1, v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->access$1000(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;Lcom/crashlytics/android/core/internal/models/SessionEventData;)V

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$13;->this$0:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;

    invoke-static {v0, v3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->access$1100(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;Z)V

    .line 584
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Closed all previously open sessions"

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 590
    :goto_0
    return-object v0

    .line 588
    :cond_1
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Skipping session finalization because a crash has already occurred."

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$13;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
