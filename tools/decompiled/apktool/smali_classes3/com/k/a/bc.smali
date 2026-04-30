.class public final Lcom/k/a/bc;
.super Ljava/lang/Object;
.source "RequestHandler.java"


# instance fields
.field private final a:Lcom/k/a/aq;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Ljava/io/InputStream;

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/k/a/aq;)V
    .locals 3

    .prologue
    .line 58
    const-string/jumbo v0, "bitmap == null"

    invoke-static {p1, v0}, Lcom/k/a/bm;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/k/a/bc;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/k/a/aq;I)V

    .line 59
    return-void
.end method

.method constructor <init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/k/a/aq;I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    xor-int/2addr v0, v2

    if-nez v0, :cond_2

    .line 67
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v2, v1

    .line 66
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 69
    :cond_2
    iput-object p1, p0, Lcom/k/a/bc;->b:Landroid/graphics/Bitmap;

    .line 70
    iput-object p2, p0, Lcom/k/a/bc;->c:Ljava/io/InputStream;

    .line 71
    const-string/jumbo v0, "loadedFrom == null"

    invoke-static {p3, v0}, Lcom/k/a/bm;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/k/a/aq;

    iput-object v0, p0, Lcom/k/a/bc;->a:Lcom/k/a/aq;

    .line 72
    iput p4, p0, Lcom/k/a/bc;->d:I

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/k/a/aq;)V
    .locals 3

    .prologue
    .line 62
    const/4 v1, 0x0

    const-string/jumbo v0, "stream == null"

    invoke-static {p1, v0}, Lcom/k/a/bm;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, p2, v2}, Lcom/k/a/bc;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/k/a/aq;I)V

    .line 63
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/k/a/bc;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/k/a/bc;->c:Ljava/io/InputStream;

    return-object v0
.end method

.method public c()Lcom/k/a/aq;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/k/a/bc;->a:Lcom/k/a/aq;

    return-object v0
.end method

.method d()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/k/a/bc;->d:I

    return v0
.end method
