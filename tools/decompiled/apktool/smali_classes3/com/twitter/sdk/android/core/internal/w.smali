.class public Lcom/twitter/sdk/android/core/internal/w;
.super Ljava/lang/Object;
.source "SessionMonitor.java"


# instance fields
.field public a:Z

.field public b:J

.field private final c:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const-string/jumbo v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/w;->c:Ljava/util/Calendar;

    .line 116
    return-void
.end method

.method private a(JJ)Z
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v0, 0x1

    .line 135
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/w;->c:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 136
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/w;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 137
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/w;->c:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 139
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/w;->c:Ljava/util/Calendar;

    invoke-virtual {v3, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 140
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/w;->c:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 141
    iget-object v4, p0, Lcom/twitter/sdk/android/core/internal/w;->c:Ljava/util/Calendar;

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 143
    if-ne v1, v3, :cond_0

    if-ne v2, v4, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(J)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 119
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/twitter/sdk/android/core/internal/w;->b:J

    sub-long v2, p1, v2

    const-wide/32 v4, 0x1499700

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    move v3, v0

    .line 121
    :goto_0
    iget-wide v4, p0, Lcom/twitter/sdk/android/core/internal/w;->b:J

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/twitter/sdk/android/core/internal/w;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    .line 123
    :goto_1
    iget-boolean v4, p0, Lcom/twitter/sdk/android/core/internal/w;->a:Z

    if-nez v4, :cond_3

    if-nez v3, :cond_0

    if-eqz v2, :cond_3

    .line 124
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/twitter/sdk/android/core/internal/w;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :goto_2
    monitor-exit p0

    return v0

    :cond_1
    move v3, v1

    .line 119
    goto :goto_0

    :cond_2
    move v2, v1

    .line 121
    goto :goto_1

    :cond_3
    move v0, v1

    .line 126
    goto :goto_2

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(J)V
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/internal/w;->a:Z

    .line 131
    iput-wide p1, p0, Lcom/twitter/sdk/android/core/internal/w;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
