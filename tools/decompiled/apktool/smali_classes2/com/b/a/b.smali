.class public Lcom/b/a/b;
.super Lcom/b/a/a;
.source "BitmapTypeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/b/a/a",
        "<TModelType;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final g:Lcom/b/a/d/c/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/c/s",
            "<TModelType;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/b/a/d/c/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/c/s",
            "<TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/b/a/h;

.field private final j:Lcom/b/a/q;


# direct methods
.method constructor <init>(Lcom/b/a/e;Lcom/b/a/d/c/s;Lcom/b/a/d/c/s;Lcom/b/a/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/e",
            "<TModelType;***>;",
            "Lcom/b/a/d/c/s",
            "<TModelType;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/b/a/d/c/s",
            "<TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/b/a/q;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p1, Lcom/b/a/e;->c:Lcom/b/a/h;

    const-class v1, Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v0, p2, p3, v1, v2}, Lcom/b/a/b;->a(Lcom/b/a/h;Lcom/b/a/d/c/s;Lcom/b/a/d/c/s;Ljava/lang/Class;Lcom/b/a/d/d/f/c;)Lcom/b/a/g/e;

    move-result-object v0

    const-class v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1, p1}, Lcom/b/a/a;-><init>(Lcom/b/a/g/f;Ljava/lang/Class;Lcom/b/a/e;)V

    .line 54
    iput-object p2, p0, Lcom/b/a/b;->g:Lcom/b/a/d/c/s;

    .line 55
    iput-object p3, p0, Lcom/b/a/b;->h:Lcom/b/a/d/c/s;

    .line 56
    iget-object v0, p1, Lcom/b/a/e;->c:Lcom/b/a/h;

    iput-object v0, p0, Lcom/b/a/b;->i:Lcom/b/a/h;

    .line 57
    iput-object p4, p0, Lcom/b/a/b;->j:Lcom/b/a/q;

    .line 58
    return-void
.end method

.method private static a(Lcom/b/a/h;Lcom/b/a/d/c/s;Lcom/b/a/d/c/s;Ljava/lang/Class;Lcom/b/a/d/d/f/c;)Lcom/b/a/g/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/b/a/h;",
            "Lcom/b/a/d/c/s",
            "<TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/b/a/d/c/s",
            "<TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/b/a/d/d/f/c",
            "<",
            "Landroid/graphics/Bitmap;",
            "TR;>;)",
            "Lcom/b/a/g/e",
            "<TA;",
            "Lcom/b/a/d/c/j;",
            "Landroid/graphics/Bitmap;",
            "TR;>;"
        }
    .end annotation

    .prologue
    .line 33
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    .line 37
    :cond_0
    if-nez p4, :cond_1

    .line 38
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p3}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/b/a/d/d/f/c;

    move-result-object p4

    .line 40
    :cond_1
    const-class v0, Lcom/b/a/d/c/j;

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v1}, Lcom/b/a/h;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/b/a/g/b;

    move-result-object v1

    .line 42
    new-instance v2, Lcom/b/a/d/c/h;

    invoke-direct {v2, p1, p2}, Lcom/b/a/d/c/h;-><init>(Lcom/b/a/d/c/s;Lcom/b/a/d/c/s;)V

    .line 45
    new-instance v0, Lcom/b/a/g/e;

    invoke-direct {v0, v2, p4, v1}, Lcom/b/a/g/e;-><init>(Lcom/b/a/d/c/s;Lcom/b/a/d/d/f/c;Lcom/b/a/g/b;)V

    goto :goto_0
.end method
