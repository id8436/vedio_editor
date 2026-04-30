.class public final Lcom/b/a/p;
.super Ljava/lang/Object;
.source "RequestManager.java"


# instance fields
.field final synthetic a:Lcom/b/a/o;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final d:Z


# direct methods
.method constructor <init>(Lcom/b/a/o;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .prologue
    .line 748
    iput-object p1, p0, Lcom/b/a/p;->a:Lcom/b/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/p;->d:Z

    .line 750
    iput-object p2, p0, Lcom/b/a/p;->b:Ljava/lang/Object;

    .line 751
    invoke-static {p2}, Lcom/b/a/l;->a(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/p;->c:Ljava/lang/Class;

    .line 752
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/b/a/g;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TZ;>;)",
            "Lcom/b/a/g",
            "<TA;TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 768
    iget-object v0, p0, Lcom/b/a/p;->a:Lcom/b/a/o;

    iget-object v0, v0, Lcom/b/a/o;->a:Lcom/b/a/l;

    invoke-static {v0}, Lcom/b/a/l;->e(Lcom/b/a/l;)Lcom/b/a/q;

    move-result-object v10

    new-instance v0, Lcom/b/a/g;

    iget-object v1, p0, Lcom/b/a/p;->a:Lcom/b/a/o;

    iget-object v1, v1, Lcom/b/a/o;->a:Lcom/b/a/l;

    invoke-static {v1}, Lcom/b/a/l;->a(Lcom/b/a/l;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/p;->a:Lcom/b/a/o;

    iget-object v2, v2, Lcom/b/a/o;->a:Lcom/b/a/l;

    invoke-static {v2}, Lcom/b/a/l;->b(Lcom/b/a/l;)Lcom/b/a/h;

    move-result-object v2

    iget-object v3, p0, Lcom/b/a/p;->c:Ljava/lang/Class;

    iget-object v4, p0, Lcom/b/a/p;->a:Lcom/b/a/o;

    invoke-static {v4}, Lcom/b/a/o;->a(Lcom/b/a/o;)Lcom/b/a/d/c/s;

    move-result-object v4

    iget-object v5, p0, Lcom/b/a/p;->a:Lcom/b/a/o;

    invoke-static {v5}, Lcom/b/a/o;->b(Lcom/b/a/o;)Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lcom/b/a/p;->a:Lcom/b/a/o;

    iget-object v6, v6, Lcom/b/a/o;->a:Lcom/b/a/l;

    invoke-static {v6}, Lcom/b/a/l;->c(Lcom/b/a/l;)Lcom/b/a/e/q;

    move-result-object v7

    iget-object v6, p0, Lcom/b/a/p;->a:Lcom/b/a/o;

    iget-object v6, v6, Lcom/b/a/o;->a:Lcom/b/a/l;

    invoke-static {v6}, Lcom/b/a/l;->d(Lcom/b/a/l;)Lcom/b/a/e/i;

    move-result-object v8

    iget-object v6, p0, Lcom/b/a/p;->a:Lcom/b/a/o;

    iget-object v6, v6, Lcom/b/a/o;->a:Lcom/b/a/l;

    invoke-static {v6}, Lcom/b/a/l;->e(Lcom/b/a/l;)Lcom/b/a/q;

    move-result-object v9

    move-object v6, p1

    invoke-direct/range {v0 .. v9}, Lcom/b/a/g;-><init>(Landroid/content/Context;Lcom/b/a/h;Ljava/lang/Class;Lcom/b/a/d/c/s;Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/e/q;Lcom/b/a/e/i;Lcom/b/a/q;)V

    invoke-virtual {v10, v0}, Lcom/b/a/q;->a(Lcom/b/a/e;)Lcom/b/a/e;

    move-result-object v0

    check-cast v0, Lcom/b/a/g;

    .line 771
    iget-boolean v1, p0, Lcom/b/a/p;->d:Z

    if-eqz v1, :cond_0

    .line 772
    iget-object v1, p0, Lcom/b/a/p;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/b/a/g;->b(Ljava/lang/Object;)Lcom/b/a/e;

    .line 774
    :cond_0
    return-object v0
.end method
