.class Lcom/b/a/q;
.super Ljava/lang/Object;
.source "RequestManager.java"


# instance fields
.field final synthetic a:Lcom/b/a/l;


# direct methods
.method constructor <init>(Lcom/b/a/l;)V
    .locals 0

    .prologue
    .line 779
    iput-object p1, p0, Lcom/b/a/q;->a:Lcom/b/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/e;)Lcom/b/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "X:",
            "Lcom/b/a/e",
            "<TA;***>;>(TX;)TX;"
        }
    .end annotation

    .prologue
    .line 782
    iget-object v0, p0, Lcom/b/a/q;->a:Lcom/b/a/l;

    invoke-static {v0}, Lcom/b/a/l;->f(Lcom/b/a/l;)Lcom/b/a/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/b/a/q;->a:Lcom/b/a/l;

    invoke-static {v0}, Lcom/b/a/l;->f(Lcom/b/a/l;)Lcom/b/a/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/b/a/n;->a(Lcom/b/a/e;)V

    .line 785
    :cond_0
    return-object p1
.end method
