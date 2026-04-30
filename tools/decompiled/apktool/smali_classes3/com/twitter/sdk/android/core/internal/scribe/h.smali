.class public abstract Lcom/twitter/sdk/android/core/internal/scribe/h;
.super Ljava/lang/Object;
.source "EventsFilesManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Lcom/twitter/sdk/android/core/internal/scribe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/internal/scribe/g",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final c:Lcom/twitter/sdk/android/core/internal/o;

.field protected final d:Lcom/twitter/sdk/android/core/internal/scribe/o;

.field protected volatile e:J

.field protected final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/internal/scribe/p;",
            ">;"
        }
    .end annotation
.end field

.field private final g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/internal/scribe/g;Lcom/twitter/sdk/android/core/internal/o;Lcom/twitter/sdk/android/core/internal/scribe/o;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/core/internal/scribe/g",
            "<TT;>;",
            "Lcom/twitter/sdk/android/core/internal/o;",
            "Lcom/twitter/sdk/android/core/internal/scribe/o;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->f:Ljava/util/List;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->a:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->b:Lcom/twitter/sdk/android/core/internal/scribe/g;

    .line 75
    iput-object p4, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->d:Lcom/twitter/sdk/android/core/internal/scribe/o;

    .line 76
    iput-object p3, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->c:Lcom/twitter/sdk/android/core/internal/o;

    .line 78
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->c:Lcom/twitter/sdk/android/core/internal/o;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/internal/o;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->e:J

    .line 80
    iput p5, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->g:I

    .line 81
    return-void
.end method

.method private a(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->d:Lcom/twitter/sdk/android/core/internal/scribe/o;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/scribe/h;->d()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/twitter/sdk/android/core/internal/scribe/o;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "session analytics events file is %d bytes, new event is %d bytes, this is over flush limit of %d, rolling it over"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->d:Lcom/twitter/sdk/android/core/internal/scribe/o;

    .line 140
    invoke-interface {v4}, Lcom/twitter/sdk/android/core/internal/scribe/o;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 141
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/scribe/h;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 136
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->a:Landroid/content/Context;

    const/4 v2, 0x4

    const-string/jumbo v3, "Twitter"

    invoke-static {v1, v2, v3, v0}, Lcom/twitter/sdk/android/core/internal/n;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/scribe/h;->a()Z

    .line 145
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/internal/scribe/p;

    .line 168
    :try_start_0
    invoke-interface {v0, p1}, Lcom/twitter/sdk/android/core/internal/scribe/p;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->a:Landroid/content/Context;

    const-string/jumbo v3, "One of the roll over listeners threw an exception"

    invoke-static {v2, v3, v0}, Lcom/twitter/sdk/android/core/internal/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 174
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 231
    const-string/jumbo v2, "_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 233
    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 240
    :goto_0
    return-wide v0

    .line 238
    :cond_0
    const/4 v3, 0x2

    :try_start_0
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public a(Lcom/twitter/sdk/android/core/internal/scribe/p;)V
    .locals 1

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->b:Lcom/twitter/sdk/android/core/internal/scribe/g;

    invoke-interface {v0, p1}, Lcom/twitter/sdk/android/core/internal/scribe/g;->a(Ljava/lang/Object;)[B

    move-result-object v0

    .line 85
    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/h;->a(I)V

    .line 87
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->d:Lcom/twitter/sdk/android/core/internal/scribe/o;

    invoke-interface {v1, v0}, Lcom/twitter/sdk/android/core/internal/scribe/o;->a([B)V

    .line 88
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->d:Lcom/twitter/sdk/android/core/internal/scribe/o;

    invoke-interface {v0, p1}, Lcom/twitter/sdk/android/core/internal/scribe/o;->a(Ljava/util/List;)V

    .line 182
    return-void
.end method

.method public a()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    .line 106
    const/4 v0, 0x0

    .line 110
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->d:Lcom/twitter/sdk/android/core/internal/scribe/o;

    invoke-interface {v3}, Lcom/twitter/sdk/android/core/internal/scribe/o;->b()Z

    move-result v3

    if-nez v3, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/scribe/h;->b()Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->d:Lcom/twitter/sdk/android/core/internal/scribe/o;

    invoke-interface {v3, v0}, Lcom/twitter/sdk/android/core/internal/scribe/o;->a(Ljava/lang/String;)V

    .line 114
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->a:Landroid/content/Context;

    const/4 v4, 0x4

    const-string/jumbo v5, "Twitter"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "generated new file %s"

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v0, v8, v2

    .line 116
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-static {v3, v4, v5, v2}, Lcom/twitter/sdk/android/core/internal/n;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->c:Lcom/twitter/sdk/android/core/internal/o;

    invoke-interface {v2}, Lcom/twitter/sdk/android/core/internal/o;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->e:J

    .line 124
    :goto_0
    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/internal/scribe/h;->b(Ljava/lang/String;)V

    .line 125
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected c()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->g:I

    return v0
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 158
    const/16 v0, 0x1f40

    return v0
.end method

.method public e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->d:Lcom/twitter/sdk/android/core/internal/scribe/o;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/o;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 9

    .prologue
    .line 191
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->d:Lcom/twitter/sdk/android/core/internal/scribe/o;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/internal/scribe/o;->c()Ljava/util/List;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/scribe/h;->c()I

    move-result v1

    .line 194
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 228
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .line 200
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->a:Landroid/content/Context;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "Found %d files in  roll over directory, this is greater than %d, deleting %d oldest files"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 203
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    .line 201
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-static {v3, v1}, Lcom/twitter/sdk/android/core/internal/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    new-instance v1, Ljava/util/TreeSet;

    new-instance v3, Lcom/twitter/sdk/android/core/internal/scribe/i;

    invoke-direct {v3, p0}, Lcom/twitter/sdk/android/core/internal/scribe/i;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/h;)V

    invoke-direct {v1, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 213
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/twitter/sdk/android/core/internal/scribe/h;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 215
    new-instance v6, Lcom/twitter/sdk/android/core/internal/scribe/j;

    invoke-direct {v6, v0, v4, v5}, Lcom/twitter/sdk/android/core/internal/scribe/j;-><init>(Ljava/io/File;J)V

    invoke-virtual {v1, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 218
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 219
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/internal/scribe/j;

    .line 220
    iget-object v0, v0, Lcom/twitter/sdk/android/core/internal/scribe/j;->a:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 227
    :cond_3
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/h;->d:Lcom/twitter/sdk/android/core/internal/scribe/o;

    invoke-interface {v0, v3}, Lcom/twitter/sdk/android/core/internal/scribe/o;->a(Ljava/util/List;)V

    goto :goto_0
.end method
