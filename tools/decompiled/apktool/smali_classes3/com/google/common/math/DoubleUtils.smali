.class final Lcom/google/common/math/DoubleUtils;
.super Ljava/lang/Object;
.source "DoubleUtils.java"


# static fields
.field static final EXPONENT_BIAS:I = 0x3ff

.field static final EXPONENT_MASK:J = 0x7ff0000000000000L

.field static final IMPLICIT_BIT:J = 0x10000000000000L

.field static final MAX_EXPONENT:I = 0x3ff

.field static final MIN_EXPONENT:I = -0x3fe

.field private static final ONE_BITS:J

.field static final SIGNIFICAND_BITS:I = 0x34

.field static final SIGNIFICAND_MASK:J = 0xfffffffffffffL

.field static final SIGN_MASK:J = -0x8000000000000000L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 173
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/DoubleUtils;->ONE_BITS:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static bigToDouble(Ljava/math/BigInteger;)D
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v2, 0x1

    const-wide/16 v10, 0x1

    .line 119
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 122
    const/16 v0, 0x3f

    if-ge v4, v0, :cond_0

    .line 123
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    .line 158
    :goto_0
    return-wide v0

    .line 124
    :cond_0
    const/16 v0, 0x3ff

    if-le v4, v0, :cond_1

    .line 125
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    mul-double/2addr v0, v2

    goto :goto_0

    .line 136
    :cond_1
    add-int/lit8 v0, v4, -0x34

    add-int/lit8 v5, v0, -0x1

    .line 137
    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    .line 138
    shr-long v0, v6, v2

    .line 139
    const-wide v8, 0xfffffffffffffL

    and-long/2addr v0, v8

    .line 146
    and-long/2addr v6, v10

    cmp-long v6, v6, v12

    if-eqz v6, :cond_4

    and-long v6, v0, v10

    cmp-long v6, v6, v12

    if-nez v6, :cond_2

    invoke-virtual {v3}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v3

    if-ge v3, v5, :cond_4

    .line 148
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    add-long/2addr v0, v10

    .line 149
    :cond_3
    add-int/lit16 v2, v4, 0x3ff

    int-to-long v2, v2

    const/16 v4, 0x34

    shl-long/2addr v2, v4

    .line 150
    add-long/2addr v0, v2

    .line 157
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    int-to-long v2, v2

    const-wide/high16 v4, -0x8000000000000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 158
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_0

    .line 146
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static copySign(DD)D
    .locals 6

    .prologue
    .line 95
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    .line 96
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 97
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static ensureNonNegative(D)D
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 165
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 166
    cmpl-double v0, p0, v2

    if-lez v0, :cond_1

    .line 169
    :goto_1
    return-wide p0

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-wide p0, v2

    .line 169
    goto :goto_1
.end method

.method static getExponent(D)I
    .locals 4

    .prologue
    .line 80
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v0, v2

    .line 81
    const/16 v2, 0x34

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, -0x3ff

    return v0
.end method

.method static getSignificand(D)J
    .locals 6

    .prologue
    .line 85
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    const-string/jumbo v1, "not a normal value"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 86
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getExponent(D)I

    move-result v0

    .line 87
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 88
    const-wide v4, 0xfffffffffffffL

    and-long/2addr v2, v4

    .line 89
    const/16 v1, -0x3ff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    shl-long v0, v2, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x10000000000000L

    or-long/2addr v0, v2

    goto :goto_0
.end method

.method static isFinite(D)Z
    .locals 2

    .prologue
    .line 101
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getExponent(D)I

    move-result v0

    const/16 v1, 0x3ff

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isNormal(D)Z
    .locals 2

    .prologue
    .line 105
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getExponent(D)I

    move-result v0

    const/16 v1, -0x3fe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static nextDown(D)D
    .locals 2

    .prologue
    .line 37
    neg-double v0, p0

    invoke-static {v0, v1}, Lcom/google/common/math/DoubleUtils;->nextUp(D)D

    move-result-wide v0

    neg-double v0, v0

    return-wide v0
.end method

.method static nextUp(D)D
    .locals 6

    .prologue
    .line 41
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-wide p0

    .line 43
    :cond_1
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_2

    .line 44
    const-wide/16 p0, 0x1

    goto :goto_0

    .line 45
    :cond_2
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 49
    const/16 v2, 0x3f

    shr-long v2, v0, v2

    const-wide/16 v4, 0x1

    or-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    goto :goto_0
.end method

.method static scaleNormalize(D)D
    .locals 4

    .prologue
    .line 113
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide v2, 0xfffffffffffffL

    and-long/2addr v0, v2

    .line 114
    sget-wide v2, Lcom/google/common/math/DoubleUtils;->ONE_BITS:J

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method
