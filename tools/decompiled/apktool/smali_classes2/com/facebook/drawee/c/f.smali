.class Lcom/facebook/drawee/c/f;
.super Ljava/lang/Object;
.source "AbstractDraweeControllerBuilder.java"

# interfaces
.implements Lcom/facebook/d/d/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/d/d/m",
        "<",
        "Lcom/facebook/e/f",
        "<TIMAGE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/facebook/drawee/c/g;

.field final synthetic d:Lcom/facebook/drawee/c/d;


# direct methods
.method constructor <init>(Lcom/facebook/drawee/c/d;Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/drawee/c/g;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/facebook/drawee/c/f;->d:Lcom/facebook/drawee/c/d;

    iput-object p2, p0, Lcom/facebook/drawee/c/f;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/facebook/drawee/c/f;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/facebook/drawee/c/f;->c:Lcom/facebook/drawee/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/e/f;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/e/f",
            "<TIMAGE;>;"
        }
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lcom/facebook/drawee/c/f;->d:Lcom/facebook/drawee/c/d;

    iget-object v1, p0, Lcom/facebook/drawee/c/f;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/drawee/c/f;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/drawee/c/f;->c:Lcom/facebook/drawee/c/g;

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/drawee/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/drawee/c/g;)Lcom/facebook/e/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/facebook/drawee/c/f;->a()Lcom/facebook/e/f;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 389
    invoke-static {p0}, Lcom/facebook/d/d/g;->a(Ljava/lang/Object;)Lcom/facebook/d/d/i;

    move-result-object v0

    const-string/jumbo v1, "request"

    iget-object v2, p0, Lcom/facebook/drawee/c/f;->a:Ljava/lang/Object;

    .line 390
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/d/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/d/d/i;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Lcom/facebook/d/d/i;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    return-object v0
.end method
