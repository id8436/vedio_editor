.class public abstract Lcom/google/gdata/util/common/base/CharEscaper;
.super Ljava/lang/Object;
.source "CharEscaper.java"

# interfaces
.implements Lcom/google/gdata/util/common/base/Escaper;


# static fields
.field private static final DEST_PAD:I = 0x20

.field private static final DEST_TL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 246
    new-instance v0, Lcom/google/gdata/util/common/base/CharEscaper$2;

    invoke-direct {v0}, Lcom/google/gdata/util/common/base/CharEscaper$2;-><init>()V

    sput-object v0, Lcom/google/gdata/util/common/base/CharEscaper;->DEST_TL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final growBuffer([CII)[C
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 229
    new-array v0, p2, [C

    .line 230
    if-lez p1, :cond_0

    .line 231
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    :cond_0
    return-object v0
.end method


# virtual methods
.method public escape(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 88
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v0, Lcom/google/gdata/util/common/base/CharEscaper$1;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/util/common/base/CharEscaper$1;-><init>(Lcom/google/gdata/util/common/base/CharEscaper;Ljava/lang/Appendable;)V

    return-object v0
.end method

.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 56
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/gdata/util/common/base/CharEscaper;->escape(C)[C

    move-result-object v2

    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/util/common/base/CharEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 61
    :cond_0
    return-object p1

    .line 56
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected abstract escape(C)[C
.end method

.method protected escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 150
    sget-object v0, Lcom/google/gdata/util/common/base/CharEscaper;->DEST_TL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 151
    array-length v2, v0

    move v1, v5

    move-object v3, v0

    move v0, v5

    .line 157
    :goto_0
    if-ge p2, v6, :cond_3

    .line 160
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/gdata/util/common/base/CharEscaper;->escape(C)[C

    move-result-object v4

    .line 163
    if-nez v4, :cond_0

    .line 157
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 165
    :cond_0
    array-length v7, v4

    .line 166
    sub-int v8, p2, v0

    .line 170
    add-int v9, v1, v8

    add-int/2addr v9, v7

    .line 171
    if-ge v2, v9, :cond_1

    .line 172
    sub-int v2, v6, p2

    add-int/2addr v2, v9

    add-int/lit8 v2, v2, 0x20

    .line 173
    invoke-static {v3, v1, v2}, Lcom/google/gdata/util/common/base/CharEscaper;->growBuffer([CII)[C

    move-result-object v3

    .line 177
    :cond_1
    if-lez v8, :cond_6

    .line 178
    invoke-virtual {p1, v0, p2, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 179
    add-int v0, v1, v8

    .line 183
    :goto_2
    if-lez v7, :cond_2

    .line 184
    invoke-static {v4, v5, v3, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    add-int/2addr v0, v7

    .line 187
    :cond_2
    add-int/lit8 v1, p2, 0x1

    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_1

    .line 191
    :cond_3
    sub-int v4, v6, v0

    .line 192
    if-lez v4, :cond_5

    .line 193
    add-int/2addr v4, v1

    .line 194
    if-ge v2, v4, :cond_4

    .line 197
    invoke-static {v3, v1, v4}, Lcom/google/gdata/util/common/base/CharEscaper;->growBuffer([CII)[C

    move-result-object v3

    .line 199
    :cond_4
    invoke-virtual {p1, v0, v6, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    move v1, v4

    .line 202
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v5, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_6
    move v0, v1

    goto :goto_2
.end method
