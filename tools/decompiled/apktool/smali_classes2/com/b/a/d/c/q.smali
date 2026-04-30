.class Lcom/b/a/d/c/q;
.super Lcom/b/a/j/e;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/j/e",
        "<",
        "Lcom/b/a/d/c/r",
        "<TA;>;TB;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/d/c/p;


# direct methods
.method constructor <init>(Lcom/b/a/d/c/p;I)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/b/a/d/c/q;->a:Lcom/b/a/d/c/p;

    invoke-direct {p0, p2}, Lcom/b/a/j/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/b/a/d/c/r;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/c/r",
            "<TA;>;TB;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/b/a/d/c/r;->a()V

    .line 30
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/b/a/d/c/r;

    invoke-virtual {p0, p1, p2}, Lcom/b/a/d/c/q;->a(Lcom/b/a/d/c/r;Ljava/lang/Object;)V

    return-void
.end method
