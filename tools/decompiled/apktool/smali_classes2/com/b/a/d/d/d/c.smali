.class Lcom/b/a/d/d/d/c;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "GifDrawable.java"


# instance fields
.field a:Lcom/b/a/b/d;

.field b:[B

.field c:Landroid/content/Context;

.field d:Lcom/b/a/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/g",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field f:I

.field g:Lcom/b/a/b/b;

.field h:Lcom/b/a/d/b/a/e;

.field i:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/b/a/b/d;[BLandroid/content/Context;Lcom/b/a/d/g;IILcom/b/a/b/b;Lcom/b/a/d/b/a/e;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/b/d;",
            "[B",
            "Landroid/content/Context;",
            "Lcom/b/a/d/g",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Lcom/b/a/b/b;",
            "Lcom/b/a/d/b/a/e;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 335
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 336
    if-nez p9, :cond_0

    .line 337
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "The first frame of the GIF must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_0
    iput-object p1, p0, Lcom/b/a/d/d/d/c;->a:Lcom/b/a/b/d;

    .line 340
    iput-object p2, p0, Lcom/b/a/d/d/d/c;->b:[B

    .line 341
    iput-object p8, p0, Lcom/b/a/d/d/d/c;->h:Lcom/b/a/d/b/a/e;

    .line 342
    iput-object p9, p0, Lcom/b/a/d/d/d/c;->i:Landroid/graphics/Bitmap;

    .line 343
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d/d/d/c;->c:Landroid/content/Context;

    .line 344
    iput-object p4, p0, Lcom/b/a/d/d/d/c;->d:Lcom/b/a/d/g;

    .line 345
    iput p5, p0, Lcom/b/a/d/d/d/c;->e:I

    .line 346
    iput p6, p0, Lcom/b/a/d/d/d/c;->f:I

    .line 347
    iput-object p7, p0, Lcom/b/a/d/d/d/c;->g:Lcom/b/a/b/b;

    .line 348
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 371
    new-instance v0, Lcom/b/a/d/d/d/b;

    invoke-direct {v0, p0}, Lcom/b/a/d/d/d/b;-><init>(Lcom/b/a/d/d/d/c;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/b/a/d/d/d/c;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
