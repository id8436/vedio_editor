.class final Ld/bb;
.super Ld/az;
.source "RequestBody.java"


# instance fields
.field final synthetic a:Ld/an;

.field final synthetic b:I

.field final synthetic c:[B

.field final synthetic d:I


# direct methods
.method constructor <init>(Ld/an;I[BI)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Ld/bb;->a:Ld/an;

    iput p2, p0, Ld/bb;->b:I

    iput-object p3, p0, Ld/bb;->c:[B

    iput p4, p0, Ld/bb;->d:I

    invoke-direct {p0}, Ld/az;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 94
    iget v0, p0, Ld/bb;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Ld/an;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Ld/bb;->a:Ld/an;

    return-object v0
.end method

.method public writeTo(Le/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Ld/bb;->c:[B

    iget v1, p0, Ld/bb;->d:I

    iget v2, p0, Ld/bb;->b:I

    invoke-interface {p1, v0, v1, v2}, Le/i;->c([BII)Le/i;

    .line 99
    return-void
.end method
