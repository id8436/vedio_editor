.class Lcom/google/gdata/util/common/base/CharEscaper$1;
.super Ljava/lang/Object;
.source "CharEscaper.java"

# interfaces
.implements Ljava/lang/Appendable;


# instance fields
.field final synthetic this$0:Lcom/google/gdata/util/common/base/CharEscaper;

.field final synthetic val$out:Ljava/lang/Appendable;


# direct methods
.method constructor <init>(Lcom/google/gdata/util/common/base/CharEscaper;Ljava/lang/Appendable;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/gdata/util/common/base/CharEscaper$1;->this$0:Lcom/google/gdata/util/common/base/CharEscaper;

    iput-object p2, p0, Lcom/google/gdata/util/common/base/CharEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private outputChars([C)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-char v2, p1, v0

    .line 128
    iget-object v3, p0, Lcom/google/gdata/util/common/base/CharEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v3, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/gdata/util/common/base/CharEscaper$1;->this$0:Lcom/google/gdata/util/common/base/CharEscaper;

    invoke-virtual {v0, p1}, Lcom/google/gdata/util/common/base/CharEscaper;->escape(C)[C

    move-result-object v0

    .line 118
    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/gdata/util/common/base/CharEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 123
    :goto_0
    return-object p0

    .line 121
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/gdata/util/common/base/CharEscaper$1;->outputChars([C)V

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/gdata/util/common/base/CharEscaper$1;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    move v0, p2

    .line 100
    :goto_0
    if-ge p2, p3, :cond_2

    .line 101
    iget-object v1, p0, Lcom/google/gdata/util/common/base/CharEscaper$1;->this$0:Lcom/google/gdata/util/common/base/CharEscaper;

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/gdata/util/common/base/CharEscaper;->escape(C)[C

    move-result-object v1

    .line 102
    if-eqz v1, :cond_1

    .line 103
    if-ge v0, p2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/google/gdata/util/common/base/CharEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v2, p1, v0, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 106
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/gdata/util/common/base/CharEscaper$1;->outputChars([C)V

    .line 107
    add-int/lit8 v0, p2, 0x1

    .line 100
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 110
    :cond_2
    if-ge v0, p3, :cond_3

    .line 111
    iget-object v1, p0, Lcom/google/gdata/util/common/base/CharEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v1, p1, v0, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 113
    :cond_3
    return-object p0
.end method
