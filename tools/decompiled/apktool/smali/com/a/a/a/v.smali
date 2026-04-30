.class public Lcom/a/a/a/v;
.super Ljava/lang/Object;
.source "JobManager.java"


# static fields
.field public static final a:J


# instance fields
.field final b:Lcom/a/a/a/x;

.field private final c:Lcom/a/a/a/g/g;

.field private final d:Lcom/a/a/a/g/c;

.field private e:Ljava/lang/Thread;

.field private f:Lcom/a/a/a/j/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/a/a/a/v;->a:J

    return-void
.end method

.method public constructor <init>(Lcom/a/a/a/c/a;)V
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/a/a/a/g/c;

    invoke-direct {v0}, Lcom/a/a/a/g/c;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/v;->d:Lcom/a/a/a/g/c;

    .line 61
    new-instance v0, Lcom/a/a/a/g/g;

    invoke-virtual {p1}, Lcom/a/a/a/c/a;->m()Lcom/a/a/a/k/b;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/a/v;->d:Lcom/a/a/a/g/c;

    invoke-direct {v0, v1, v2}, Lcom/a/a/a/g/g;-><init>(Lcom/a/a/a/k/b;Lcom/a/a/a/g/c;)V

    iput-object v0, p0, Lcom/a/a/a/v;->c:Lcom/a/a/a/g/g;

    .line 62
    new-instance v0, Lcom/a/a/a/x;

    iget-object v1, p0, Lcom/a/a/a/v;->c:Lcom/a/a/a/g/g;

    iget-object v2, p0, Lcom/a/a/a/v;->d:Lcom/a/a/a/g/c;

    invoke-direct {v0, p1, v1, v2}, Lcom/a/a/a/x;-><init>(Lcom/a/a/a/c/a;Lcom/a/a/a/g/g;Lcom/a/a/a/g/c;)V

    iput-object v0, p0, Lcom/a/a/a/v;->b:Lcom/a/a/a/x;

    .line 63
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/a/a/a/v;->b:Lcom/a/a/a/x;

    const-string/jumbo v2, "job-manager"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/a/v;->e:Ljava/lang/Thread;

    .line 64
    invoke-virtual {p1}, Lcom/a/a/a/c/a;->o()Lcom/a/a/a/j/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/a/a/a/c/a;->o()Lcom/a/a/a/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/v;->f:Lcom/a/a/a/j/a;

    .line 66
    invoke-direct {p0}, Lcom/a/a/a/v;->a()Lcom/a/a/a/j/b;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lcom/a/a/a/c/a;->o()Lcom/a/a/a/j/a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/a/a/a/c/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/a/a/a/j/a;->a(Landroid/content/Context;Lcom/a/a/a/j/b;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/v;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 70
    return-void
.end method

.method private a()Lcom/a/a/a/j/b;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/a/a/a/w;

    invoke-direct {v0, p0}, Lcom/a/a/a/w;-><init>(Lcom/a/a/a/v;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/a/a/a/r;)V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/a/a/a/v;->d:Lcom/a/a/a/g/c;

    const-class v1, Lcom/a/a/a/g/a/a;

    invoke-virtual {v0, v1}, Lcom/a/a/a/g/c;->a(Ljava/lang/Class;)Lcom/a/a/a/g/b;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/g/a/a;

    .line 239
    invoke-virtual {v0, p1}, Lcom/a/a/a/g/a/a;->a(Lcom/a/a/a/r;)V

    .line 240
    iget-object v1, p0, Lcom/a/a/a/v;->c:Lcom/a/a/a/g/g;

    invoke-virtual {v1, v0}, Lcom/a/a/a/g/g;->a(Lcom/a/a/a/g/b;)V

    .line 241
    return-void
.end method
