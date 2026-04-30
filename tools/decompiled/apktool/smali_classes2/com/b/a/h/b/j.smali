.class Lcom/b/a/h/b/j;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SquaringDrawable.java"


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final b:I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;I)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/b/a/h/b/j;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 219
    iput p2, p0, Lcom/b/a/h/b/j;->b:I

    .line 220
    return-void
.end method

.method constructor <init>(Lcom/b/a/h/b/j;)V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p1, Lcom/b/a/h/b/j;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    iget v1, p1, Lcom/b/a/h/b/j;->b:I

    invoke-direct {p0, v0, v1}, Lcom/b/a/h/b/j;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;I)V

    .line 215
    return-void
.end method

.method static synthetic a(Lcom/b/a/h/b/j;)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/b/a/h/b/j;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    return-object v0
.end method

.method static synthetic b(Lcom/b/a/h/b/j;)I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/b/a/h/b/j;->b:I

    return v0
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/b/a/h/b/j;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 229
    new-instance v0, Lcom/b/a/h/b/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/b/a/h/b/i;-><init>(Lcom/b/a/h/b/j;Lcom/b/a/d/d/b/b;Landroid/content/res/Resources;)V

    return-object v0
.end method
