.class public Lcom/facebook/imagepipeline/d/b;
.super Ljava/lang/Object;
.source "ImageDecodeOptionsBuilder.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0x64

    iput v0, p0, Lcom/facebook/imagepipeline/d/b;->a:I

    .line 24
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/b;->f:Landroid/graphics/Bitmap$Config;

    .line 27
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/facebook/imagepipeline/d/b;->a:I

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/b;->b:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/b;->c:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/b;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/b;->e:Z

    return v0
.end method

.method public f()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/imagepipeline/d/b;->f:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public g()Lcom/facebook/imagepipeline/d/a;
    .locals 1

    .prologue
    .line 174
    new-instance v0, Lcom/facebook/imagepipeline/d/a;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/d/a;-><init>(Lcom/facebook/imagepipeline/d/b;)V

    return-object v0
.end method
