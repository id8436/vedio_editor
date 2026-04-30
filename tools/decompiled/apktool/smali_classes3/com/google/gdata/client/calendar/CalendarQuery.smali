.class public Lcom/google/gdata/client/calendar/CalendarQuery;
.super Lcom/google/gdata/client/Query;
.source "CalendarQuery.java"


# static fields
.field private static final EMPTY_EXT_PROP_MATCH:[Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;

.field public static final EXT_PROP_QUERY:Ljava/lang/String; = "extq"

.field public static final MAXIMUM_START_TIME:Ljava/lang/String; = "start-max"

.field public static final MINIMUM_START_TIME:Ljava/lang/String; = "start-min"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;

    sput-object v0, Lcom/google/gdata/client/calendar/CalendarQuery;->EMPTY_EXT_PROP_MATCH:[Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/google/gdata/client/Query;-><init>(Ljava/net/URL;)V

    .line 254
    return-void
.end method

.method static synthetic access$000()[Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/gdata/client/calendar/CalendarQuery;->EMPTY_EXT_PROP_MATCH:[Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;

    return-object v0
.end method


# virtual methods
.method public getExtendedPropertyQuery()[Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;
    .locals 1

    .prologue
    .line 371
    const-string/jumbo v0, "extq"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/calendar/CalendarQuery;->getStringCustomParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    if-nez v0, :cond_0

    .line 373
    sget-object v0, Lcom/google/gdata/client/calendar/CalendarQuery;->EMPTY_EXT_PROP_MATCH:[Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;

    .line 375
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;->arrayFromExtendedPropertyQueryString(Ljava/lang/String;)[Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;

    move-result-object v0

    goto :goto_0
.end method

.method public getMaximumStartTime()Lcom/google/gdata/data/DateTime;
    .locals 2

    .prologue
    .line 333
    const-string/jumbo v0, "start-max"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/calendar/CalendarQuery;->getCustomParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 334
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 335
    const/4 v0, 0x0

    .line 337
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/Query$CustomParameter;

    invoke-virtual {v0}, Lcom/google/gdata/client/Query$CustomParameter;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/data/DateTime;->parseDateTime(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public getMinimumStartTime()Lcom/google/gdata/data/DateTime;
    .locals 2

    .prologue
    .line 291
    const-string/jumbo v0, "start-min"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/calendar/CalendarQuery;->getCustomParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 292
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 293
    const/4 v0, 0x0

    .line 295
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/Query$CustomParameter;

    invoke-virtual {v0}, Lcom/google/gdata/client/Query$CustomParameter;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/data/DateTime;->parseDateTime(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs setExtendedPropertyQuery([Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;)V
    .locals 4

    .prologue
    .line 351
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 352
    :cond_0
    const-string/jumbo v0, "extq"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/calendar/CalendarQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :goto_0
    return-void

    .line 355
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    array-length v2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    .line 357
    invoke-virtual {v3}, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 359
    :cond_2
    const-string/jumbo v0, "extq"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/calendar/CalendarQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMaximumStartTime(Lcom/google/gdata/data/DateTime;)V
    .locals 4

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/gdata/client/calendar/CalendarQuery;->getCustomParameters()Ljava/util/List;

    move-result-object v1

    .line 313
    const-string/jumbo v0, "start-max"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/calendar/CalendarQuery;->getCustomParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/Query$CustomParameter;

    .line 314
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 318
    :cond_0
    if-eqz p1, :cond_1

    .line 319
    new-instance v0, Lcom/google/gdata/client/Query$CustomParameter;

    const-string/jumbo v2, "start-max"

    invoke-virtual {p1}, Lcom/google/gdata/data/DateTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/google/gdata/client/Query$CustomParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_1
    return-void
.end method

.method public setMinimumStartTime(Lcom/google/gdata/data/DateTime;)V
    .locals 4

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/google/gdata/client/calendar/CalendarQuery;->getCustomParameters()Ljava/util/List;

    move-result-object v1

    .line 271
    const-string/jumbo v0, "start-min"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/calendar/CalendarQuery;->getCustomParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/Query$CustomParameter;

    .line 272
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    :cond_0
    if-eqz p1, :cond_1

    .line 277
    new-instance v0, Lcom/google/gdata/client/Query$CustomParameter;

    const-string/jumbo v2, "start-min"

    invoke-virtual {p1}, Lcom/google/gdata/data/DateTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/google/gdata/client/Query$CustomParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_1
    return-void
.end method
