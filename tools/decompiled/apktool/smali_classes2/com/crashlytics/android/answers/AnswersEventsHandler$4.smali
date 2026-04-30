.class Lcom/crashlytics/android/answers/AnswersEventsHandler$4;
.super Ljava/lang/Object;
.source "AnswersEventsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/answers/AnswersEventsHandler;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/answers/AnswersEventsHandler;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/crashlytics/android/answers/AnswersEventsHandler$4;->this$0:Lcom/crashlytics/android/answers/AnswersEventsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/AnswersEventsHandler$4;->this$0:Lcom/crashlytics/android/answers/AnswersEventsHandler;

    invoke-static {v0}, Lcom/crashlytics/android/answers/AnswersEventsHandler;->access$000(Lcom/crashlytics/android/answers/AnswersEventsHandler;)Lcom/crashlytics/android/answers/SessionMetadataCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/SessionMetadataCollector;->getMetadata()Lcom/crashlytics/android/answers/SessionEventMetadata;

    move-result-object v6

    .line 131
    iget-object v0, p0, Lcom/crashlytics/android/answers/AnswersEventsHandler$4;->this$0:Lcom/crashlytics/android/answers/AnswersEventsHandler;

    invoke-static {v0}, Lcom/crashlytics/android/answers/AnswersEventsHandler;->access$100(Lcom/crashlytics/android/answers/AnswersEventsHandler;)Lcom/crashlytics/android/answers/AnswersFilesManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/AnswersFilesManagerProvider;->getAnalyticsFilesManager()Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;

    move-result-object v4

    .line 133
    iget-object v0, p0, Lcom/crashlytics/android/answers/AnswersEventsHandler$4;->this$0:Lcom/crashlytics/android/answers/AnswersEventsHandler;

    invoke-virtual {v4, v0}, Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;->registerRollOverListener(Lc/a/a/a/a/d/i;)V

    .line 134
    iget-object v7, p0, Lcom/crashlytics/android/answers/AnswersEventsHandler$4;->this$0:Lcom/crashlytics/android/answers/AnswersEventsHandler;

    new-instance v0, Lcom/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy;

    iget-object v1, p0, Lcom/crashlytics/android/answers/AnswersEventsHandler$4;->this$0:Lcom/crashlytics/android/answers/AnswersEventsHandler;

    invoke-static {v1}, Lcom/crashlytics/android/answers/AnswersEventsHandler;->access$200(Lcom/crashlytics/android/answers/AnswersEventsHandler;)Lc/a/a/a/q;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/answers/AnswersEventsHandler$4;->this$0:Lcom/crashlytics/android/answers/AnswersEventsHandler;

    invoke-static {v2}, Lcom/crashlytics/android/answers/AnswersEventsHandler;->access$300(Lcom/crashlytics/android/answers/AnswersEventsHandler;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/crashlytics/android/answers/AnswersEventsHandler$4;->this$0:Lcom/crashlytics/android/answers/AnswersEventsHandler;

    iget-object v3, v3, Lcom/crashlytics/android/answers/AnswersEventsHandler;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v5, p0, Lcom/crashlytics/android/answers/AnswersEventsHandler$4;->this$0:Lcom/crashlytics/android/answers/AnswersEventsHandler;

    invoke-static {v5}, Lcom/crashlytics/android/answers/AnswersEventsHandler;->access$400(Lcom/crashlytics/android/answers/AnswersEventsHandler;)Lc/a/a/a/a/e/m;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy;-><init>(Lc/a/a/a/q;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;Lc/a/a/a/a/e/m;Lcom/crashlytics/android/answers/SessionEventMetadata;)V

    iput-object v0, v7, Lcom/crashlytics/android/answers/AnswersEventsHandler;->strategy:Lcom/crashlytics/android/answers/SessionAnalyticsManagerStrategy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "Answers"

    const-string/jumbo v3, "Failed to enable events"

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
