.class public Lcom/adobe/audiomixer/VideoTime;
.super Ljava/lang/Object;
.source "VideoTime.java"


# instance fields
.field denominator:J

.field numerator:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-wide v0, p0, Lcom/adobe/audiomixer/VideoTime;->numerator:J

    .line 86
    iput-wide v0, p0, Lcom/adobe/audiomixer/VideoTime;->denominator:J

    .line 8
    iput-wide v0, p0, Lcom/adobe/audiomixer/VideoTime;->numerator:J

    .line 9
    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/adobe/audiomixer/VideoTime;->denominator:J

    .line 10
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-wide v0, p0, Lcom/adobe/audiomixer/VideoTime;->numerator:J

    .line 86
    iput-wide v0, p0, Lcom/adobe/audiomixer/VideoTime;->denominator:J

    .line 14
    iput-wide p1, p0, Lcom/adobe/audiomixer/VideoTime;->numerator:J

    .line 15
    iput-wide p3, p0, Lcom/adobe/audiomixer/VideoTime;->denominator:J

    .line 16
    return-void
.end method

.method public static add(Lcom/adobe/audiomixer/VideoTime;Lcom/adobe/audiomixer/VideoTime;)Lcom/adobe/audiomixer/VideoTime;
    .locals 10

    .prologue
    .line 72
    iget-wide v2, p0, Lcom/adobe/audiomixer/VideoTime;->denominator:J

    .line 73
    iget-wide v0, p0, Lcom/adobe/audiomixer/VideoTime;->numerator:J

    .line 74
    iget-wide v4, p1, Lcom/adobe/audiomixer/VideoTime;->denominator:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 75
    iget-wide v4, p1, Lcom/adobe/audiomixer/VideoTime;->numerator:J

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/adobe/audiomixer/VideoTime;->denominator:J

    long-to-double v6, v6

    iget-wide v8, p1, Lcom/adobe/audiomixer/VideoTime;->denominator:J

    long-to-double v8, v8

    div-double/2addr v6, v8

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-long v4, v4

    add-long/2addr v0, v4

    .line 78
    :cond_0
    new-instance v4, Lcom/adobe/audiomixer/VideoTime;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/adobe/audiomixer/VideoTime;-><init>(JJ)V

    return-object v4
.end method

.method public static createFromMS(J)Lcom/adobe/audiomixer/VideoTime;
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lcom/adobe/audiomixer/VideoTime;

    const-wide/16 v2, 0x3e8

    invoke-direct {v0, p0, p1, v2, v3}, Lcom/adobe/audiomixer/VideoTime;-><init>(JJ)V

    return-object v0
.end method

.method public static fromMicroSeconds(J)Lcom/adobe/audiomixer/VideoTime;
    .locals 4

    .prologue
    .line 82
    new-instance v0, Lcom/adobe/audiomixer/VideoTime;

    const-wide/32 v2, 0xf4240

    invoke-direct {v0, p0, p1, v2, v3}, Lcom/adobe/audiomixer/VideoTime;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/adobe/audiomixer/VideoTime;)Lcom/adobe/audiomixer/VideoTime;
    .locals 6

    .prologue
    .line 31
    iget-wide v0, p1, Lcom/adobe/audiomixer/VideoTime;->denominator:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 32
    iget-wide v0, p0, Lcom/adobe/audiomixer/VideoTime;->numerator:J

    iget-wide v2, p1, Lcom/adobe/audiomixer/VideoTime;->numerator:J

    iget-wide v4, p0, Lcom/adobe/audiomixer/VideoTime;->denominator:J

    mul-long/2addr v2, v4

    iget-wide v4, p1, Lcom/adobe/audiomixer/VideoTime;->denominator:J

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/adobe/audiomixer/VideoTime;->numerator:J

    .line 35
    :cond_0
    return-object p0
.end method

.method public equals(Lcom/adobe/audiomixer/VideoTime;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    iget-wide v2, p1, Lcom/adobe/audiomixer/VideoTime;->denominator:J

    iget-wide v4, p0, Lcom/adobe/audiomixer/VideoTime;->denominator:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, p1, Lcom/adobe/audiomixer/VideoTime;->numerator:J

    iget-wide v4, p0, Lcom/adobe/audiomixer/VideoTime;->numerator:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    iget-wide v2, p1, Lcom/adobe/audiomixer/VideoTime;->denominator:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 44
    iget-wide v2, p1, Lcom/adobe/audiomixer/VideoTime;->numerator:J

    long-to-float v2, v2

    iget-wide v4, p1, Lcom/adobe/audiomixer/VideoTime;->denominator:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    iget-wide v4, p0, Lcom/adobe/audiomixer/VideoTime;->denominator:J

    long-to-float v3, v4

    mul-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-long v2, v2

    .line 46
    iget-wide v4, p0, Lcom/adobe/audiomixer/VideoTime;->numerator:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 49
    goto :goto_0
.end method

.method public getDenominator()J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/adobe/audiomixer/VideoTime;->denominator:J

    return-wide v0
.end method

.method public getNumerator()J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/adobe/audiomixer/VideoTime;->numerator:J

    return-wide v0
.end method

.method public getSampleTime(I)J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 62
    int-to-long v2, p1

    iget-wide v4, p0, Lcom/adobe/audiomixer/VideoTime;->denominator:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 63
    iget-wide v0, p0, Lcom/adobe/audiomixer/VideoTime;->numerator:J

    .line 68
    :cond_0
    :goto_0
    return-wide v0

    .line 65
    :cond_1
    iget-wide v2, p0, Lcom/adobe/audiomixer/VideoTime;->denominator:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 68
    iget-wide v0, p0, Lcom/adobe/audiomixer/VideoTime;->numerator:J

    int-to-long v2, p1

    mul-long/2addr v0, v2

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/adobe/audiomixer/VideoTime;->denominator:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-long v0, v0

    goto :goto_0
.end method

.method public getTimeInMS()J
    .locals 4

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/adobe/audiomixer/VideoTime;->numerator:J

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/adobe/audiomixer/VideoTime;->denominator:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public set(Lcom/adobe/audiomixer/VideoTime;)V
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p1, Lcom/adobe/audiomixer/VideoTime;->numerator:J

    iput-wide v0, p0, Lcom/adobe/audiomixer/VideoTime;->numerator:J

    .line 54
    iget-wide v0, p1, Lcom/adobe/audiomixer/VideoTime;->denominator:J

    iput-wide v0, p0, Lcom/adobe/audiomixer/VideoTime;->denominator:J

    .line 55
    return-void
.end method
