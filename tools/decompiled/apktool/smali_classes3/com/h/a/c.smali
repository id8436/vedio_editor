.class public Lcom/h/a/c;
.super Ljava/lang/Object;
.source "TypefaceCollection.java"


# instance fields
.field private a:Landroid/graphics/Typeface;

.field private b:Lcom/h/a/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/h/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/h/a/a;-><init>(Lcom/h/a/b;)V

    iput-object v0, p0, Lcom/h/a/c;->b:Lcom/h/a/a;

    return-void
.end method


# virtual methods
.method public a()Lcom/h/a/a;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    iget-object v0, p0, Lcom/h/a/c;->a:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "At least one typeface style have to be set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/h/a/c;->b:Lcom/h/a/a;

    invoke-static {v0}, Lcom/h/a/a;->a(Lcom/h/a/a;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/h/a/c;->b:Lcom/h/a/a;

    invoke-static {v0}, Lcom/h/a/a;->a(Lcom/h/a/a;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/h/a/c;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/h/a/c;->b:Lcom/h/a/a;

    invoke-static {v0}, Lcom/h/a/a;->a(Lcom/h/a/a;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/h/a/c;->b:Lcom/h/a/a;

    invoke-static {v0}, Lcom/h/a/a;->a(Lcom/h/a/a;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/h/a/c;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/h/a/c;->b:Lcom/h/a/a;

    invoke-static {v0}, Lcom/h/a/a;->a(Lcom/h/a/a;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/h/a/c;->b:Lcom/h/a/a;

    invoke-static {v0}, Lcom/h/a/a;->a(Lcom/h/a/a;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/h/a/c;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/h/a/c;->b:Lcom/h/a/a;

    invoke-static {v0}, Lcom/h/a/a;->a(Lcom/h/a/a;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 76
    iget-object v0, p0, Lcom/h/a/c;->b:Lcom/h/a/a;

    invoke-static {v0}, Lcom/h/a/a;->a(Lcom/h/a/a;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/h/a/c;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    :cond_4
    iget-object v0, p0, Lcom/h/a/c;->b:Lcom/h/a/a;

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/h/a/c;->b:Lcom/h/a/a;

    .line 81
    return-object v0
.end method

.method public a(ILandroid/graphics/Typeface;)Lcom/h/a/c;
    .locals 1

    .prologue
    .line 42
    invoke-static {p1}, Lcom/h/a/a;->b(I)V

    .line 43
    iget-object v0, p0, Lcom/h/a/c;->a:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 44
    iput-object p2, p0, Lcom/h/a/c;->a:Landroid/graphics/Typeface;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/h/a/c;->b:Lcom/h/a/a;

    invoke-static {v0}, Lcom/h/a/a;->a(Lcom/h/a/a;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    return-object p0
.end method
