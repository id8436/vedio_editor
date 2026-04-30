.class public Lcom/dropbox/core/v2/teamcommon/TimeRange$Builder;
.super Ljava/lang/Object;
.source "TimeRange.java"


# instance fields
.field protected endTime:Ljava/util/Date;

.field protected startTime:Ljava/util/Date;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object v0, p0, Lcom/dropbox/core/v2/teamcommon/TimeRange$Builder;->startTime:Ljava/util/Date;

    .line 89
    iput-object v0, p0, Lcom/dropbox/core/v2/teamcommon/TimeRange$Builder;->endTime:Ljava/util/Date;

    .line 90
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamcommon/TimeRange;
    .locals 3

    .prologue
    .line 123
    new-instance v0, Lcom/dropbox/core/v2/teamcommon/TimeRange;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamcommon/TimeRange$Builder;->startTime:Ljava/util/Date;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamcommon/TimeRange$Builder;->endTime:Ljava/util/Date;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamcommon/TimeRange;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    return-object v0
.end method

.method public withEndTime(Ljava/util/Date;)Lcom/dropbox/core/v2/teamcommon/TimeRange$Builder;
    .locals 1

    .prologue
    .line 112
    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/teamcommon/TimeRange$Builder;->endTime:Ljava/util/Date;

    .line 113
    return-object p0
.end method

.method public withStartTime(Ljava/util/Date;)Lcom/dropbox/core/v2/teamcommon/TimeRange$Builder;
    .locals 1

    .prologue
    .line 100
    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/teamcommon/TimeRange$Builder;->startTime:Ljava/util/Date;

    .line 101
    return-object p0
.end method
