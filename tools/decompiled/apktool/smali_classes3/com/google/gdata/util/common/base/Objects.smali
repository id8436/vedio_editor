.class public final Lcom/google/gdata/util/common/base/Objects;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 158
    if-ne p0, p1, :cond_1

    .line 159
    const/4 v0, 0x1

    .line 198
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 166
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 167
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_3

    .line 168
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 170
    :cond_3
    instance-of v3, p0, [Ljava/lang/Object;

    if-eqz v3, :cond_4

    instance-of v3, p1, [Ljava/lang/Object;

    if-eqz v3, :cond_4

    .line 171
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 173
    :cond_4
    if-ne v1, v2, :cond_0

    .line 176
    instance-of v0, p0, [Z

    if-eqz v0, :cond_5

    .line 177
    check-cast p0, [Z

    check-cast p0, [Z

    check-cast p1, [Z

    check-cast p1, [Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    goto :goto_0

    .line 179
    :cond_5
    instance-of v0, p0, [C

    if-eqz v0, :cond_6

    .line 180
    check-cast p0, [C

    check-cast p0, [C

    check-cast p1, [C

    check-cast p1, [C

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    goto :goto_0

    .line 182
    :cond_6
    instance-of v0, p0, [B

    if-eqz v0, :cond_7

    .line 183
    check-cast p0, [B

    check-cast p0, [B

    check-cast p1, [B

    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0

    .line 185
    :cond_7
    instance-of v0, p0, [S

    if-eqz v0, :cond_8

    .line 186
    check-cast p0, [S

    check-cast p0, [S

    check-cast p1, [S

    check-cast p1, [S

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    goto :goto_0

    .line 188
    :cond_8
    instance-of v0, p0, [I

    if-eqz v0, :cond_9

    .line 189
    check-cast p0, [I

    check-cast p0, [I

    check-cast p1, [I

    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto/16 :goto_0

    .line 191
    :cond_9
    instance-of v0, p0, [J

    if-eqz v0, :cond_a

    .line 192
    check-cast p0, [J

    check-cast p0, [J

    check-cast p1, [J

    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    goto/16 :goto_0

    .line 194
    :cond_a
    instance-of v0, p0, [F

    if-eqz v0, :cond_b

    .line 195
    check-cast p0, [F

    check-cast p0, [F

    check-cast p1, [F

    check-cast p1, [F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    goto/16 :goto_0

    .line 197
    :cond_b
    instance-of v0, p0, [D

    if-eqz v0, :cond_c

    .line 198
    check-cast p0, [D

    check-cast p0, [D

    check-cast p1, [D

    check-cast p1, [D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    goto/16 :goto_0

    .line 200
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static deepHashCode(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 215
    if-nez p0, :cond_0

    .line 216
    const/4 v0, 0x0

    .line 246
    :goto_0
    return v0

    .line 218
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 221
    :cond_1
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 222
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 224
    :cond_2
    instance-of v0, p0, [Z

    if-eqz v0, :cond_3

    .line 225
    check-cast p0, [Z

    check-cast p0, [Z

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v0

    goto :goto_0

    .line 227
    :cond_3
    instance-of v0, p0, [C

    if-eqz v0, :cond_4

    .line 228
    check-cast p0, [C

    check-cast p0, [C

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v0

    goto :goto_0

    .line 230
    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_5

    .line 231
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    goto :goto_0

    .line 233
    :cond_5
    instance-of v0, p0, [S

    if-eqz v0, :cond_6

    .line 234
    check-cast p0, [S

    check-cast p0, [S

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([S)I

    move-result v0

    goto :goto_0

    .line 236
    :cond_6
    instance-of v0, p0, [I

    if-eqz v0, :cond_7

    .line 237
    check-cast p0, [I

    check-cast p0, [I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    goto :goto_0

    .line 239
    :cond_7
    instance-of v0, p0, [J

    if-eqz v0, :cond_8

    .line 240
    check-cast p0, [J

    check-cast p0, [J

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    goto :goto_0

    .line 242
    :cond_8
    instance-of v0, p0, [F

    if-eqz v0, :cond_9

    .line 243
    check-cast p0, [F

    check-cast p0, [F

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    goto :goto_0

    .line 245
    :cond_9
    instance-of v0, p0, [D

    if-eqz v0, :cond_a

    .line 246
    check-cast p0, [D

    check-cast p0, [D

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    goto/16 :goto_0

    .line 248
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static deepToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    if-nez p0, :cond_0

    .line 263
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    .line 265
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 268
    :cond_1
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 269
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 271
    :cond_2
    instance-of v0, p0, [Z

    if-eqz v0, :cond_3

    .line 272
    check-cast p0, [Z

    check-cast p0, [Z

    invoke-static {p0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 274
    :cond_3
    instance-of v0, p0, [C

    if-eqz v0, :cond_4

    .line 275
    check-cast p0, [C

    check-cast p0, [C

    invoke-static {p0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_5

    .line 278
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_5
    instance-of v0, p0, [S

    if-eqz v0, :cond_6

    .line 281
    check-cast p0, [S

    check-cast p0, [S

    invoke-static {p0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 283
    :cond_6
    instance-of v0, p0, [I

    if-eqz v0, :cond_7

    .line 284
    check-cast p0, [I

    check-cast p0, [I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 286
    :cond_7
    instance-of v0, p0, [J

    if-eqz v0, :cond_8

    .line 287
    check-cast p0, [J

    check-cast p0, [J

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 289
    :cond_8
    instance-of v0, p0, [F

    if-eqz v0, :cond_9

    .line 290
    check-cast p0, [F

    check-cast p0, [F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 292
    :cond_9
    instance-of v0, p0, [D

    if-eqz v0, :cond_a

    .line 293
    check-cast p0, [D

    check-cast p0, [D

    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 295
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 51
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 140
    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs hashCode([Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 70
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static nonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 105
    if-nez p0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 108
    :cond_0
    return-object p0
.end method

.method public static nonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 122
    if-nez p0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    return-object p0
.end method

.method public static toStringHelper(Ljava/lang/Object;)Lcom/google/gdata/util/common/base/Objects$ToStringHelper;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lcom/google/gdata/util/common/base/Objects$ToStringHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/gdata/util/common/base/Objects$ToStringHelper;-><init>(Ljava/lang/Object;Lcom/google/gdata/util/common/base/Objects$1;)V

    return-object v0
.end method
