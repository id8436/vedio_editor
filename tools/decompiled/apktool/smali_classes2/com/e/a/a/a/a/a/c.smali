.class Lcom/e/a/a/a/a/a/c;
.super Ljava/lang/Object;
.source "BaseItemAnimationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/e/a/a/a/a/a/b;


# direct methods
.method constructor <init>(Lcom/e/a/a/a/a/a/b;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/e/a/a/a/a/a/c;->b:Lcom/e/a/a/a/a/a/b;

    iput-object p2, p0, Lcom/e/a/a/a/a/a/c;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/e/a/a/a/a/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/e/a/a/a/a/a/g;

    .line 80
    iget-object v2, p0, Lcom/e/a/a/a/a/a/c;->b:Lcom/e/a/a/a/a/a/b;

    invoke-virtual {v2, v0}, Lcom/e/a/a/a/a/a/b;->b(Lcom/e/a/a/a/a/a/g;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/e/a/a/a/a/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 83
    iget-object v0, p0, Lcom/e/a/a/a/a/a/c;->b:Lcom/e/a/a/a/a/a/b;

    iget-object v0, v0, Lcom/e/a/a/a/a/a/b;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/e/a/a/a/a/a/c;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method
