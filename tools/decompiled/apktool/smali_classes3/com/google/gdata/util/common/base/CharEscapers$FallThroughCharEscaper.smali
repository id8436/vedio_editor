.class Lcom/google/gdata/util/common/base/CharEscapers$FallThroughCharEscaper;
.super Lcom/google/gdata/util/common/base/CharEscaper;
.source "CharEscapers.java"


# instance fields
.field private final primary:Lcom/google/gdata/util/common/base/CharEscaper;

.field private final secondary:Lcom/google/gdata/util/common/base/CharEscaper;


# direct methods
.method public constructor <init>(Lcom/google/gdata/util/common/base/CharEscaper;Lcom/google/gdata/util/common/base/CharEscaper;)V
    .locals 0

    .prologue
    .line 1030
    invoke-direct {p0}, Lcom/google/gdata/util/common/base/CharEscaper;-><init>()V

    .line 1031
    iput-object p1, p0, Lcom/google/gdata/util/common/base/CharEscapers$FallThroughCharEscaper;->primary:Lcom/google/gdata/util/common/base/CharEscaper;

    .line 1032
    iput-object p2, p0, Lcom/google/gdata/util/common/base/CharEscapers$FallThroughCharEscaper;->secondary:Lcom/google/gdata/util/common/base/CharEscaper;

    .line 1033
    return-void
.end method


# virtual methods
.method protected escape(C)[C
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/google/gdata/util/common/base/CharEscapers$FallThroughCharEscaper;->primary:Lcom/google/gdata/util/common/base/CharEscaper;

    invoke-virtual {v0, p1}, Lcom/google/gdata/util/common/base/CharEscaper;->escape(C)[C

    move-result-object v0

    .line 1038
    if-nez v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/google/gdata/util/common/base/CharEscapers$FallThroughCharEscaper;->secondary:Lcom/google/gdata/util/common/base/CharEscaper;

    invoke-virtual {v0, p1}, Lcom/google/gdata/util/common/base/CharEscaper;->escape(C)[C

    move-result-object v0

    .line 1041
    :cond_0
    return-object v0
.end method
