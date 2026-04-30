.class Lcom/b/a/d/d/e/e;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResourceDecoder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/b/a/d/d/a/q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Lcom/b/a/d/d/a/p;

    invoke-direct {v0, p1}, Lcom/b/a/d/d/a/p;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/b/a/d/d/a/p;->b()Lcom/b/a/d/d/a/q;

    move-result-object v0

    return-object v0
.end method
