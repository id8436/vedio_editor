.class public Lorg/mortbay/jetty/InclusiveByteRange;
.super Ljava/lang/Object;
.source "InclusiveByteRange.java"


# instance fields
.field first:J

.field last:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide v0, p0, Lorg/mortbay/jetty/InclusiveByteRange;->first:J

    .line 48
    iput-wide v0, p0, Lorg/mortbay/jetty/InclusiveByteRange;->last:J

    .line 52
    iput-wide p1, p0, Lorg/mortbay/jetty/InclusiveByteRange;->first:J

    .line 53
    iput-wide p3, p0, Lorg/mortbay/jetty/InclusiveByteRange;->last:J

    .line 54
    return-void
.end method

.method public static satisfiableRanges(Ljava/util/Enumeration;J)Ljava/util/List;
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x0

    const-wide/16 v6, -0x1

    .line 74
    move-object v1, v2

    .line 78
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 80
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    new-instance v10, Ljava/util/StringTokenizer;

    const-string/jumbo v3, "=,"

    invoke-direct {v10, v0, v3, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v3, v2

    move-object v0, v1

    .line 86
    :cond_0
    :goto_1
    :try_start_0
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 88
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 92
    const/16 v1, 0x2d

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 93
    if-ltz v1, :cond_1

    const-string/jumbo v4, "-"

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_2

    .line 95
    :cond_1
    const-string/jumbo v1, "bytes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    const-string/jumbo v1, "Bad range format: {}"

    invoke-static {v1, v3}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, v0

    .line 98
    goto :goto_0

    .line 100
    :cond_2
    if-nez v1, :cond_4

    .line 102
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 103
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-wide v8, v6

    .line 118
    :goto_2
    cmp-long v1, v8, v6

    if-nez v1, :cond_6

    cmp-long v1, v4, v6

    if-nez v1, :cond_6

    move-object v1, v0

    .line 119
    goto :goto_0

    .line 106
    :cond_3
    const-string/jumbo v1, "Bad range format: {}"

    invoke-static {v1, v3}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, v0

    .line 107
    goto :goto_0

    .line 110
    :cond_4
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 112
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 113
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_2

    .line 116
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-wide v8, v4

    move-wide v4, v6

    goto :goto_2

    .line 121
    :cond_6
    cmp-long v1, v8, v6

    if-eqz v1, :cond_7

    cmp-long v1, v4, v6

    if-eqz v1, :cond_7

    cmp-long v1, v8, v4

    if-lez v1, :cond_7

    move-object v1, v0

    .line 122
    goto/16 :goto_0

    .line 124
    :cond_7
    cmp-long v1, v8, p1

    if-gez v1, :cond_0

    .line 126
    new-instance v1, Lorg/mortbay/jetty/InclusiveByteRange;

    invoke-direct {v1, v8, v9, v4, v5}, Lorg/mortbay/jetty/InclusiveByteRange;-><init>(JJ)V

    .line 128
    invoke-static {v0, v1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_1

    .line 132
    :catch_0
    move-exception v1

    .line 134
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "Bad range format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 135
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_8
    move-object v1, v0

    .line 137
    goto/16 :goto_0

    .line 138
    :cond_9
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lorg/mortbay/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static to416HeaderRangeString(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 189
    const-string/jumbo v1, "bytes */"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFirst()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lorg/mortbay/jetty/InclusiveByteRange;->first:J

    return-wide v0
.end method

.method public getFirst(J)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 144
    iget-wide v2, p0, Lorg/mortbay/jetty/InclusiveByteRange;->first:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 146
    iget-wide v2, p0, Lorg/mortbay/jetty/InclusiveByteRange;->last:J

    sub-long v2, p1, v2

    .line 147
    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 151
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/mortbay/jetty/InclusiveByteRange;->first:J

    goto :goto_0

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method public getLast()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/mortbay/jetty/InclusiveByteRange;->last:J

    return-wide v0
.end method

.method public getLast(J)J
    .locals 7

    .prologue
    const-wide/16 v4, 0x1

    const-wide/16 v2, 0x0

    .line 157
    iget-wide v0, p0, Lorg/mortbay/jetty/InclusiveByteRange;->first:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 158
    sub-long v0, p1, v4

    .line 162
    :goto_0
    return-wide v0

    .line 160
    :cond_0
    iget-wide v0, p0, Lorg/mortbay/jetty/InclusiveByteRange;->last:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lorg/mortbay/jetty/InclusiveByteRange;->last:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_2

    .line 161
    :cond_1
    sub-long v0, p1, v4

    goto :goto_0

    .line 162
    :cond_2
    iget-wide v0, p0, Lorg/mortbay/jetty/InclusiveByteRange;->last:J

    goto :goto_0
.end method

.method public getSize(J)J
    .locals 5

    .prologue
    .line 168
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/InclusiveByteRange;->getLast(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/InclusiveByteRange;->getFirst(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public toHeaderRangeString(J)Ljava/lang/String;
    .locals 5

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 176
    const-string/jumbo v1, "bytes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/InclusiveByteRange;->getFirst(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 178
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 179
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/InclusiveByteRange;->getLast(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 180
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 199
    iget-wide v2, p0, Lorg/mortbay/jetty/InclusiveByteRange;->first:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    iget-wide v2, p0, Lorg/mortbay/jetty/InclusiveByteRange;->last:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
