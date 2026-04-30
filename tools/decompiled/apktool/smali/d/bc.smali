.class final Ld/bc;
.super Ld/az;
.source "RequestBody.java"


# instance fields
.field final synthetic a:Ld/an;

.field final synthetic b:Ljava/io/File;


# direct methods
.method constructor <init>(Ld/an;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Ld/bc;->a:Ld/an;

    iput-object p2, p0, Ld/bc;->b:Ljava/io/File;

    invoke-direct {p0}, Ld/az;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Ld/bc;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Ld/an;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Ld/bc;->a:Ld/an;

    return-object v0
.end method

.method public writeTo(Le/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 119
    :try_start_0
    iget-object v0, p0, Ld/bc;->b:Ljava/io/File;

    invoke-static {v0}, Le/q;->a(Ljava/io/File;)Le/ab;

    move-result-object v1

    .line 120
    invoke-interface {p1, v1}, Le/i;->a(Le/ab;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-static {v1}, Ld/a/c;->a(Ljava/io/Closeable;)V

    .line 124
    return-void

    .line 122
    :catchall_0
    move-exception v0

    invoke-static {v1}, Ld/a/c;->a(Ljava/io/Closeable;)V

    throw v0
.end method
