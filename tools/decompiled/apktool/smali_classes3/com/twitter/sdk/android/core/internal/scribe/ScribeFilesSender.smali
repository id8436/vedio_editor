.class Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;
.super Ljava/lang/Object;
.source "ScribeFilesSender.java"

# interfaces
.implements Lcom/twitter/sdk/android/core/internal/scribe/s;


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lcom/twitter/sdk/android/core/internal/scribe/aa;

.field private final f:J

.field private final g:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field private final h:Lcom/twitter/sdk/android/core/u;
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

.field private final i:Lcom/twitter/sdk/android/core/g;

.field private final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/concurrent/ExecutorService;

.field private final l:Lcom/twitter/sdk/android/core/internal/s;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-array v0, v3, [B

    const/16 v1, 0x5b

    aput-byte v1, v0, v2

    sput-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->a:[B

    .line 66
    new-array v0, v3, [B

    const/16 v1, 0x2c

    aput-byte v1, v0, v2

    sput-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->b:[B

    .line 70
    new-array v0, v3, [B

    const/16 v1, 0x5d

    aput-byte v1, v0, v2

    sput-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->c:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/internal/scribe/aa;JLcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/u;Lcom/twitter/sdk/android/core/g;Ljava/util/concurrent/ExecutorService;Lcom/twitter/sdk/android/core/internal/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/core/internal/scribe/aa;",
            "J",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            "Lcom/twitter/sdk/android/core/u",
            "<+",
            "Lcom/twitter/sdk/android/core/t",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;>;",
            "Lcom/twitter/sdk/android/core/g;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/twitter/sdk/android/core/internal/s;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->d:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->e:Lcom/twitter/sdk/android/core/internal/scribe/aa;

    .line 89
    iput-wide p3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->f:J

    .line 90
    iput-object p5, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->g:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 91
    iput-object p6, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->h:Lcom/twitter/sdk/android/core/u;

    .line 92
    iput-object p7, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->i:Lcom/twitter/sdk/android/core/g;

    .line 93
    iput-object p8, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->k:Ljava/util/concurrent/ExecutorService;

    .line 94
    iput-object p9, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->l:Lcom/twitter/sdk/android/core/internal/s;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 96
    return-void
.end method

.method private a(J)Lcom/twitter/sdk/android/core/t;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->h:Lcom/twitter/sdk/android/core/u;

    invoke-interface {v0, p1, p2}, Lcom/twitter/sdk/android/core/u;->a(J)Lcom/twitter/sdk/android/core/t;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/twitter/sdk/android/core/t;)Z
    .locals 1

    .prologue
    .line 207
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/t;->a()Lcom/twitter/sdk/android/core/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()[B
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->b:[B

    return-object v0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->a()Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized a()Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;
    .locals 5

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 175
    iget-wide v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->f:J

    invoke-direct {p0, v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->a(J)Lcom/twitter/sdk/android/core/t;

    move-result-object v0

    .line 177
    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->a(Lcom/twitter/sdk/android/core/t;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    new-instance v1, Ld/at;

    invoke-direct {v1}, Ld/at;-><init>()V

    .line 179
    invoke-static {}, Lcom/twitter/sdk/android/core/internal/a/e;->a()Ld/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Ld/at;->a(Ld/j;)Ld/at;

    move-result-object v1

    new-instance v2, Lcom/twitter/sdk/android/core/internal/scribe/ag;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->e:Lcom/twitter/sdk/android/core/internal/scribe/aa;

    iget-object v4, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->l:Lcom/twitter/sdk/android/core/internal/s;

    invoke-direct {v2, v3, v4}, Lcom/twitter/sdk/android/core/internal/scribe/ag;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/aa;Lcom/twitter/sdk/android/core/internal/s;)V

    .line 180
    invoke-virtual {v1, v2}, Ld/at;->a(Ld/al;)Ld/at;

    move-result-object v1

    new-instance v2, Lcom/twitter/sdk/android/core/internal/a/d;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->g:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-direct {v2, v0, v3}, Lcom/twitter/sdk/android/core/internal/a/d;-><init>(Lcom/twitter/sdk/android/core/t;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V

    .line 181
    invoke-virtual {v1, v2}, Ld/at;->a(Ld/al;)Ld/at;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Ld/at;->a()Ld/ar;

    move-result-object v0

    .line 191
    :goto_0
    new-instance v1, Lf/ay;

    invoke-direct {v1}, Lf/ay;-><init>()V

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->e:Lcom/twitter/sdk/android/core/internal/scribe/aa;

    iget-object v2, v2, Lcom/twitter/sdk/android/core/internal/scribe/aa;->b:Ljava/lang/String;

    .line 192
    invoke-virtual {v1, v2}, Lf/ay;->a(Ljava/lang/String;)Lf/ay;

    move-result-object v1

    .line 193
    invoke-virtual {v1, v0}, Lf/ay;->a(Ld/ar;)Lf/ay;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lf/ay;->a()Lf/aw;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->j:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    const-class v3, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;

    invoke-virtual {v0, v3}, Lf/aw;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 184
    :cond_1
    :try_start_1
    new-instance v0, Ld/at;

    invoke-direct {v0}, Ld/at;-><init>()V

    .line 185
    invoke-static {}, Lcom/twitter/sdk/android/core/internal/a/e;->a()Ld/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/at;->a(Ld/j;)Ld/at;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/internal/scribe/ag;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->e:Lcom/twitter/sdk/android/core/internal/scribe/aa;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->l:Lcom/twitter/sdk/android/core/internal/s;

    invoke-direct {v1, v2, v3}, Lcom/twitter/sdk/android/core/internal/scribe/ag;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/aa;Lcom/twitter/sdk/android/core/internal/s;)V

    .line 186
    invoke-virtual {v0, v1}, Ld/at;->a(Ld/al;)Ld/at;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/internal/a/a;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->i:Lcom/twitter/sdk/android/core/g;

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/internal/a/a;-><init>(Lcom/twitter/sdk/android/core/g;)V

    .line 187
    invoke-virtual {v0, v1}, Ld/at;->a(Ld/al;)Ld/at;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Ld/at;->a()Ld/ar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Ljava/lang/String;)Lf/av;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lf/av",
            "<",
            "Ld/bf;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->a()Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->e:Lcom/twitter/sdk/android/core/internal/scribe/aa;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/internal/scribe/aa;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->e:Lcom/twitter/sdk/android/core/internal/scribe/aa;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/internal/scribe/aa;->e:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;->uploadSequence(Ljava/lang/String;Ljava/lang/String;)Lf/g;

    move-result-object v0

    invoke-interface {v0}, Lf/g;->a()Lf/av;

    move-result-object v0

    .line 218
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->e:Lcom/twitter/sdk/android/core/internal/scribe/aa;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/internal/scribe/aa;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->e:Lcom/twitter/sdk/android/core/internal/scribe/aa;

    iget-object v2, v2, Lcom/twitter/sdk/android/core/internal/scribe/aa;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lf/g;

    move-result-object v0

    .line 219
    invoke-interface {v0}, Lf/g;->a()Lf/av;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 100
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 103
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->d:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/twitter/sdk/android/core/internal/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->a(Ljava/lang/String;)Lf/av;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lf/av;->a()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->d:Landroid/content/Context;

    const-string/jumbo v3, "Failed sending files"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/twitter/sdk/android/core/internal/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    invoke-virtual {v1}, Lf/av;->a()I

    move-result v2

    const/16 v3, 0x1f4

    if-eq v2, v3, :cond_0

    .line 111
    invoke-virtual {v1}, Lf/av;->a()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/16 v2, 0x190

    if-eq v1, v2, :cond_0

    .line 121
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->d:Landroid/content/Context;

    const-string/jumbo v2, "Failed sending files"

    invoke-static {v1, v2, v0}, Lcom/twitter/sdk/android/core/internal/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->d:Landroid/content/Context;

    const-string/jumbo v1, "Cannot attempt upload at this time"

    invoke-static {v0, v1}, Lcom/twitter/sdk/android/core/internal/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method b(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x400

    invoke-direct {v3, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 126
    const/4 v0, 0x1

    new-array v4, v0, [Z

    .line 127
    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->a:[B

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 128
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 129
    const/4 v2, 0x0

    .line 131
    :try_start_0
    new-instance v1, Lcom/twitter/sdk/android/core/internal/scribe/t;

    invoke-direct {v1, v0}, Lcom/twitter/sdk/android/core/internal/scribe/t;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :try_start_1
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/af;

    invoke-direct {v0, p0, v4, v3}, Lcom/twitter/sdk/android/core/internal/scribe/af;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;[ZLjava/io/ByteArrayOutputStream;)V

    invoke-virtual {v1, v0}, Lcom/twitter/sdk/android/core/internal/scribe/t;->a(Lcom/twitter/sdk/android/core/internal/scribe/x;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    invoke-static {v1}, Lcom/twitter/sdk/android/core/internal/n;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lcom/twitter/sdk/android/core/internal/n;->a(Ljava/io/Closeable;)V

    throw v0

    .line 151
    :cond_0
    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->c:[B

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 153
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 148
    :catchall_1
    move-exception v0

    goto :goto_1
.end method
