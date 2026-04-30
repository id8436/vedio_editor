.class public Lcom/facebook/drawee/a/a/b;
.super Ljava/lang/Object;
.source "DraweeConfig.java"


# instance fields
.field private final a:Lcom/facebook/d/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/d/d",
            "<",
            "Lcom/facebook/drawee/a/a/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lcom/facebook/drawee/a/a/i;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lcom/facebook/d/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/d/m",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public a()Lcom/facebook/d/d/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/d/d/d",
            "<",
            "Lcom/facebook/drawee/a/a/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/drawee/a/a/b;->a:Lcom/facebook/d/d/d;

    return-object v0
.end method

.method public b()Lcom/facebook/drawee/a/a/i;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/drawee/a/a/b;->b:Lcom/facebook/drawee/a/a/i;

    return-object v0
.end method

.method public c()Lcom/facebook/d/d/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/d/d/m",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/drawee/a/a/b;->c:Lcom/facebook/d/d/m;

    return-object v0
.end method
