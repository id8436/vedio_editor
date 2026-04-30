.class Lcom/b/a/d/b/g;
.super Ljava/lang/Object;
.source "Engine.java"


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Lcom/b/a/d/b/p;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/b/a/d/b/p;)V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p1, p0, Lcom/b/a/d/b/g;->a:Ljava/util/concurrent/ExecutorService;

    .line 375
    iput-object p2, p0, Lcom/b/a/d/b/g;->b:Ljava/util/concurrent/ExecutorService;

    .line 376
    iput-object p3, p0, Lcom/b/a/d/b/g;->c:Lcom/b/a/d/b/p;

    .line 377
    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/d/c;Z)Lcom/b/a/d/b/l;
    .locals 6

    .prologue
    .line 380
    new-instance v0, Lcom/b/a/d/b/l;

    iget-object v2, p0, Lcom/b/a/d/b/g;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/b/a/d/b/g;->b:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lcom/b/a/d/b/g;->c:Lcom/b/a/d/b/p;

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/b/a/d/b/l;-><init>(Lcom/b/a/d/c;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/b/a/d/b/p;)V

    return-object v0
.end method
