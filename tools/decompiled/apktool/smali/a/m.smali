.class La/m;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements La/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/j",
        "<TTResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:La/t;

.field final synthetic b:La/j;

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:La/g;

.field final synthetic e:La/l;


# direct methods
.method constructor <init>(La/l;La/t;La/j;Ljava/util/concurrent/Executor;La/g;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, La/m;->e:La/l;

    iput-object p2, p0, La/m;->a:La/t;

    iput-object p3, p0, La/m;->b:La/j;

    iput-object p4, p0, La/m;->c:Ljava/util/concurrent/Executor;

    iput-object p5, p0, La/m;->d:La/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(La/l;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 651
    invoke-virtual {p0, p1}, La/m;->b(La/l;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public b(La/l;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/l",
            "<TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 654
    iget-object v0, p0, La/m;->a:La/t;

    iget-object v1, p0, La/m;->b:La/j;

    iget-object v2, p0, La/m;->c:Ljava/util/concurrent/Executor;

    iget-object v3, p0, La/m;->d:La/g;

    invoke-static {v0, v1, p1, v2, v3}, La/l;->a(La/t;La/j;La/l;Ljava/util/concurrent/Executor;La/g;)V

    .line 655
    const/4 v0, 0x0

    return-object v0
.end method
