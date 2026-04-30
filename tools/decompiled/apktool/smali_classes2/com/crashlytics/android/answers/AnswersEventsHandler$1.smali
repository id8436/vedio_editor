.class Lcom/crashlytics/android/answers/AnswersEventsHandler$1;
.super Ljava/lang/Object;
.source "AnswersEventsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/answers/AnswersEventsHandler;

.field final synthetic val$analyticsSettingsData:Lc/a/a/a/a/g/b;

.field final synthetic val$protocolAndHostOverride:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/answers/AnswersEventsHandler;Lc/a/a/a/a/g/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/crashlytics/android/answers/AnswersEventsHandler$1;->this$0:Lcom/crashlytics/android/answers/AnswersEventsHandler;

    iput-object p2, p0, Lcom/crashlytics/android/answers/AnswersEventsHandler$1;->val$analyticsSettingsData:Lc/a/a/a/a/g/b;

    iput-object p3, p0, Lcom/crashlytics/android/answers/AnswersEventsHandler$1;->val$protocolAndHostOverride:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/AnswersEventsHandler$1;->this$0:Lcom/crashlytics/android/answers/AnswersEventsHandler;

    iget-object v0, v0, Lcom/crashlytics/android/answers/AnswersEventsHandler;->strategy:Lcom/crashlytics/android/answers/SessionAnalyticsManagerStrategy;

    iget-object v1, p0, Lcom/crashlytics/android/answers/AnswersEventsHandler$1;->val$analyticsSettingsData:Lc/a/a/a/a/g/b;

    iget-object v2, p0, Lcom/crashlytics/android/answers/AnswersEventsHandler$1;->val$protocolAndHostOverride:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/answers/SessionAnalyticsManagerStrategy;->setAnalyticsSettingsData(Lc/a/a/a/a/g/b;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "Answers"

    const-string/jumbo v3, "Failed to set analytics settings data"

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
