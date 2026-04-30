.class public Lcom/b/a/d/d/a/k;
.super Ljava/lang/Object;
.source "FileDescriptorBitmapDecoder.java"

# interfaces
.implements Lcom/b/a/d/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/d/e",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/d/d/a/aa;

.field private final b:Lcom/b/a/d/b/a/e;

.field private c:Lcom/b/a/d/a;


# direct methods
.method public constructor <init>(Lcom/b/a/d/b/a/e;Lcom/b/a/d/a;)V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/b/a/d/d/a/aa;

    invoke-direct {v0}, Lcom/b/a/d/d/a/aa;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/b/a/d/d/a/k;-><init>(Lcom/b/a/d/d/a/aa;Lcom/b/a/d/b/a/e;Lcom/b/a/d/a;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/b/a/d/d/a/aa;Lcom/b/a/d/b/a/e;Lcom/b/a/d/a;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/b/a/d/d/a/k;->a:Lcom/b/a/d/d/a/aa;

    .line 39
    iput-object p2, p0, Lcom/b/a/d/d/a/k;->b:Lcom/b/a/d/b/a/e;

    .line 40
    iput-object p3, p0, Lcom/b/a/d/d/a/k;->c:Lcom/b/a/d/a;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Landroid/os/ParcelFileDescriptor;II)Lcom/b/a/d/b/z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "II)",
            "Lcom/b/a/d/b/z",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/b/a/d/d/a/k;->a:Lcom/b/a/d/d/a/aa;

    iget-object v2, p0, Lcom/b/a/d/d/a/k;->b:Lcom/b/a/d/b/a/e;

    iget-object v5, p0, Lcom/b/a/d/d/a/k;->c:Lcom/b/a/d/a;

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/b/a/d/d/a/aa;->a(Landroid/os/ParcelFileDescriptor;Lcom/b/a/d/b/a/e;IILcom/b/a/d/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/b/a/d/d/a/k;->b:Lcom/b/a/d/b/a/e;

    invoke-static {v0, v1}, Lcom/b/a/d/d/a/c;->a(Landroid/graphics/Bitmap;Lcom/b/a/d/b/a/e;)Lcom/b/a/d/d/a/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/b/a/d/b/z;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/b/a/d/d/a/k;->a(Landroid/os/ParcelFileDescriptor;II)Lcom/b/a/d/b/z;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "FileDescriptorBitmapDecoder.com.bumptech.glide.load.data.bitmap"

    return-object v0
.end method
