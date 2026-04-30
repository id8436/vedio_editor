.class public Lcom/b/a/d/d/e/g;
.super Ljava/lang/Object;
.source "GifBitmapWrapperStreamResourceDecoder.java"

# interfaces
.implements Lcom/b/a/d/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/d/e",
        "<",
        "Ljava/io/InputStream;",
        "Lcom/b/a/d/d/e/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/e",
            "<",
            "Lcom/b/a/d/c/j;",
            "Lcom/b/a/d/d/e/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/b/a/d/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/e",
            "<",
            "Lcom/b/a/d/c/j;",
            "Lcom/b/a/d/d/e/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/b/a/d/d/e/g;->a:Lcom/b/a/d/e;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;II)Lcom/b/a/d/b/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II)",
            "Lcom/b/a/d/b/z",
            "<",
            "Lcom/b/a/d/d/e/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/b/a/d/d/e/g;->a:Lcom/b/a/d/e;

    new-instance v1, Lcom/b/a/d/c/j;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/b/a/d/c/j;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/b/a/d/e;->a(Ljava/lang/Object;II)Lcom/b/a/d/b/z;

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
    .line 14
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/b/a/d/d/e/g;->a(Ljava/io/InputStream;II)Lcom/b/a/d/b/z;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/b/a/d/d/e/g;->a:Lcom/b/a/d/e;

    invoke-interface {v0}, Lcom/b/a/d/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
