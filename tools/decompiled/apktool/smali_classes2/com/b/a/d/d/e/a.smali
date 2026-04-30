.class public Lcom/b/a/d/d/e/a;
.super Ljava/lang/Object;
.source "GifBitmapWrapper.java"


# instance fields
.field private final a:Lcom/b/a/d/b/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/b/z",
            "<",
            "Lcom/b/a/d/d/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/b/a/d/b/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/b/z",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/b/a/d/b/z;Lcom/b/a/d/b/z;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/b/z",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/b/a/d/b/z",
            "<",
            "Lcom/b/a/d/d/d/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can only contain either a bitmap resource or a gif resource, not both"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must contain either a bitmap resource or a gif resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_1
    iput-object p1, p0, Lcom/b/a/d/d/e/a;->b:Lcom/b/a/d/b/z;

    .line 24
    iput-object p2, p0, Lcom/b/a/d/d/e/a;->a:Lcom/b/a/d/b/z;

    .line 25
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/b/a/d/d/e/a;->b:Lcom/b/a/d/b/z;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/b/a/d/d/e/a;->b:Lcom/b/a/d/b/z;

    invoke-interface {v0}, Lcom/b/a/d/b/z;->c()I

    move-result v0

    .line 34
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/d/d/e/a;->a:Lcom/b/a/d/b/z;

    invoke-interface {v0}, Lcom/b/a/d/b/z;->c()I

    move-result v0

    goto :goto_0
.end method

.method public b()Lcom/b/a/d/b/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d/b/z",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/b/a/d/d/e/a;->b:Lcom/b/a/d/b/z;

    return-object v0
.end method

.method public c()Lcom/b/a/d/b/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/d/b/z",
            "<",
            "Lcom/b/a/d/d/d/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/b/a/d/d/e/a;->a:Lcom/b/a/d/b/z;

    return-object v0
.end method
