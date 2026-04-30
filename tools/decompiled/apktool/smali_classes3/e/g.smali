.class Le/g;
.super Ljava/io/OutputStream;
.source "Buffer.java"


# instance fields
.field final synthetic a:Le/f;


# direct methods
.method constructor <init>(Le/f;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Le/g;->a:Le/f;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le/g;->a:Le/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Le/g;->a:Le/f;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Le/f;->b(I)Le/f;

    .line 75
    return-void
.end method

.method public write([BII)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Le/g;->a:Le/f;

    invoke-virtual {v0, p1, p2, p3}, Le/f;->b([BII)Le/f;

    .line 79
    return-void
.end method
