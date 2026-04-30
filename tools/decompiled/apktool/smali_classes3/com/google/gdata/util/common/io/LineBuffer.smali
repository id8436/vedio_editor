.class abstract Lcom/google/gdata/util/common/io/LineBuffer;
.super Ljava/lang/Object;
.source "LineBuffer.java"


# instance fields
.field private line:Ljava/lang/StringBuilder;

.field private sawReturn:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/util/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    return-void
.end method

.method private finishLine(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/gdata/util/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/gdata/util/common/io/LineBuffer;->sawReturn:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "\r\n"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/util/common/io/LineBuffer;->handleLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/util/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gdata/util/common/io/LineBuffer;->sawReturn:Z

    .line 90
    return p1

    .line 85
    :cond_0
    const-string/jumbo v0, "\r"

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string/jumbo v0, "\n"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method protected add([CII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 51
    .line 52
    iget-boolean v0, p0, Lcom/google/gdata/util/common/io/LineBuffer;->sawReturn:Z

    if-eqz v0, :cond_4

    if-lez p3, :cond_4

    .line 54
    aget-char v0, p1, p2

    if-ne v0, v7, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/gdata/util/common/io/LineBuffer;->finishLine(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55
    add-int/lit8 v0, p2, 0x1

    .line 60
    :goto_1
    add-int v4, p2, p3

    move v3, v0

    :goto_2
    if-ge v3, v4, :cond_2

    .line 61
    aget-char v5, p1, v3

    packed-switch v5, :pswitch_data_0

    .line 60
    :goto_3
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    move v0, v2

    .line 54
    goto :goto_0

    .line 63
    :pswitch_1
    iget-object v5, p0, Lcom/google/gdata/util/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    sub-int v6, v3, v0

    invoke-virtual {v5, p1, v0, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 64
    iput-boolean v1, p0, Lcom/google/gdata/util/common/io/LineBuffer;->sawReturn:Z

    .line 65
    add-int/lit8 v0, v3, 0x1

    if-ge v0, v4, :cond_3

    .line 66
    add-int/lit8 v0, v3, 0x1

    aget-char v0, p1, v0

    if-ne v0, v7, :cond_1

    move v0, v1

    :goto_4
    invoke-direct {p0, v0}, Lcom/google/gdata/util/common/io/LineBuffer;->finishLine(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    add-int/lit8 v0, v3, 0x1

    .line 70
    :goto_5
    add-int/lit8 v3, v0, 0x1

    move v8, v3

    move v3, v0

    move v0, v8

    .line 71
    goto :goto_3

    :cond_1
    move v0, v2

    .line 66
    goto :goto_4

    .line 74
    :pswitch_2
    iget-object v5, p0, Lcom/google/gdata/util/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    sub-int v6, v3, v0

    invoke-virtual {v5, p1, v0, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {p0, v1}, Lcom/google/gdata/util/common/io/LineBuffer;->finishLine(Z)Z

    .line 76
    add-int/lit8 v0, v3, 0x1

    goto :goto_3

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/google/gdata/util/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    add-int v2, p2, p3

    sub-int/2addr v2, v0

    invoke-virtual {v1, p1, v0, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 81
    return-void

    :cond_3
    move v0, v3

    goto :goto_5

    :cond_4
    move v0, p2

    goto :goto_1

    .line 61
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/google/gdata/util/common/io/LineBuffer;->sawReturn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/util/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 102
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gdata/util/common/io/LineBuffer;->finishLine(Z)Z

    .line 104
    :cond_1
    return-void
.end method

.method protected abstract handleLine(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
