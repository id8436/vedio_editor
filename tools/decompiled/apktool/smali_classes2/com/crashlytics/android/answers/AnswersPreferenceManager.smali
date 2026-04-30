.class Lcom/crashlytics/android/answers/AnswersPreferenceManager;
.super Ljava/lang/Object;
.source "AnswersPreferenceManager.java"


# static fields
.field static final PREFKEY_ANALYTICS_LAUNCHED:Ljava/lang/String; = "analytics_launched"


# instance fields
.field private final prefStore:Lc/a/a/a/a/f/c;


# direct methods
.method public constructor <init>(Lc/a/a/a/a/f/c;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/crashlytics/android/answers/AnswersPreferenceManager;->prefStore:Lc/a/a/a/a/f/c;

    .line 31
    return-void
.end method


# virtual methods
.method public hasAnalyticsLaunched()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/crashlytics/android/answers/AnswersPreferenceManager;->prefStore:Lc/a/a/a/a/f/c;

    invoke-interface {v0}, Lc/a/a/a/a/f/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "analytics_launched"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAnalyticsLaunched()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/crashlytics/android/answers/AnswersPreferenceManager;->prefStore:Lc/a/a/a/a/f/c;

    iget-object v1, p0, Lcom/crashlytics/android/answers/AnswersPreferenceManager;->prefStore:Lc/a/a/a/a/f/c;

    invoke-interface {v1}, Lc/a/a/a/a/f/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "analytics_launched"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/a/a/a/a/f/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 36
    return-void
.end method
