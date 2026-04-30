.class final Lcom/google/gdata/util/common/base/CharMatcher$3;
.super Lcom/google/gdata/util/common/base/CharMatcher;
.source "CharMatcher.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/google/gdata/util/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 206
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/gdata/util/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .locals 1

    .prologue
    .line 216
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected setBits(Lcom/google/gdata/util/common/base/CharMatcher$LookupTable;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 208
    const-string/jumbo v0, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-char v5, v3, v2

    move v0, v1

    .line 209
    :goto_1
    const/16 v6, 0xa

    if-ge v0, v6, :cond_0

    .line 210
    add-int v6, v5, v0

    int-to-char v6, v6

    invoke-virtual {p1, v6}, Lcom/google/gdata/util/common/base/CharMatcher$LookupTable;->set(C)V

    .line 209
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_1

    .line 208
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 213
    :cond_1
    return-void
.end method
