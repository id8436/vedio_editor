.class public Lcom/b/a/d/d/d/f;
.super Ljava/lang/Object;
.source "GifDrawableTransformation.java"

# interfaces
.implements Lcom/b/a/d/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/d/g",
        "<",
        "Lcom/b/a/d/d/d/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/g",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/b/a/d/b/a/e;


# direct methods
.method public constructor <init>(Lcom/b/a/d/g;Lcom/b/a/d/b/a/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/g",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/b/a/d/b/a/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/b/a/d/d/d/f;->a:Lcom/b/a/d/g;

    .line 20
    iput-object p2, p0, Lcom/b/a/d/d/d/f;->b:Lcom/b/a/d/b/a/e;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/d/b/z;II)Lcom/b/a/d/b/z;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/b/z",
            "<",
            "Lcom/b/a/d/d/d/b;",
            ">;II)",
            "Lcom/b/a/d/b/z",
            "<",
            "Lcom/b/a/d/d/d/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-interface {p1}, Lcom/b/a/d/b/z;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/d/d/d/b;

    .line 31
    invoke-interface {p1}, Lcom/b/a/d/b/z;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/d/d/d/b;

    invoke-virtual {v1}, Lcom/b/a/d/d/d/b;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 32
    new-instance v1, Lcom/b/a/d/d/a/c;

    iget-object v3, p0, Lcom/b/a/d/d/d/f;->b:Lcom/b/a/d/b/a/e;

    invoke-direct {v1, v2, v3}, Lcom/b/a/d/d/a/c;-><init>(Landroid/graphics/Bitmap;Lcom/b/a/d/b/a/e;)V

    .line 33
    iget-object v3, p0, Lcom/b/a/d/d/d/f;->a:Lcom/b/a/d/g;

    invoke-interface {v3, v1, p2, p3}, Lcom/b/a/d/g;->a(Lcom/b/a/d/b/z;II)Lcom/b/a/d/b/z;

    move-result-object v1

    .line 34
    invoke-interface {v1}, Lcom/b/a/d/b/z;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    new-instance p1, Lcom/b/a/d/d/d/e;

    new-instance v2, Lcom/b/a/d/d/d/b;

    iget-object v3, p0, Lcom/b/a/d/d/d/f;->a:Lcom/b/a/d/g;

    invoke-direct {v2, v0, v1, v3}, Lcom/b/a/d/d/d/b;-><init>(Lcom/b/a/d/d/d/b;Landroid/graphics/Bitmap;Lcom/b/a/d/g;)V

    invoke-direct {p1, v2}, Lcom/b/a/d/d/d/e;-><init>(Lcom/b/a/d/d/d/b;)V

    .line 38
    :cond_0
    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/b/a/d/d/d/f;->a:Lcom/b/a/d/g;

    invoke-interface {v0}, Lcom/b/a/d/g;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
