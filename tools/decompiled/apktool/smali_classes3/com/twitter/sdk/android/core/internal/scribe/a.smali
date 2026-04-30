.class public Lcom/twitter/sdk/android/core/internal/scribe/a;
.super Lcom/twitter/sdk/android/core/internal/scribe/z;
.source "DefaultScribeClient.java"


# static fields
.field private static volatile b:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private final c:Lcom/twitter/sdk/android/core/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/u",
            "<+",
            "Lcom/twitter/sdk/android/core/t",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/u;Lcom/twitter/sdk/android/core/g;Lcom/twitter/sdk/android/core/internal/s;Lcom/twitter/sdk/android/core/internal/scribe/aa;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            "Lcom/twitter/sdk/android/core/u",
            "<+",
            "Lcom/twitter/sdk/android/core/t",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;>;",
            "Lcom/twitter/sdk/android/core/g;",
            "Lcom/twitter/sdk/android/core/internal/s;",
            "Lcom/twitter/sdk/android/core/internal/scribe/aa;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {}, Lcom/twitter/sdk/android/core/internal/scribe/a;->d()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v4, Lcom/twitter/sdk/android/core/internal/scribe/ac;

    invoke-static {}, Lcom/twitter/sdk/android/core/internal/scribe/a;->c()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/twitter/sdk/android/core/internal/scribe/ac;-><init>(Lcom/google/gson/Gson;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p6

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/twitter/sdk/android/core/internal/scribe/z;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/twitter/sdk/android/core/internal/scribe/aa;Lcom/twitter/sdk/android/core/internal/scribe/ac;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/u;Lcom/twitter/sdk/android/core/g;Lcom/twitter/sdk/android/core/internal/s;)V

    .line 77
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/a;->e:Landroid/content/Context;

    .line 78
    iput-object p3, p0, Lcom/twitter/sdk/android/core/internal/scribe/a;->c:Lcom/twitter/sdk/android/core/u;

    .line 79
    invoke-virtual {p5}, Lcom/twitter/sdk/android/core/internal/s;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/a;->d:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/u;Lcom/twitter/sdk/android/core/g;Lcom/twitter/sdk/android/core/internal/s;Lcom/twitter/sdk/android/core/internal/scribe/aa;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/core/u",
            "<+",
            "Lcom/twitter/sdk/android/core/t",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;>;",
            "Lcom/twitter/sdk/android/core/g;",
            "Lcom/twitter/sdk/android/core/internal/s;",
            "Lcom/twitter/sdk/android/core/internal/scribe/aa;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {}, Lcom/twitter/sdk/android/core/af;->a()Lcom/twitter/sdk/android/core/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/af;->c()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/twitter/sdk/android/core/internal/scribe/a;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/u;Lcom/twitter/sdk/android/core/g;Lcom/twitter/sdk/android/core/internal/s;Lcom/twitter/sdk/android/core/internal/scribe/aa;)V

    .line 68
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/aa;
    .locals 9

    .prologue
    .line 157
    const-string/jumbo v0, "https://syndication.twitter.com"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/aa;

    invoke-static {}, Lcom/twitter/sdk/android/core/internal/scribe/a;->e()Z

    move-result v1

    const-string/jumbo v3, "i"

    const-string/jumbo v4, "sdk"

    const-string/jumbo v5, ""

    .line 159
    invoke-static {p0, p1}, Lcom/twitter/sdk/android/core/internal/scribe/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x64

    const/16 v8, 0x258

    invoke-direct/range {v0 .. v8}, Lcom/twitter/sdk/android/core/internal/scribe/aa;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 158
    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/a;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TwitterKit/"

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "3.0"

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (Android "

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") "

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    return-object v0
.end method

.method private static c()Lcom/google/gson/Gson;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    sget-object v1, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;

    .line 141
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setFieldNamingPolicy(Lcom/google/gson/FieldNamingPolicy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 140
    return-object v0
.end method

.method static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-object p1

    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method private static d()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .prologue
    .line 146
    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_1

    .line 147
    const-class v1, Lcom/twitter/sdk/android/core/internal/scribe/a;

    monitor-enter v1

    .line 148
    :try_start_0
    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 149
    const-string/jumbo v0, "scribe"

    invoke-static {v0}, Lcom/twitter/sdk/android/core/internal/p;->b(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/twitter/sdk/android/core/internal/scribe/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 151
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_1
    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0

    .line 151
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static e()Z
    .locals 2

    .prologue
    .line 169
    const-string/jumbo v0, "release"

    const-string/jumbo v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/twitter/sdk/android/core/t;)J
    .locals 2

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/t;->b()J

    move-result-wide v0

    .line 132
    :goto_0
    return-wide v0

    .line 130
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method a()Lcom/twitter/sdk/android/core/t;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/a;->c:Lcom/twitter/sdk/android/core/u;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/u;->b()Lcom/twitter/sdk/android/core/t;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/sdk/android/core/internal/scribe/ab;)V
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/scribe/a;->a()Lcom/twitter/sdk/android/core/t;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/internal/scribe/a;->a(Lcom/twitter/sdk/android/core/t;)J

    move-result-wide v0

    invoke-super {p0, p1, v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/z;->a(Lcom/twitter/sdk/android/core/internal/scribe/ab;J)Z

    .line 102
    return-void
.end method

.method public a(Lcom/twitter/sdk/android/core/internal/scribe/e;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/internal/scribe/e;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/scribe/a;->b()Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 96
    const-string/jumbo v1, ""

    iget-object v5, p0, Lcom/twitter/sdk/android/core/internal/scribe/a;->d:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/twitter/sdk/android/core/internal/scribe/ad;->a(Lcom/twitter/sdk/android/core/internal/scribe/e;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/twitter/sdk/android/core/internal/scribe/ab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/internal/scribe/a;->a(Lcom/twitter/sdk/android/core/internal/scribe/ab;)V

    .line 98
    return-void
.end method

.method public varargs a([Lcom/twitter/sdk/android/core/internal/scribe/e;)V
    .locals 4

    .prologue
    .line 83
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 84
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/twitter/sdk/android/core/internal/scribe/a;->a(Lcom/twitter/sdk/android/core/internal/scribe/e;Ljava/util/List;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method
