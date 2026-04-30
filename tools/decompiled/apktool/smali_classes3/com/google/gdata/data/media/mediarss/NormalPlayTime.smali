.class public Lcom/google/gdata/data/media/mediarss/NormalPlayTime;
.super Ljava/lang/Object;
.source "NormalPlayTime.java"


# static fields
.field public static final NOW:Lcom/google/gdata/data/media/mediarss/NormalPlayTime;


# instance fields
.field private isNow:Z

.field private ms:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;-><init>(ZJ)V

    sput-object v0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->NOW:Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;-><init>(ZJ)V

    .line 48
    return-void
.end method

.method private constructor <init>(ZJ)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean p1, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->isNow:Z

    .line 52
    iput-wide p2, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->ms:J

    .line 53
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/gdata/data/media/mediarss/NormalPlayTime;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 75
    if-nez p0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    .line 79
    :cond_0
    const-string/jumbo v0, "now"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    sget-object v0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->NOW:Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    goto :goto_0

    .line 83
    :cond_1
    new-instance v1, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;

    invoke-direct {v1, p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;-><init>(Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    invoke-static {v1}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;->access$000(Lcom/google/gdata/data/media/mediarss/NormalPlayTime$NPTParser;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;-><init>(J)V

    goto :goto_0
.end method


# virtual methods
.method public getNptHhmmssRepresentation()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x3c

    .line 119
    iget-boolean v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->isNow:Z

    if-eqz v0, :cond_0

    .line 120
    const-string/jumbo v0, "now"

    .line 133
    :goto_0
    return-object v0

    .line 123
    :cond_0
    iget-wide v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->ms:J

    const-wide/16 v2, 0x3e8

    rem-long/2addr v0, v2

    .line 124
    iget-wide v2, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->ms:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 125
    rem-long v4, v2, v8

    .line 126
    div-long/2addr v2, v8

    .line 127
    rem-long v6, v2, v8

    .line 128
    div-long/2addr v2, v8

    .line 129
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_1

    .line 130
    const-string/jumbo v8, "%1$02d:%2$02d:%3$02d.%4$03d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v9, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v9, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v9, v12

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_1
    const-string/jumbo v0, "%1$02d:%2$02d:%3$02d"

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNptSecondsRepresentation()Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v4, 0x3e8

    .line 100
    iget-boolean v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->isNow:Z

    if-eqz v0, :cond_0

    .line 101
    const-string/jumbo v0, "now"

    .line 109
    :goto_0
    return-object v0

    .line 104
    :cond_0
    iget-wide v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->ms:J

    div-long/2addr v0, v4

    .line 105
    iget-wide v2, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->ms:J

    rem-long/2addr v2, v4

    .line 106
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 107
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_1
    const-string/jumbo v4, "%1$d.%2$03d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTimeOffsetMs()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->ms:J

    return-wide v0
.end method

.method public isNow()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->isNow:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->getNptSecondsRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
