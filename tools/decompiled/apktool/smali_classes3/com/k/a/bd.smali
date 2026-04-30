.class Lcom/k/a/bd;
.super Lcom/k/a/bb;
.source "ResourceRequestHandler.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/k/a/bb;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/k/a/bd;->a:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private static a(Landroid/content/res/Resources;ILcom/k/a/ax;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 49
    invoke-static {p2}, Lcom/k/a/bd;->c(Lcom/k/a/ax;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/k/a/bd;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 52
    iget v1, p2, Lcom/k/a/ax;->h:I

    iget v2, p2, Lcom/k/a/ax;->i:I

    invoke-static {v1, v2, v0, p2}, Lcom/k/a/bd;->a(IILandroid/graphics/BitmapFactory$Options;Lcom/k/a/ax;)V

    .line 54
    :cond_0
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/k/a/ax;I)Lcom/k/a/bc;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/k/a/bd;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/k/a/bm;->a(Landroid/content/Context;Lcom/k/a/ax;)Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    invoke-static {v0, p1}, Lcom/k/a/bm;->a(Landroid/content/res/Resources;Lcom/k/a/ax;)I

    move-result v1

    .line 45
    new-instance v2, Lcom/k/a/bc;

    invoke-static {v0, v1, p1}, Lcom/k/a/bd;->a(Landroid/content/res/Resources;ILcom/k/a/ax;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Lcom/k/a/aq;->b:Lcom/k/a/aq;

    invoke-direct {v2, v0, v1}, Lcom/k/a/bc;-><init>(Landroid/graphics/Bitmap;Lcom/k/a/aq;)V

    return-object v2
.end method

.method public a(Lcom/k/a/ax;)Z
    .locals 2

    .prologue
    .line 35
    iget v0, p1, Lcom/k/a/ax;->e:I

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x1

    .line 39
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "android.resource"

    iget-object v1, p1, Lcom/k/a/ax;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
