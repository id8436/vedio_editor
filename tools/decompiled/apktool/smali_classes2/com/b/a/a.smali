.class public Lcom/b/a/a;
.super Lcom/b/a/e;
.source "BitmapRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/b/a/e",
        "<TModelType;",
        "Lcom/b/a/d/c/j;",
        "Landroid/graphics/Bitmap;",
        "TTranscodeType;>;"
    }
.end annotation


# instance fields
.field private final g:Lcom/b/a/d/b/a/e;

.field private h:Lcom/b/a/d/d/a/f;

.field private i:Lcom/b/a/d/a;

.field private j:Lcom/b/a/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/e",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/b/a/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/e",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/b/a/g/f;Ljava/lang/Class;Lcom/b/a/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/g/f",
            "<TModelType;",
            "Lcom/b/a/d/c/j;",
            "Landroid/graphics/Bitmap;",
            "TTranscodeType;>;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;",
            "Lcom/b/a/e",
            "<TModelType;***>;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/e;-><init>(Lcom/b/a/g/f;Ljava/lang/Class;Lcom/b/a/e;)V

    .line 55
    sget-object v0, Lcom/b/a/d/d/a/f;->a:Lcom/b/a/d/d/a/f;

    iput-object v0, p0, Lcom/b/a/a;->h:Lcom/b/a/d/d/a/f;

    .line 63
    iget-object v0, p3, Lcom/b/a/e;->c:Lcom/b/a/h;

    invoke-virtual {v0}, Lcom/b/a/h;->a()Lcom/b/a/d/b/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a;->g:Lcom/b/a/d/b/a/e;

    .line 64
    iget-object v0, p3, Lcom/b/a/e;->c:Lcom/b/a/h;

    invoke-virtual {v0}, Lcom/b/a/h;->g()Lcom/b/a/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a;->i:Lcom/b/a/d/a;

    .line 66
    new-instance v0, Lcom/b/a/d/d/a/y;

    iget-object v1, p0, Lcom/b/a/a;->g:Lcom/b/a/d/b/a/e;

    iget-object v2, p0, Lcom/b/a/a;->i:Lcom/b/a/d/a;

    invoke-direct {v0, v1, v2}, Lcom/b/a/d/d/a/y;-><init>(Lcom/b/a/d/b/a/e;Lcom/b/a/d/a;)V

    iput-object v0, p0, Lcom/b/a/a;->j:Lcom/b/a/d/e;

    .line 67
    new-instance v0, Lcom/b/a/d/d/a/k;

    iget-object v1, p0, Lcom/b/a/a;->g:Lcom/b/a/d/b/a/e;

    iget-object v2, p0, Lcom/b/a/a;->i:Lcom/b/a/d/a;

    invoke-direct {v0, v1, v2}, Lcom/b/a/d/d/a/k;-><init>(Lcom/b/a/d/b/a/e;Lcom/b/a/d/a;)V

    iput-object v0, p0, Lcom/b/a/a;->k:Lcom/b/a/d/e;

    .line 68
    return-void
.end method


# virtual methods
.method public a()Lcom/b/a/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 283
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/b/a/d/d/a/d;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/b/a/a;->c:Lcom/b/a/h;

    invoke-virtual {v2}, Lcom/b/a/h;->c()Lcom/b/a/d/d/a/e;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/b/a/a;->a([Lcom/b/a/d/d/a/d;)Lcom/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method public a(II)Lcom/b/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/b/a/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 525
    invoke-super {p0, p1, p2}, Lcom/b/a/e;->b(II)Lcom/b/a/e;

    .line 526
    return-object p0
.end method

.method public a(Lcom/b/a/d/b/e;)Lcom/b/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/b/e;",
            ")",
            "Lcom/b/a/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 516
    invoke-super {p0, p1}, Lcom/b/a/e;->b(Lcom/b/a/d/b/e;)Lcom/b/a/e;

    .line 517
    return-object p0
.end method

.method public a(Lcom/b/a/d/b;)Lcom/b/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/b",
            "<",
            "Lcom/b/a/d/c/j;",
            ">;)",
            "Lcom/b/a/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 544
    invoke-super {p0, p1}, Lcom/b/a/e;->b(Lcom/b/a/d/b;)Lcom/b/a/e;

    .line 545
    return-object p0
.end method

.method public a(Lcom/b/a/d/c;)Lcom/b/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/c;",
            ")",
            "Lcom/b/a/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 559
    invoke-super {p0, p1}, Lcom/b/a/e;->b(Lcom/b/a/d/c;)Lcom/b/a/e;

    .line 560
    return-object p0
.end method

.method public a(Lcom/b/a/d/e;)Lcom/b/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/e",
            "<",
            "Lcom/b/a/d/c/j;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/b/a/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/b/a/e;->b(Lcom/b/a/d/e;)Lcom/b/a/e;

    .line 175
    return-object p0
.end method

.method public a(Lcom/b/a/h/a/f;)Lcom/b/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/h/a/f",
            "<TTranscodeType;>;)",
            "Lcom/b/a/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 440
    invoke-super {p0, p1}, Lcom/b/a/e;->b(Lcom/b/a/h/a/f;)Lcom/b/a/e;

    .line 441
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/b/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/b/a/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 565
    invoke-super {p0, p1}, Lcom/b/a/e;->b(Ljava/lang/Object;)Lcom/b/a/e;

    .line 566
    return-object p0
.end method

.method public a(Z)Lcom/b/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/b/a/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 507
    invoke-super {p0, p1}, Lcom/b/a/e;->b(Z)Lcom/b/a/e;

    .line 508
    return-object p0
.end method

.method public varargs a([Lcom/b/a/d/d/a/d;)Lcom/b/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/b/a/d/d/a/d;",
            ")",
            "Lcom/b/a/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 269
    invoke-super {p0, p1}, Lcom/b/a/e;->b([Lcom/b/a/d/g;)Lcom/b/a/e;

    .line 270
    return-object p0
.end method

.method public varargs a([Lcom/b/a/d/g;)Lcom/b/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/b/a/d/g",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/b/a/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 307
    invoke-super {p0, p1}, Lcom/b/a/e;->b([Lcom/b/a/d/g;)Lcom/b/a/e;

    .line 308
    return-object p0
.end method

.method public a(Landroid/widget/ImageView;)Lcom/b/a/h/b/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/b/a/h/b/k",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 588
    invoke-super {p0, p1}, Lcom/b/a/e;->a(Landroid/widget/ImageView;)Lcom/b/a/h/b/k;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/b/a/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 296
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/b/a/d/d/a/d;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/b/a/a;->c:Lcom/b/a/h;

    invoke-virtual {v2}, Lcom/b/a/h;->d()Lcom/b/a/d/d/a/l;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/b/a/a;->a([Lcom/b/a/d/d/a/d;)Lcom/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(II)Lcom/b/a/e;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/b/a/a;->a(II)Lcom/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/b/a/d/b/e;)Lcom/b/a/e;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/b/a/a;->a(Lcom/b/a/d/b/e;)Lcom/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/b/a/d/b;)Lcom/b/a/e;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/b/a/a;->a(Lcom/b/a/d/b;)Lcom/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/b/a/d/c;)Lcom/b/a/e;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/b/a/a;->a(Lcom/b/a/d/c;)Lcom/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/b/a/d/e;)Lcom/b/a/e;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/b/a/a;->a(Lcom/b/a/d/e;)Lcom/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/b/a/h/a/f;)Lcom/b/a/e;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/b/a/a;->a(Lcom/b/a/h/a/f;)Lcom/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/b/a/e;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/b/a/a;->a(Ljava/lang/Object;)Lcom/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Z)Lcom/b/a/e;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/b/a/a;->a(Z)Lcom/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([Lcom/b/a/d/g;)Lcom/b/a/e;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/b/a/a;->a([Lcom/b/a/d/g;)Lcom/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/b/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/a",
            "<TModelType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 571
    invoke-super {p0}, Lcom/b/a/e;->f()Lcom/b/a/e;

    move-result-object v0

    check-cast v0, Lcom/b/a/a;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/b/a/a;->c()Lcom/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method d()V
    .locals 0

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/b/a/a;->b()Lcom/b/a/a;

    .line 594
    return-void
.end method

.method e()V
    .locals 0

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/b/a/a;->a()Lcom/b/a/a;

    .line 599
    return-void
.end method

.method public synthetic f()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/b/a/a;->c()Lcom/b/a/a;

    move-result-object v0

    return-object v0
.end method
