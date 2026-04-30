.class Lcom/b/a/d/b/k;
.super Ljava/lang/ref/WeakReference;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lcom/b/a/d/b/s",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/d/c;


# direct methods
.method public constructor <init>(Lcom/b/a/d/c;Lcom/b/a/d/b/s;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/c;",
            "Lcom/b/a/d/b/s",
            "<*>;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Lcom/b/a/d/b/s",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 339
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 340
    iput-object p1, p0, Lcom/b/a/d/b/k;->a:Lcom/b/a/d/c;

    .line 341
    return-void
.end method

.method static synthetic a(Lcom/b/a/d/b/k;)Lcom/b/a/d/c;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/b/a/d/b/k;->a:Lcom/b/a/d/c;

    return-object v0
.end method
