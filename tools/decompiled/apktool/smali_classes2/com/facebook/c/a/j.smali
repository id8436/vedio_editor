.class public Lcom/facebook/c/a/j;
.super Ljava/lang/Object;
.source "NoOpCacheEventListener.java"

# interfaces
.implements Lcom/facebook/c/a/d;


# static fields
.field private static a:Lcom/facebook/c/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/c/a/j;->a:Lcom/facebook/c/a/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static declared-synchronized a()Lcom/facebook/c/a/j;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcom/facebook/c/a/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/c/a/j;->a:Lcom/facebook/c/a/j;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/facebook/c/a/j;

    invoke-direct {v0}, Lcom/facebook/c/a/j;-><init>()V

    sput-object v0, Lcom/facebook/c/a/j;->a:Lcom/facebook/c/a/j;

    .line 25
    :cond_0
    sget-object v0, Lcom/facebook/c/a/j;->a:Lcom/facebook/c/a/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/facebook/c/a/c;)V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public b(Lcom/facebook/c/a/c;)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public c(Lcom/facebook/c/a/c;)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public d(Lcom/facebook/c/a/c;)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public e(Lcom/facebook/c/a/c;)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public f(Lcom/facebook/c/a/c;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public g(Lcom/facebook/c/a/c;)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method
