.class Lcom/facebook/drawee/a/a/e;
.super Ljava/lang/Object;
.source "PipelineDraweeController.java"

# interfaces
.implements Lcom/facebook/drawee/a/a/a;


# instance fields
.field final synthetic a:Lcom/facebook/drawee/a/a/d;


# direct methods
.method constructor <init>(Lcom/facebook/drawee/a/a/d;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/facebook/drawee/a/a/e;->a:Lcom/facebook/drawee/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/h/b;)Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/facebook/imagepipeline/h/b;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 79
    instance-of v0, p1, Lcom/facebook/imagepipeline/h/c;

    if-eqz v0, :cond_2

    .line 80
    check-cast p1, Lcom/facebook/imagepipeline/h/c;

    .line 81
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/facebook/drawee/a/a/e;->a:Lcom/facebook/drawee/a/a/d;

    .line 82
    invoke-static {v0}, Lcom/facebook/drawee/a/a/d;->a(Lcom/facebook/drawee/a/a/d;)Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/c;->e()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 84
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/c;->h()I

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/c;->h()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 93
    :goto_0
    return-object v0

    .line 88
    :cond_1
    new-instance v0, Lcom/facebook/drawee/e/j;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/c;->h()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/e/j;-><init>(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/facebook/drawee/a/a/e;->a:Lcom/facebook/drawee/a/a/d;

    invoke-static {v0}, Lcom/facebook/drawee/a/a/d;->b(Lcom/facebook/drawee/a/a/d;)Lcom/facebook/imagepipeline/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/facebook/drawee/a/a/e;->a:Lcom/facebook/drawee/a/a/d;

    invoke-static {v0}, Lcom/facebook/drawee/a/a/d;->b(Lcom/facebook/drawee/a/a/d;)Lcom/facebook/imagepipeline/a/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/a/a/a;->a(Lcom/facebook/imagepipeline/h/b;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
