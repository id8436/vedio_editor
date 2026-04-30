.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/DCXAnalyticsMap;
.super Ljava/lang/Object;
.source "AdobeDCXUtils.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private calendar:Ljava/util/Calendar;

.field private component:Ljava/lang/String;

.field private errorDesc:Ljava/lang/String;

.field private errorExtraDesc:Ljava/lang/String;

.field private method:Ljava/lang/String;

.field private recordedTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/DCXAnalyticsMap;->calendar:Ljava/util/Calendar;

    .line 474
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/DCXAnalyticsMap;->component:Ljava/lang/String;

    .line 475
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/DCXAnalyticsMap;->method:Ljava/lang/String;

    .line 476
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/DCXAnalyticsMap;->errorDesc:Ljava/lang/String;

    .line 477
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/DCXAnalyticsMap;->errorExtraDesc:Ljava/lang/String;

    .line 478
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/DCXAnalyticsMap;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/DCXAnalyticsMap;->recordedTime:Ljava/lang/Long;

    .line 479
    return-void
.end method


# virtual methods
.method public isSame(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/DCXAnalyticsMap;)Z
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/DCXAnalyticsMap;->component:Ljava/lang/String;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/DCXAnalyticsMap;->component:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/DCXAnalyticsMap;->method:Ljava/lang/String;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/DCXAnalyticsMap;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/DCXAnalyticsMap;->errorExtraDesc:Ljava/lang/String;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/DCXAnalyticsMap;->errorExtraDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recordTime()V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/DCXAnalyticsMap;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/DCXAnalyticsMap;->recordedTime:Ljava/lang/Long;

    .line 483
    return-void
.end method

.method public shouldUpdateCache(Ljava/lang/Long;)Z
    .locals 4

    .prologue
    .line 491
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/DCXAnalyticsMap;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/DCXAnalyticsMap;->recordedTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
