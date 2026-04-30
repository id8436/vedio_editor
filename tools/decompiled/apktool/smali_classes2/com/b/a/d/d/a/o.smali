.class public Lcom/b/a/d/d/a/o;
.super Lcom/b/a/d/d/b/a;
.source "GlideBitmapDrawableResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/d/d/b/a",
        "<",
        "Lcom/b/a/d/d/a/m;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/b/a/d/b/a/e;


# direct methods
.method public constructor <init>(Lcom/b/a/d/d/a/m;Lcom/b/a/d/b/a/e;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/b/a/d/d/b/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iput-object p2, p0, Lcom/b/a/d/d/a/o;->b:Lcom/b/a/d/b/a/e;

    .line 16
    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/b/a/d/d/a/o;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/b/a/d/d/a/m;

    invoke-virtual {v0}, Lcom/b/a/d/d/a/m;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/j/h;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 25
    iget-object v1, p0, Lcom/b/a/d/d/a/o;->b:Lcom/b/a/d/b/a/e;

    iget-object v0, p0, Lcom/b/a/d/d/a/o;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/b/a/d/d/a/m;

    invoke-virtual {v0}, Lcom/b/a/d/d/a/m;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/b/a/d/b/a/e;->a(Landroid/graphics/Bitmap;)Z

    .line 26
    return-void
.end method
