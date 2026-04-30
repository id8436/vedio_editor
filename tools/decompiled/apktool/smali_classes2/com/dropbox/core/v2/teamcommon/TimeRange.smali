.class public Lcom/dropbox/core/v2/teamcommon/TimeRange;
.super Ljava/lang/Object;
.source "TimeRange.java"


# instance fields
.field protected final endTime:Ljava/util/Date;

.field protected final startTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0, v0}, Lcom/dropbox/core/v2/teamcommon/TimeRange;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/teamcommon/TimeRange;->startTime:Ljava/util/Date;

    .line 40
    invoke-static {p2}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/teamcommon/TimeRange;->endTime:Ljava/util/Date;

    .line 41
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/teamcommon/TimeRange$Builder;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/dropbox/core/v2/teamcommon/TimeRange$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamcommon/TimeRange$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 138
    if-ne p1, p0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 141
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 142
    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 146
    check-cast p1, Lcom/dropbox/core/v2/teamcommon/TimeRange;

    .line 147
    iget-object v2, p0, Lcom/dropbox/core/v2/teamcommon/TimeRange;->startTime:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamcommon/TimeRange;->startTime:Ljava/util/Date;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamcommon/TimeRange;->startTime:Ljava/util/Date;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamcommon/TimeRange;->startTime:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamcommon/TimeRange;->startTime:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamcommon/TimeRange;->endTime:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamcommon/TimeRange;->endTime:Ljava/util/Date;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamcommon/TimeRange;->endTime:Ljava/util/Date;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamcommon/TimeRange;->endTime:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamcommon/TimeRange;->endTime:Ljava/util/Date;

    .line 148
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 152
    goto :goto_0
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dropbox/core/v2/teamcommon/TimeRange;->endTime:Ljava/util/Date;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dropbox/core/v2/teamcommon/TimeRange;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamcommon/TimeRange;->startTime:Ljava/util/Date;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamcommon/TimeRange;->endTime:Ljava/util/Date;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 133
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    sget-object v0, Lcom/dropbox/core/v2/teamcommon/TimeRange$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamcommon/TimeRange$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamcommon/TimeRange$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    sget-object v0, Lcom/dropbox/core/v2/teamcommon/TimeRange$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamcommon/TimeRange$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamcommon/TimeRange$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
