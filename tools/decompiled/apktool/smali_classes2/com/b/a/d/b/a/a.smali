.class Lcom/b/a/d/b/a/a;
.super Ljava/lang/Object;
.source "AttributeStrategy.java"

# interfaces
.implements Lcom/b/a/d/b/a/m;


# instance fields
.field private final a:Lcom/b/a/d/b/a/c;

.field private final b:Lcom/b/a/d/b/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/b/a/g",
            "<",
            "Lcom/b/a/d/b/a/b;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/b/a/d/b/a/c;

    invoke-direct {v0}, Lcom/b/a/d/b/a/c;-><init>()V

    iput-object v0, p0, Lcom/b/a/d/b/a/a;->a:Lcom/b/a/d/b/a/c;

    .line 12
    new-instance v0, Lcom/b/a/d/b/a/g;

    invoke-direct {v0}, Lcom/b/a/d/b/a/g;-><init>()V

    iput-object v0, p0, Lcom/b/a/d/b/a/a;->b:Lcom/b/a/d/b/a/g;

    .line 75
    return-void
.end method

.method static synthetic c(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/b/a/d/b/a/a;->d(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/a/d/b/a/a;->d(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/b/a/d/b/a/a;->b:Lcom/b/a/d/b/a/g;

    invoke-virtual {v0}, Lcom/b/a/d/b/a/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/b/a/d/b/a/a;->a:Lcom/b/a/d/b/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/b/a/d/b/a/c;->a(IILandroid/graphics/Bitmap$Config;)Lcom/b/a/d/b/a/b;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/b/a/d/b/a/a;->b:Lcom/b/a/d/b/a/g;

    invoke-virtual {v1, v0}, Lcom/b/a/d/b/a/g;->a(Lcom/b/a/d/b/a/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 15
    iget-object v0, p0, Lcom/b/a/d/b/a/a;->a:Lcom/b/a/d/b/a/c;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/b/a/d/b/a/c;->a(IILandroid/graphics/Bitmap$Config;)Lcom/b/a/d/b/a/b;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/b/a/d/b/a/a;->b:Lcom/b/a/d/b/a/g;

    invoke-virtual {v1, v0, p1}, Lcom/b/a/d/b/a/g;->a(Lcom/b/a/d/b/a/n;Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public b(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-static {p1, p2, p3}, Lcom/b/a/d/b/a/a;->d(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-static {p1}, Lcom/b/a/d/b/a/a;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/graphics/Bitmap;)I
    .locals 1

    .prologue
    .line 44
    invoke-static {p1}, Lcom/b/a/j/h;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AttributeStrategy:\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/d/b/a/a;->b:Lcom/b/a/d/b/a/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
