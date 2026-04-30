.class Lcom/google/gdata/util/common/base/CharEscapers$HtmlCharEscaper;
.super Lcom/google/gdata/util/common/base/CharEscapers$FastCharEscaper;
.source "CharEscapers.java"


# direct methods
.method public constructor <init>([[C)V
    .locals 2

    .prologue
    .line 979
    const/4 v0, 0x0

    const/16 v1, 0x7e

    invoke-direct {p0, p1, v0, v1}, Lcom/google/gdata/util/common/base/CharEscapers$FastCharEscaper;-><init>([[CCC)V

    .line 980
    return-void
.end method


# virtual methods
.method protected escape(C)[C
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 984
    iget v0, p0, Lcom/google/gdata/util/common/base/CharEscapers$HtmlCharEscaper;->replacementLength:I

    if-ge p1, v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/google/gdata/util/common/base/CharEscapers$HtmlCharEscaper;->replacements:[[C

    aget-object v0, v0, p1

    .line 986
    if-eqz v0, :cond_0

    .line 1016
    :goto_0
    return-object v0

    .line 993
    :cond_0
    iget-char v0, p0, Lcom/google/gdata/util/common/base/CharEscapers$HtmlCharEscaper;->safeMax:C

    if-gt p1, v0, :cond_1

    .line 994
    const/4 v0, 0x0

    goto :goto_0

    .line 998
    :cond_1
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_2

    .line 999
    const/4 v0, 0x4

    .line 1005
    :goto_1
    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    .line 1006
    const/4 v2, 0x0

    const/16 v3, 0x26

    aput-char v3, v1, v2

    .line 1007
    const/16 v2, 0x23

    aput-char v2, v1, v4

    .line 1008
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x3b

    aput-char v3, v1, v2

    .line 1012
    :goto_2
    if-le v0, v4, :cond_4

    .line 1013
    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->access$100()[C

    move-result-object v2

    rem-int/lit8 v3, p1, 0xa

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 1014
    div-int/lit8 p1, p1, 0xa

    .line 1012
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1000
    :cond_2
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_3

    .line 1001
    const/4 v0, 0x5

    goto :goto_1

    .line 1003
    :cond_3
    const/4 v0, 0x6

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 1016
    goto :goto_0
.end method
