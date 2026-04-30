.class Lcom/facebook/drawee/e/b;
.super Ljava/lang/Object;
.source "ArrayDrawable.java"

# interfaces
.implements Lcom/facebook/drawee/e/d;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/facebook/drawee/e/a;


# direct methods
.method constructor <init>(Lcom/facebook/drawee/e/a;I)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/facebook/drawee/e/b;->b:Lcom/facebook/drawee/e/a;

    iput p2, p0, Lcom/facebook/drawee/e/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/facebook/drawee/e/b;->b:Lcom/facebook/drawee/e/a;

    iget v1, p0, Lcom/facebook/drawee/e/b;->a:I

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/e/a;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/facebook/drawee/e/b;->b:Lcom/facebook/drawee/e/a;

    iget v1, p0, Lcom/facebook/drawee/e/b;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/facebook/drawee/e/a;->a(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
