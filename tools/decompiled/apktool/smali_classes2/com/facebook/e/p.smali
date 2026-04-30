.class Lcom/facebook/e/p;
.super Ljava/lang/Object;
.source "IncreasingQualityDataSourceSupplier.java"

# interfaces
.implements Lcom/facebook/e/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/e/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/e/o;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/facebook/e/o;I)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/facebook/e/p;->a:Lcom/facebook/e/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput p2, p0, Lcom/facebook/e/p;->b:I

    .line 226
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/e/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/e/f",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 230
    invoke-interface {p1}, Lcom/facebook/e/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/facebook/e/p;->a:Lcom/facebook/e/o;

    iget v1, p0, Lcom/facebook/e/p;->b:I

    invoke-static {v0, v1, p1}, Lcom/facebook/e/o;->a(Lcom/facebook/e/o;ILcom/facebook/e/f;)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-interface {p1}, Lcom/facebook/e/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/facebook/e/p;->a:Lcom/facebook/e/o;

    iget v1, p0, Lcom/facebook/e/p;->b:I

    invoke-static {v0, v1, p1}, Lcom/facebook/e/o;->b(Lcom/facebook/e/o;ILcom/facebook/e/f;)V

    goto :goto_0
.end method

.method public b(Lcom/facebook/e/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/e/f",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/facebook/e/p;->a:Lcom/facebook/e/o;

    iget v1, p0, Lcom/facebook/e/p;->b:I

    invoke-static {v0, v1, p1}, Lcom/facebook/e/o;->b(Lcom/facebook/e/o;ILcom/facebook/e/f;)V

    .line 240
    return-void
.end method

.method public c(Lcom/facebook/e/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/e/f",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 244
    return-void
.end method

.method public d(Lcom/facebook/e/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/e/f",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 248
    iget v0, p0, Lcom/facebook/e/p;->b:I

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/facebook/e/p;->a:Lcom/facebook/e/o;

    invoke-interface {p1}, Lcom/facebook/e/f;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/e/o;->a(F)Z

    .line 251
    :cond_0
    return-void
.end method
