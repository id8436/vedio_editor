.class final Lf/w;
.super Ld/bf;
.source "OkHttpCall.java"


# instance fields
.field a:Ljava/io/IOException;

.field private final b:Ld/bf;


# direct methods
.method constructor <init>(Ld/bf;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Ld/bf;-><init>()V

    .line 276
    iput-object p1, p0, Lf/w;->b:Ld/bf;

    .line 277
    return-void
.end method


# virtual methods
.method public a()Ld/an;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lf/w;->b:Ld/bf;

    invoke-virtual {v0}, Ld/bf;->a()Ld/an;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lf/w;->b:Ld/bf;

    invoke-virtual {v0}, Ld/bf;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lf/w;->b:Ld/bf;

    invoke-virtual {v0}, Ld/bf;->close()V

    .line 302
    return-void
.end method

.method public d()Le/j;
    .locals 2

    .prologue
    .line 288
    new-instance v0, Lf/x;

    iget-object v1, p0, Lf/w;->b:Ld/bf;

    invoke-virtual {v1}, Ld/bf;->d()Le/j;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lf/x;-><init>(Lf/w;Le/ab;)V

    invoke-static {v0}, Le/q;->a(Le/ab;)Le/j;

    move-result-object v0

    return-object v0
.end method

.method g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lf/w;->a:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lf/w;->a:Ljava/io/IOException;

    throw v0

    .line 308
    :cond_0
    return-void
.end method
