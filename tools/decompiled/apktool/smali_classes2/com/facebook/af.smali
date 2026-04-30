.class final Lcom/facebook/af;
.super Ljava/lang/Object;
.source "GraphRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/facebook/ap;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/facebook/ap;)V
    .locals 0

    .prologue
    .line 1365
    iput-object p1, p0, Lcom/facebook/af;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/facebook/af;->b:Lcom/facebook/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/facebook/af;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1368
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/facebook/ai;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/as;

    invoke-interface {v1, v0}, Lcom/facebook/ai;->a(Lcom/facebook/as;)V

    goto :goto_0

    .line 1371
    :cond_0
    iget-object v0, p0, Lcom/facebook/af;->b:Lcom/facebook/ap;

    invoke-virtual {v0}, Lcom/facebook/ap;->e()Ljava/util/List;

    move-result-object v0

    .line 1372
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/aq;

    .line 1373
    iget-object v2, p0, Lcom/facebook/af;->b:Lcom/facebook/ap;

    invoke-interface {v0, v2}, Lcom/facebook/aq;->a(Lcom/facebook/ap;)V

    goto :goto_1

    .line 1375
    :cond_1
    return-void
.end method
