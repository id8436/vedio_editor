.class public final Lcom/b/a/d/b/d/a;
.super Ljava/lang/Object;
.source "BitmapPreFiller.java"


# instance fields
.field private final a:Lcom/b/a/d/b/b/o;

.field private final b:Lcom/b/a/d/b/a/e;

.field private final c:Lcom/b/a/d/a;

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/b/a/d/b/b/o;Lcom/b/a/d/b/a/e;Lcom/b/a/d/a;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/b/a/d/b/d/a;->d:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lcom/b/a/d/b/d/a;->a:Lcom/b/a/d/b/b/o;

    .line 30
    iput-object p2, p0, Lcom/b/a/d/b/d/a;->b:Lcom/b/a/d/b/a/e;

    .line 31
    iput-object p3, p0, Lcom/b/a/d/b/d/a;->c:Lcom/b/a/d/a;

    .line 32
    return-void
.end method
