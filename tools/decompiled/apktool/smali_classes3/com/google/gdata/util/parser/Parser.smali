.class public abstract Lcom/google/gdata/util/parser/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final NO_MATCH:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alternative(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)Lcom/google/gdata/util/parser/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;",
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;)",
            "Lcom/google/gdata/util/parser/Parser",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Lcom/google/gdata/util/parser/Alternative;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/util/parser/Alternative;-><init>(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)V

    return-object v0
.end method

.method public static difference(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)Lcom/google/gdata/util/parser/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;",
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;)",
            "Lcom/google/gdata/util/parser/Parser",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 250
    new-instance v0, Lcom/google/gdata/util/parser/Difference;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/util/parser/Difference;-><init>(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)V

    return-object v0
.end method

.method public static intersection(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)Lcom/google/gdata/util/parser/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;",
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;)",
            "Lcom/google/gdata/util/parser/Parser",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 239
    new-instance v0, Lcom/google/gdata/util/parser/Intersection;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/util/parser/Intersection;-><init>(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)V

    return-object v0
.end method

.method public static sequence(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)Lcom/google/gdata/util/parser/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;",
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;)",
            "Lcom/google/gdata/util/parser/Parser",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 261
    new-instance v0, Lcom/google/gdata/util/parser/Sequence;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/util/parser/Sequence;-><init>(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)V

    return-object v0
.end method

.method public static sequence(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)Lcom/google/gdata/util/parser/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;",
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;",
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;)",
            "Lcom/google/gdata/util/parser/Parser",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 272
    invoke-static {p1, p2}, Lcom/google/gdata/util/parser/Parser;->sequence(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)Lcom/google/gdata/util/parser/Parser;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/gdata/util/parser/Parser;->sequence(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)Lcom/google/gdata/util/parser/Parser;

    move-result-object v0

    return-object v0
.end method

.method public static sequence(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)Lcom/google/gdata/util/parser/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;",
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;",
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;",
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;)",
            "Lcom/google/gdata/util/parser/Parser",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 283
    invoke-static {p2, p3}, Lcom/google/gdata/util/parser/Parser;->sequence(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)Lcom/google/gdata/util/parser/Parser;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/gdata/util/parser/Parser;->sequence(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)Lcom/google/gdata/util/parser/Parser;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/gdata/util/parser/Parser;->sequence(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)Lcom/google/gdata/util/parser/Parser;

    move-result-object v0

    return-object v0
.end method

.method public static sequence(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)Lcom/google/gdata/util/parser/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;",
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;",
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;",
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;",
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;)",
            "Lcom/google/gdata/util/parser/Parser",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 297
    invoke-static {p3, p4}, Lcom/google/gdata/util/parser/Parser;->sequence(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)Lcom/google/gdata/util/parser/Parser;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/gdata/util/parser/Parser;->sequence(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)Lcom/google/gdata/util/parser/Parser;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/gdata/util/parser/Parser;->sequence(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)Lcom/google/gdata/util/parser/Parser;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/gdata/util/parser/Parser;->sequence(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)Lcom/google/gdata/util/parser/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final action(Lcom/google/gdata/util/parser/Callback;)Lcom/google/gdata/util/parser/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TT;>(",
            "Lcom/google/gdata/util/parser/Callback",
            "<TU;>;)",
            "Lcom/google/gdata/util/parser/Parser",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Lcom/google/gdata/util/parser/Action;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/util/parser/Action;-><init>(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Callback;)V

    return-object v0
.end method

.method public final list(Lcom/google/gdata/util/parser/Parser;)Lcom/google/gdata/util/parser/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;)",
            "Lcom/google/gdata/util/parser/Parser",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {p1, p0}, Lcom/google/gdata/util/parser/Parser;->sequence(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)Lcom/google/gdata/util/parser/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/util/parser/Parser;->star()Lcom/google/gdata/util/parser/Parser;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/gdata/util/parser/Parser;->sequence(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)Lcom/google/gdata/util/parser/Parser;

    move-result-object v0

    return-object v0
.end method

.method public final optional()Lcom/google/gdata/util/parser/Parser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/util/parser/Parser",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/util/parser/Parser;->repeat(II)Lcom/google/gdata/util/parser/Parser;

    move-result-object v0

    return-object v0
.end method

.method public final parse(Ljava/io/Reader;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "TT;)I"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 128
    const/16 v1, 0x400

    :try_start_0
    new-array v1, v1, [C

    .line 131
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    if-ltz v2, :cond_0

    .line 132
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/CharArrayWriter;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 137
    :cond_0
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/gdata/util/parser/Parser;->parse([CLjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final parse(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)I"
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/gdata/util/parser/Parser;->parse([CLjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public abstract parse([CIILjava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CIITT;)I"
        }
    .end annotation
.end method

.method public final parse([CLjava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CTT;)I"
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/gdata/util/parser/Parser;->parse([CIILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final plus()Lcom/google/gdata/util/parser/Parser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/util/parser/Parser",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Lcom/google/gdata/util/parser/Repeat;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/gdata/util/parser/Repeat;-><init>(Lcom/google/gdata/util/parser/Parser;I)V

    return-object v0
.end method

.method public final repeat(I)Lcom/google/gdata/util/parser/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/gdata/util/parser/Parser",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v0, Lcom/google/gdata/util/parser/Repeat;

    invoke-direct {v0, p0, p1, p1}, Lcom/google/gdata/util/parser/Repeat;-><init>(Lcom/google/gdata/util/parser/Parser;II)V

    return-object v0
.end method

.method public final repeat(II)Lcom/google/gdata/util/parser/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/gdata/util/parser/Parser",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Lcom/google/gdata/util/parser/Repeat;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/gdata/util/parser/Repeat;-><init>(Lcom/google/gdata/util/parser/Parser;II)V

    return-object v0
.end method

.method public final star()Lcom/google/gdata/util/parser/Parser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/util/parser/Parser",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Lcom/google/gdata/util/parser/Repeat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/gdata/util/parser/Repeat;-><init>(Lcom/google/gdata/util/parser/Parser;I)V

    return-object v0
.end method
