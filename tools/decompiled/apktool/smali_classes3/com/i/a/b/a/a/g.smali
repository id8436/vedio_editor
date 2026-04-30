.class Lcom/i/a/b/a/a/g;
.super Lcom/i/a/b/a/a/f;
.source "LinkedBlockingDeque.java"


# instance fields
.field final synthetic d:Lcom/i/a/b/a/a/d;


# direct methods
.method private constructor <init>(Lcom/i/a/b/a/a/d;)V
    .locals 0

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/i/a/b/a/a/g;->d:Lcom/i/a/b/a/a/d;

    invoke-direct {p0, p1}, Lcom/i/a/b/a/a/f;-><init>(Lcom/i/a/b/a/a/d;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/i/a/b/a/a/d;Lcom/i/a/b/a/a/e;)V
    .locals 0

    .prologue
    .line 1113
    invoke-direct {p0, p1}, Lcom/i/a/b/a/a/g;-><init>(Lcom/i/a/b/a/a/d;)V

    return-void
.end method


# virtual methods
.method a()Lcom/i/a/b/a/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/i/a/b/a/a/h",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/i/a/b/a/a/g;->d:Lcom/i/a/b/a/a/d;

    iget-object v0, v0, Lcom/i/a/b/a/a/d;->a:Lcom/i/a/b/a/a/h;

    return-object v0
.end method

.method a(Lcom/i/a/b/a/a/h;)Lcom/i/a/b/a/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/i/a/b/a/a/h",
            "<TE;>;)",
            "Lcom/i/a/b/a/a/h",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1115
    iget-object v0, p1, Lcom/i/a/b/a/a/h;->c:Lcom/i/a/b/a/a/h;

    return-object v0
.end method
