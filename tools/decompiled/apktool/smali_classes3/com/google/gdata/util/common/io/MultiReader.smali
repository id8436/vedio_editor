.class Lcom/google/gdata/util/common/io/MultiReader;
.super Ljava/io/Reader;
.source "MultiReader.java"


# instance fields
.field private current:Ljava/io/Reader;

.field private final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+",
            "Lcom/google/gdata/util/common/io/InputSupplier",
            "<+",
            "Ljava/io/Reader;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+",
            "Lcom/google/gdata/util/common/io/InputSupplier",
            "<+",
            "Ljava/io/Reader;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/gdata/util/common/io/MultiReader;->it:Ljava/util/Iterator;

    .line 37
    invoke-direct {p0}, Lcom/google/gdata/util/common/io/MultiReader;->advance()V

    .line 38
    return-void
.end method

.method private advance()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/gdata/util/common/io/MultiReader;->close()V

    .line 45
    iget-object v0, p0, Lcom/google/gdata/util/common/io/MultiReader;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/google/gdata/util/common/io/MultiReader;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/common/io/InputSupplier;

    invoke-interface {v0}, Lcom/google/gdata/util/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Reader;

    iput-object v0, p0, Lcom/google/gdata/util/common/io/MultiReader;->current:Ljava/io/Reader;

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/google/gdata/util/common/io/MultiReader;->current:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/util/common/io/MultiReader;->current:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iput-object v1, p0, Lcom/google/gdata/util/common/io/MultiReader;->current:Ljava/io/Reader;

    .line 88
    :cond_0
    return-void

    .line 85
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/gdata/util/common/io/MultiReader;->current:Ljava/io/Reader;

    throw v0
.end method

.method public read([CII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 51
    iget-object v1, p0, Lcom/google/gdata/util/common/io/MultiReader;->current:Ljava/io/Reader;

    if-nez v1, :cond_0

    .line 59
    :goto_0
    return v0

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/util/common/io/MultiReader;->current:Ljava/io/Reader;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 55
    if-ne v1, v0, :cond_1

    .line 56
    invoke-direct {p0}, Lcom/google/gdata/util/common/io/MultiReader;->advance()V

    .line 57
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/util/common/io/MultiReader;->read([CII)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 59
    goto :goto_0
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/gdata/util/common/io/MultiReader;->current:Ljava/io/Reader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/util/common/io/MultiReader;->current:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 63
    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "n is negative"

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 64
    cmp-long v0, p1, v2

    if-lez v0, :cond_2

    .line 65
    :goto_1
    iget-object v0, p0, Lcom/google/gdata/util/common/io/MultiReader;->current:Ljava/io/Reader;

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/google/gdata/util/common/io/MultiReader;->current:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide v0

    .line 67
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 73
    :goto_2
    return-wide v0

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/google/gdata/util/common/io/MultiReader;->advance()V

    goto :goto_1

    :cond_2
    move-wide v0, v2

    .line 73
    goto :goto_2
.end method
