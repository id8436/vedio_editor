.class final Ld/ba;
.super Ld/az;
.source "RequestBody.java"


# instance fields
.field final synthetic a:Ld/an;

.field final synthetic b:Le/k;


# direct methods
.method constructor <init>(Ld/an;Le/k;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Ld/ba;->a:Ld/an;

    iput-object p2, p0, Ld/ba;->b:Le/k;

    invoke-direct {p0}, Ld/az;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Ld/ba;->b:Le/k;

    invoke-virtual {v0}, Le/k;->g()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Ld/an;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Ld/ba;->a:Ld/an;

    return-object v0
.end method

.method public writeTo(Le/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Ld/ba;->b:Le/k;

    invoke-interface {p1, v0}, Le/i;->b(Le/k;)Le/i;

    .line 74
    return-void
.end method
