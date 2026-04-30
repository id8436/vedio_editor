.class public Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;
.super Ljava/lang/Object;
.source "TeamActivityCreateReportDetails.java"


# instance fields
.field protected final endDate:Ljava/util/Date;

.field protected final startDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'startDate\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;->startDate:Ljava/util/Date;

    .line 43
    if-nez p2, :cond_1

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'endDate\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    invoke-static {p2}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;->endDate:Ljava/util/Date;

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    if-ne p1, p0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 82
    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 86
    check-cast p1, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;

    .line 87
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;->startDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;->startDate:Ljava/util/Date;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;->startDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;->startDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;->endDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;->endDate:Ljava/util/Date;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;->endDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;->endDate:Ljava/util/Date;

    .line 88
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 92
    goto :goto_0
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;->endDate:Ljava/util/Date;

    return-object v0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;->startDate:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;->startDate:Ljava/util/Date;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;->endDate:Ljava/util/Date;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 73
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
