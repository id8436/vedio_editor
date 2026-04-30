.class final Ld/a/a/h;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:[J

.field final c:[Ljava/io/File;

.field final d:[Ljava/io/File;

.field e:Z

.field f:Ld/a/a/g;

.field g:J


# virtual methods
.method a(Le/i;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1010
    iget-object v1, p0, Ld/a/a/h;->b:[J

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-wide v4, v1, v0

    .line 1011
    const/16 v3, 0x20

    invoke-interface {p1, v3}, Le/i;->i(I)Le/i;

    move-result-object v3

    invoke-interface {v3, v4, v5}, Le/i;->l(J)Le/i;

    .line 1010
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1013
    :cond_0
    return-void
.end method
