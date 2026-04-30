.class Lcom/twitter/sdk/android/core/internal/f;
.super Ljava/lang/Object;
.source "AdvertisingInfoProvider.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/sdk/android/core/internal/b/b;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/internal/b/b;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/f;->a:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/f;->b:Lcom/twitter/sdk/android/core/internal/b/b;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/twitter/sdk/android/core/internal/f;)Lcom/twitter/sdk/android/core/internal/e;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/f;->e()Lcom/twitter/sdk/android/core/internal/e;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/twitter/sdk/android/core/internal/e;)V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/twitter/sdk/android/core/internal/g;

    invoke-direct {v1, p0, p1}, Lcom/twitter/sdk/android/core/internal/g;-><init>(Lcom/twitter/sdk/android/core/internal/f;Lcom/twitter/sdk/android/core/internal/e;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 76
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/twitter/sdk/android/core/internal/f;Lcom/twitter/sdk/android/core/internal/e;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/internal/f;->b(Lcom/twitter/sdk/android/core/internal/e;)V

    return-void
.end method

.method private b()Lcom/twitter/sdk/android/core/internal/e;
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/f;->b:Lcom/twitter/sdk/android/core/internal/b/b;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/internal/b/b;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "advertising_id"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/f;->b:Lcom/twitter/sdk/android/core/internal/b/b;

    invoke-interface {v1}, Lcom/twitter/sdk/android/core/internal/b/b;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "limit_ad_tracking_enabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 98
    new-instance v2, Lcom/twitter/sdk/android/core/internal/e;

    invoke-direct {v2, v0, v1}, Lcom/twitter/sdk/android/core/internal/e;-><init>(Ljava/lang/String;Z)V

    return-object v2
.end method

.method private b(Lcom/twitter/sdk/android/core/internal/e;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/internal/f;->c(Lcom/twitter/sdk/android/core/internal/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/f;->b:Lcom/twitter/sdk/android/core/internal/b/b;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/f;->b:Lcom/twitter/sdk/android/core/internal/b/b;

    invoke-interface {v1}, Lcom/twitter/sdk/android/core/internal/b/b;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "advertising_id"

    iget-object v3, p1, Lcom/twitter/sdk/android/core/internal/e;->a:Ljava/lang/String;

    .line 83
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "limit_ad_tracking_enabled"

    iget-boolean v3, p1, Lcom/twitter/sdk/android/core/internal/e;->b:Z

    .line 84
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 82
    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/core/internal/b/b;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/f;->b:Lcom/twitter/sdk/android/core/internal/b/b;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/f;->b:Lcom/twitter/sdk/android/core/internal/b/b;

    invoke-interface {v1}, Lcom/twitter/sdk/android/core/internal/b/b;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "advertising_id"

    .line 89
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "limit_ad_tracking_enabled"

    .line 90
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 88
    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/core/internal/b/b;->a(Landroid/content/SharedPreferences$Editor;)Z

    goto :goto_0
.end method

.method private c()Lcom/twitter/sdk/android/core/internal/m;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/twitter/sdk/android/core/internal/h;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/internal/h;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private c(Lcom/twitter/sdk/android/core/internal/e;)Z
    .locals 1

    .prologue
    .line 110
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/twitter/sdk/android/core/internal/e;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Lcom/twitter/sdk/android/core/internal/m;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/twitter/sdk/android/core/internal/i;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/internal/i;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private e()Lcom/twitter/sdk/android/core/internal/e;
    .locals 4

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/f;->c()Lcom/twitter/sdk/android/core/internal/m;

    move-result-object v0

    .line 117
    invoke-interface {v0}, Lcom/twitter/sdk/android/core/internal/m;->a()Lcom/twitter/sdk/android/core/internal/e;

    move-result-object v0

    .line 119
    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/internal/f;->c(Lcom/twitter/sdk/android/core/internal/e;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/f;->d()Lcom/twitter/sdk/android/core/internal/m;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Lcom/twitter/sdk/android/core/internal/m;->a()Lcom/twitter/sdk/android/core/internal/e;

    move-result-object v0

    .line 123
    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/internal/f;->c(Lcom/twitter/sdk/android/core/internal/e;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v1

    const-string/jumbo v2, "Twitter"

    const-string/jumbo v3, "AdvertisingInfo not present"

    invoke-interface {v1, v2, v3}, Lcom/twitter/sdk/android/core/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_0
    return-object v0

    .line 126
    :cond_0
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v1

    const-string/jumbo v2, "Twitter"

    const-string/jumbo v3, "Using AdvertisingInfo from Service Provider"

    invoke-interface {v1, v2, v3}, Lcom/twitter/sdk/android/core/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_1
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v1

    const-string/jumbo v2, "Twitter"

    const-string/jumbo v3, "Using AdvertisingInfo from Reflection Provider"

    invoke-interface {v1, v2, v3}, Lcom/twitter/sdk/android/core/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method a()Lcom/twitter/sdk/android/core/internal/e;
    .locals 4

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/f;->b()Lcom/twitter/sdk/android/core/internal/e;

    move-result-object v0

    .line 49
    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/internal/f;->c(Lcom/twitter/sdk/android/core/internal/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v1

    const-string/jumbo v2, "Twitter"

    const-string/jumbo v3, "Using AdvertisingInfo from Preference Store"

    invoke-interface {v1, v2, v3}, Lcom/twitter/sdk/android/core/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/internal/f;->a(Lcom/twitter/sdk/android/core/internal/e;)V

    .line 57
    :goto_0
    return-object v0

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/f;->e()Lcom/twitter/sdk/android/core/internal/e;

    move-result-object v0

    .line 56
    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/internal/f;->b(Lcom/twitter/sdk/android/core/internal/e;)V

    goto :goto_0
.end method
