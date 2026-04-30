.class Lcom/b/a/d/b/b/g;
.super Ljava/lang/Object;
.source "DiskCacheWriteLocker.java"


# instance fields
.field final a:Ljava/util/concurrent/locks/Lock;

.field b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/b/a/d/b/b/g;->a:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/d/b/b/f;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/b/a/d/b/b/g;-><init>()V

    return-void
.end method
