.class public Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "MediaPresentationDescriptionParser.java"

# interfaces
.implements Lcom/google/android/exoplayer/util/ManifestParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xml/sax/helpers/DefaultHandler;",
        "Lcom/google/android/exoplayer/util/ManifestParser",
        "<",
        "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
        ">;"
    }
.end annotation


# instance fields
.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 53
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private checkAdaptationSetTypeConsistency(II)I
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 237
    if-ne p1, v0, :cond_1

    move p1, p2

    .line 243
    :cond_0
    :goto_0
    return p1

    .line 239
    :cond_1
    if-eq p2, v0, :cond_0

    .line 242
    if-ne p1, p2, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected static isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 507
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 516
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 512
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 540
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 541
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 542
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Landroid/net/Uri;->isAbsolute()Z

    move-result v2

    if-nez v2, :cond_0

    .line 544
    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 546
    :cond_0
    return-object v0
.end method

.method protected static parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 530
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 531
    if-nez v0, :cond_0

    .line 534
    :goto_0
    return-wide p2

    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method protected static parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 520
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    if-nez v0, :cond_0

    .line 524
    :goto_0
    return-wide p2

    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->parseXsDuration(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method protected static parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 550
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected static parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0
.end method

.method protected static parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 559
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected static parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 563
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 564
    if-nez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method protected static parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 569
    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method


# virtual methods
.method protected buildAdaptationSet(IILjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/Representation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/ContentProtection;",
            ">;)",
            "Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;-><init>(IILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method protected buildContentProtection(Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/ContentProtection;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    invoke-direct {v0, p1, v1, v1}, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;-><init>(Ljava/lang/String;Ljava/util/UUID;[B)V

    return-object v0
.end method

.method protected buildFormat(Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/chunk/Format;
    .locals 10

    .prologue
    .line 313
    new-instance v0, Lcom/google/android/exoplayer/chunk/Format;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer/chunk/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected buildMediaPresentationDescription(JJJZJJLcom/google/android/exoplayer/dash/mpd/UtcTimingElement;Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJ",
            "Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/Period;",
            ">;)",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;-><init>(JJJZJJLcom/google/android/exoplayer/dash/mpd/UtcTimingElement;Ljava/util/List;)V

    return-object v1
.end method

.method protected buildPeriod(Ljava/lang/String;JJLjava/util/List;)Lcom/google/android/exoplayer/dash/mpd/Period;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;",
            ">;)",
            "Lcom/google/android/exoplayer/dash/mpd/Period;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/Period;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/dash/mpd/Period;-><init>(Ljava/lang/String;JJLjava/util/List;)V

    return-object v0
.end method

.method protected buildRangedUri(Landroid/net/Uri;Ljava/lang/String;JJ)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .locals 9

    .prologue
    .line 501
    new-instance v1, Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;-><init>(Landroid/net/Uri;Ljava/lang/String;JJ)V

    return-object v1
.end method

.method protected buildRepresentation(JJLjava/lang/String;ILcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;)Lcom/google/android/exoplayer/dash/mpd/Representation;
    .locals 9

    .prologue
    .line 319
    int-to-long v5, p6

    move-wide v0, p1

    move-wide v2, p3

    move-object v4, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer/dash/mpd/Representation;->newInstance(JJLjava/lang/String;JLcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;)Lcom/google/android/exoplayer/dash/mpd/Representation;

    move-result-object v0

    return-object v0
.end method

.method protected buildSegmentList(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJJIJLjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/dash/mpd/RangedUri;",
            "JJJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/RangedUri;",
            ">;)",
            "Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;"
        }
    .end annotation

    .prologue
    .line 399
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-wide/from16 v9, p9

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;-><init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJJIJLjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method protected buildSegmentTemplate(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJJIJLjava/util/List;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Landroid/net/Uri;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/dash/mpd/RangedUri;",
            "JJJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;",
            ">;",
            "Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;",
            "Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;"
        }
    .end annotation

    .prologue
    .line 441
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-wide/from16 v9, p9

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;-><init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJJIJLjava/util/List;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Landroid/net/Uri;)V

    return-object v0
.end method

.method protected buildSegmentTimelineElement(JJ)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;
    .locals 1

    .prologue
    .line 465
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;-><init>(JJ)V

    return-object v0
.end method

.method protected buildSingleSegmentBase(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJLandroid/net/Uri;JJ)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;
    .locals 11

    .prologue
    .line 355
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;-><init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJLandroid/net/Uri;JJ)V

    return-object v0
.end method

.method protected buildUtcTimingElement(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 66
    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 67
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 68
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "MPD"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string/jumbo v1, "inputStream does not contain a valid media presentation description"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    new-instance v1, Lcom/google/android/exoplayer/ParserException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 72
    :cond_1
    :try_start_1
    invoke-virtual {p0, v0, p3, p4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseMediaPresentationDescription(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/net/Uri;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    .line 75
    :catch_1
    move-exception v0

    .line 76
    new-instance v1, Lcom/google/android/exoplayer/ParserException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v0

    return-object v0
.end method

.method protected parseAdaptationSet(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/net/Uri;JJLcom/google/android/exoplayer/dash/mpd/SegmentBase;)Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    const/4 v2, 0x0

    const-string/jumbo v3, "mimeType"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 164
    const/4 v2, 0x0

    const-string/jumbo v3, "lang"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 165
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseAdaptationSetTypeFromMimeType(Ljava/lang/String;)I

    move-result v15

    .line 167
    const/4 v14, -0x1

    .line 168
    const/4 v13, 0x0

    .line 169
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v12, p8

    move-object/from16 v5, p3

    .line 171
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 172
    const-string/jumbo v2, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    move-object v2, v13

    move v3, v14

    move v4, v15

    .line 199
    :goto_1
    const-string/jumbo v6, "AdaptationSet"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 201
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildAdaptationSet(IILjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    move-result-object v2

    return-object v2

    .line 174
    :cond_0
    const-string/jumbo v2, "ContentProtection"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    if-nez v13, :cond_8

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 178
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v14

    move v4, v15

    goto :goto_1

    .line 179
    :cond_1
    const-string/jumbo v2, "ContentComponent"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    const/4 v2, 0x0

    const-string/jumbo v3, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 181
    const/4 v3, 0x0

    const-string/jumbo v4, "contentType"

    .line 182
    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseAdaptationSetType(Ljava/lang/String;)I

    move-result v3

    .line 181
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->checkAdaptationSetTypeConsistency(II)I

    move-result v3

    move v4, v3

    move v3, v2

    move-object v2, v13

    goto :goto_1

    .line 183
    :cond_2
    const-string/jumbo v2, "Representation"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    .line 184
    invoke-virtual/range {v2 .. v12}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseRepresentation(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/net/Uri;JJLjava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;)Lcom/google/android/exoplayer/dash/mpd/Representation;

    move-result-object v3

    .line 186
    iget-object v2, v3, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    .line 187
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseAdaptationSetTypeFromMimeType(Ljava/lang/String;)I

    move-result v2

    .line 186
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->checkAdaptationSetTypeConsistency(II)I

    move-result v2

    .line 188
    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v14

    move v4, v2

    move-object v2, v13

    .line 189
    goto/16 :goto_1

    :cond_3
    const-string/jumbo v2, "SegmentBase"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 190
    check-cast v12, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5, v12}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-result-object v12

    move-object v2, v13

    move v3, v14

    move v4, v15

    goto/16 :goto_1

    .line 191
    :cond_4
    const-string/jumbo v2, "SegmentList"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v6, v12

    .line 192
    check-cast v6, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v7, p6

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;J)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-result-object v12

    move-object v2, v13

    move v3, v14

    move v4, v15

    goto/16 :goto_1

    .line 193
    :cond_5
    const-string/jumbo v2, "SegmentTemplate"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v6, v12

    .line 194
    check-cast v6, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v7, p6

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;J)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-result-object v12

    move-object v2, v13

    move v3, v14

    move v4, v15

    goto/16 :goto_1

    .line 196
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 197
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseAdaptationSetChild(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_7
    move-object v2, v13

    move v3, v14

    move v4, v15

    goto/16 :goto_1

    :cond_8
    move-object v2, v13

    goto/16 :goto_2

    :cond_9
    move-object v13, v2

    move v14, v3

    move v15, v4

    goto/16 :goto_0
.end method

.method protected parseAdaptationSetChild(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    return-void
.end method

.method protected parseAdaptationSetType(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "audio"

    .line 211
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "video"

    .line 212
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "text"

    .line 213
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected parseAdaptationSetTypeFromMimeType(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 219
    :cond_1
    invoke-static {p1}, Lcom/google/android/exoplayer/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 220
    :cond_2
    invoke-static {p1}, Lcom/google/android/exoplayer/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    .line 221
    :cond_3
    invoke-static {p1}, Lcom/google/android/exoplayer/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Lcom/google/android/exoplayer/util/MimeTypes;->isTtml(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer/dash/mpd/ContentProtection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    const/4 v0, 0x0

    const-string/jumbo v1, "schemeIdUri"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildContentProtection(Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    move-result-object v0

    return-object v0
.end method

.method protected parseInitialization(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .locals 2

    .prologue
    .line 478
    const-string/jumbo v0, "sourceURL"

    const-string/jumbo v1, "range"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method protected parseMediaPresentationDescription(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/net/Uri;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 82
    const-string/jumbo v2, "availabilityStartTime"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v18

    .line 83
    const-string/jumbo v2, "mediaPresentationDuration"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 84
    const-string/jumbo v2, "minBufferTime"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    .line 85
    const/4 v2, 0x0

    const-string/jumbo v3, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    if-eqz v2, :cond_2

    const-string/jumbo v3, "dynamic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 87
    :goto_0
    if-eqz v10, :cond_3

    const-string/jumbo v2, "minimumUpdatePeriod"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    .line 88
    :goto_1
    if-eqz v10, :cond_4

    const-string/jumbo v2, "timeShiftBufferDepth"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    .line 90
    :goto_2
    const/4 v15, 0x0

    .line 92
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, p3

    .line 94
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 95
    const-string/jumbo v2, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 96
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 102
    :cond_1
    :goto_3
    const-string/jumbo v2, "MPD"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v3, p0

    move-wide/from16 v4, v18

    .line 104
    invoke-virtual/range {v3 .. v16}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildMediaPresentationDescription(JJJZJJLcom/google/android/exoplayer/dash/mpd/UtcTimingElement;Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v2

    return-object v2

    .line 86
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 87
    :cond_3
    const-wide/16 v11, -0x1

    goto :goto_1

    .line 88
    :cond_4
    const-wide/16 v13, -0x1

    goto :goto_2

    .line 97
    :cond_5
    const-string/jumbo v2, "UTCTiming"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 98
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseUtcTiming(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;

    move-result-object v15

    goto :goto_3

    .line 99
    :cond_6
    const-string/jumbo v2, "Period"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 100
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parsePeriod(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/net/Uri;J)Lcom/google/android/exoplayer/dash/mpd/Period;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method protected parsePeriod(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/net/Uri;J)Lcom/google/android/exoplayer/dash/mpd/Period;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v4, 0x0

    const-string/jumbo v5, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 129
    const-string/jumbo v4, "start"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v6, v7}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    .line 130
    const-string/jumbo v4, "duration"

    move-object/from16 v0, p1

    move-wide/from16 v1, p4

    invoke-static {v0, v4, v1, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v10

    .line 131
    const/4 v12, 0x0

    .line 132
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v7, p3

    .line 134
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 135
    const-string/jumbo v4, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 136
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 147
    :cond_1
    :goto_0
    const-string/jumbo v4, "Period"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v6, p0

    move-object/from16 v7, v18

    move-object/from16 v12, v19

    .line 149
    invoke-virtual/range {v6 .. v12}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildPeriod(Ljava/lang/String;JJLjava/util/List;)Lcom/google/android/exoplayer/dash/mpd/Period;

    move-result-object v4

    return-object v4

    .line 137
    :cond_2
    const-string/jumbo v4, "AdaptationSet"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 138
    invoke-virtual/range {v4 .. v12}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseAdaptationSet(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/net/Uri;JJLcom/google/android/exoplayer/dash/mpd/SegmentBase;)Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_3
    const-string/jumbo v4, "SegmentBase"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 141
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-result-object v12

    goto :goto_0

    .line 142
    :cond_4
    const-string/jumbo v4, "SegmentList"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 143
    const/4 v15, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object v14, v7

    move-wide/from16 v16, v10

    invoke-virtual/range {v12 .. v17}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;J)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-result-object v12

    goto :goto_0

    .line 144
    :cond_5
    const-string/jumbo v4, "SegmentTemplate"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    const/4 v15, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object v14, v7

    move-wide/from16 v16, v10

    invoke-virtual/range {v12 .. v17}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;J)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-result-object v12

    goto :goto_0
.end method

.method protected parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 487
    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 488
    const-wide/16 v4, 0x0

    .line 489
    const-wide/16 v6, -0x1

    .line 490
    invoke-interface {p1, v0, p4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    if-eqz v0, :cond_0

    .line 492
    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 493
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 494
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sub-long/2addr v0, v4

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    :cond_0
    move-object v1, p0

    move-object v2, p2

    .line 496
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildRangedUri(Landroid/net/Uri;Ljava/lang/String;JJ)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method protected parseRepresentation(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/net/Uri;JJLjava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;)Lcom/google/android/exoplayer/dash/mpd/Representation;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    const/4 v2, 0x0

    const-string/jumbo v3, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 281
    const-string/jumbo v2, "bandwidth"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v9

    .line 282
    const-string/jumbo v2, "audioSamplingRate"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v8

    .line 283
    const-string/jumbo v2, "width"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v15

    .line 284
    const-string/jumbo v2, "height"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v16

    .line 285
    const-string/jumbo v2, "mimeType"

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 286
    const-string/jumbo v2, "codecs"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 288
    const/4 v10, -0x1

    move-object/from16 v2, p10

    move-object/from16 v4, p3

    .line 290
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 291
    const-string/jumbo v3, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    move v7, v10

    move-object v12, v2

    move-object v13, v4

    .line 303
    :goto_1
    const-string/jumbo v2, "Representation"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v2, p0

    move-object v3, v14

    move-object/from16 v4, v17

    move v5, v15

    move/from16 v6, v16

    move-object/from16 v10, p9

    .line 305
    invoke-virtual/range {v2 .. v11}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildFormat(Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/chunk/Format;

    move-result-object v10

    .line 307
    const/4 v9, -0x1

    if-eqz v12, :cond_4

    move-object v11, v12

    :goto_2
    move-object/from16 v3, p0

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p2

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildRepresentation(JJLjava/lang/String;ILcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;)Lcom/google/android/exoplayer/dash/mpd/Representation;

    move-result-object v2

    return-object v2

    .line 293
    :cond_0
    const-string/jumbo v3, "AudioChannelConfiguration"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 294
    const/4 v3, 0x0

    const-string/jumbo v5, "value"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object v12, v2

    move-object v13, v4

    goto :goto_1

    .line 295
    :cond_1
    const-string/jumbo v3, "SegmentBase"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 296
    check-cast v2, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-result-object v2

    move v7, v10

    move-object v12, v2

    move-object v13, v4

    goto :goto_1

    .line 297
    :cond_2
    const-string/jumbo v3, "SegmentList"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v5, v2

    .line 298
    check-cast v5, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v6, p6

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;J)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-result-object v2

    move v7, v10

    move-object v12, v2

    move-object v13, v4

    goto :goto_1

    .line 299
    :cond_3
    const-string/jumbo v3, "SegmentTemplate"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v5, v2

    .line 300
    check-cast v5, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v6, p6

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;J)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-result-object v2

    move v7, v10

    move-object v12, v2

    move-object v13, v4

    goto/16 :goto_1

    .line 307
    :cond_4
    new-instance v11, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    invoke-direct {v11, v13}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;-><init>(Landroid/net/Uri;)V

    goto :goto_2

    :cond_5
    move v7, v10

    move-object v12, v2

    move-object v13, v4

    goto/16 :goto_1

    :cond_6
    move v10, v7

    move-object v2, v12

    move-object v4, v13

    goto/16 :goto_0
.end method

.method protected parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    const-string/jumbo v2, "timescale"

    if-eqz p3, :cond_0

    iget-wide v0, p3, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->timescale:J

    :goto_0
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    .line 329
    const-string/jumbo v4, "presentationTimeOffset"

    if-eqz p3, :cond_1

    iget-wide v0, p3, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->presentationTimeOffset:J

    :goto_1
    invoke-static {p1, v4, v0, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 332
    if-eqz p3, :cond_2

    iget-wide v7, p3, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->indexStart:J

    .line 333
    :goto_2
    if-eqz p3, :cond_3

    iget-wide v0, p3, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->indexLength:J

    .line 334
    :goto_3
    const/4 v6, 0x0

    const-string/jumbo v9, "indexRange"

    invoke-interface {p1, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 335
    if-eqz v6, :cond_7

    .line 336
    const-string/jumbo v0, "-"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 337
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 338
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sub-long/2addr v0, v7

    const-wide/16 v10, 0x1

    add-long v9, v0, v10

    .line 341
    :goto_4
    if-eqz p3, :cond_4

    iget-object v0, p3, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->initialization:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    .line 343
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 344
    const-string/jumbo v1, "Initialization"

    invoke-static {p1, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 345
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v1

    .line 347
    :goto_6
    const-string/jumbo v0, "SegmentBase"

    invoke-static {p1, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p0

    move-object v6, p2

    .line 349
    invoke-virtual/range {v0 .. v10}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildSingleSegmentBase(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJLandroid/net/Uri;JJ)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-result-object v0

    return-object v0

    .line 328
    :cond_0
    const-wide/16 v0, 0x1

    goto :goto_0

    .line 329
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 332
    :cond_2
    const-wide/16 v7, 0x0

    goto :goto_2

    .line 333
    :cond_3
    const-wide/16 v0, -0x1

    goto :goto_3

    .line 341
    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    move-object v0, v1

    goto :goto_5

    :cond_6
    move-object v1, v0

    goto :goto_6

    :cond_7
    move-wide v9, v0

    goto :goto_4
.end method

.method protected parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;J)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    const-string/jumbo v4, "timescale"

    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->timescale:J

    :goto_0
    move-object/from16 v0, p1

    invoke-static {v0, v4, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 363
    const-string/jumbo v6, "presentationTimeOffset"

    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->presentationTimeOffset:J

    :goto_1
    move-object/from16 v0, p1

    invoke-static {v0, v6, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 365
    const-string/jumbo v8, "duration"

    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->duration:J

    :goto_2
    move-object/from16 v0, p1

    invoke-static {v0, v8, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    .line 366
    const-string/jumbo v3, "startNumber"

    if-eqz p3, :cond_5

    move-object/from16 v0, p3

    iget v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->startNumber:I

    :goto_3
    move-object/from16 v0, p1

    invoke-static {v0, v3, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 368
    const/4 v8, 0x0

    .line 369
    const/4 v3, 0x0

    .line 370
    const/4 v2, 0x0

    .line 373
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 374
    const-string/jumbo v9, "Initialization"

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 375
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v8

    .line 384
    :cond_1
    :goto_4
    const-string/jumbo v9, "SegmentList"

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 386
    if-eqz p3, :cond_c

    .line 387
    if-eqz v8, :cond_9

    .line 388
    :goto_5
    if-eqz v3, :cond_a

    move-object v13, v3

    .line 389
    :goto_6
    if-eqz v2, :cond_b

    :goto_7
    move-object v14, v2

    move-object v3, v8

    :goto_8
    move-object/from16 v2, p0

    move-wide/from16 v8, p4

    .line 392
    invoke-virtual/range {v2 .. v14}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildSegmentList(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJJIJLjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-result-object v2

    return-object v2

    .line 362
    :cond_2
    const-wide/16 v2, 0x1

    goto :goto_0

    .line 363
    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_1

    .line 365
    :cond_4
    const-wide/16 v2, -0x1

    goto :goto_2

    .line 366
    :cond_5
    const/4 v2, 0x1

    goto :goto_3

    .line 376
    :cond_6
    const-string/jumbo v9, "SegmentTimeline"

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 377
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    goto :goto_4

    .line 378
    :cond_7
    const-string/jumbo v9, "SegmentURL"

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 379
    if-nez v2, :cond_8

    .line 380
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 382
    :cond_8
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentUrl(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 387
    :cond_9
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->initialization:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    goto :goto_5

    .line 388
    :cond_a
    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->segmentTimeline:Ljava/util/List;

    goto :goto_6

    .line 389
    :cond_b
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->mediaSegments:Ljava/util/List;

    goto :goto_7

    :cond_c
    move-object v14, v2

    move-object v13, v3

    move-object v3, v8

    goto :goto_8
.end method

.method protected parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;J)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    const-string/jumbo v4, "timescale"

    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->timescale:J

    :goto_0
    move-object/from16 v0, p1

    invoke-static {v0, v4, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 407
    const-string/jumbo v6, "presentationTimeOffset"

    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->presentationTimeOffset:J

    :goto_1
    move-object/from16 v0, p1

    invoke-static {v0, v6, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 409
    const-string/jumbo v8, "duration"

    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->duration:J

    :goto_2
    move-object/from16 v0, p1

    invoke-static {v0, v8, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    .line 410
    const-string/jumbo v3, "startNumber"

    if-eqz p3, :cond_5

    move-object/from16 v0, p3

    iget v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->startNumber:I

    :goto_3
    move-object/from16 v0, p1

    invoke-static {v0, v3, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 411
    const-string/jumbo v3, "media"

    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->mediaTemplate:Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;)Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    move-result-object v15

    .line 413
    const-string/jumbo v3, "initialization"

    if-eqz p3, :cond_7

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->initializationTemplate:Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;)Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    move-result-object v14

    .line 416
    const/4 v3, 0x0

    .line 417
    const/4 v2, 0x0

    .line 420
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 421
    const-string/jumbo v8, "Initialization"

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 422
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v3

    .line 426
    :cond_1
    :goto_6
    const-string/jumbo v8, "SegmentTemplate"

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 428
    if-eqz p3, :cond_b

    .line 429
    if-eqz v3, :cond_9

    .line 430
    :goto_7
    if-eqz v2, :cond_a

    :goto_8
    move-object v13, v2

    :goto_9
    move-object/from16 v2, p0

    move-wide/from16 v8, p4

    move-object/from16 v16, p2

    .line 433
    invoke-virtual/range {v2 .. v16}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildSegmentTemplate(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJJIJLjava/util/List;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Landroid/net/Uri;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-result-object v2

    return-object v2

    .line 406
    :cond_2
    const-wide/16 v2, 0x1

    goto/16 :goto_0

    .line 407
    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_1

    .line 409
    :cond_4
    const-wide/16 v2, -0x1

    goto :goto_2

    .line 410
    :cond_5
    const/4 v2, 0x1

    goto :goto_3

    .line 411
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 413
    :cond_7
    const/4 v2, 0x0

    goto :goto_5

    .line 423
    :cond_8
    const-string/jumbo v8, "SegmentTimeline"

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 424
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v2

    goto :goto_6

    .line 429
    :cond_9
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->initialization:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    goto :goto_7

    .line 430
    :cond_a
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    goto :goto_8

    :cond_b
    move-object v13, v2

    goto :goto_9
.end method

.method protected parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 447
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 448
    const-wide/16 v0, 0x0

    .line 450
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 451
    const-string/jumbo v2, "S"

    invoke-static {p1, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 452
    const-string/jumbo v2, "t"

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    .line 453
    const-string/jumbo v2, "d"

    invoke-static {p1, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v8

    .line 454
    const-string/jumbo v2, "r"

    invoke-static {p1, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v7, v2, 0x1

    move v2, v3

    .line 455
    :goto_0
    if-ge v2, v7, :cond_1

    .line 456
    invoke-virtual {p0, v0, v1, v8, v9}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildSegmentTimelineElement(JJ)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    add-long v4, v0, v8

    .line 455
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v4

    goto :goto_0

    .line 460
    :cond_1
    const-string/jumbo v2, "SegmentTimeline"

    invoke-static {p1, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    return-object v6
.end method

.method protected parseSegmentUrl(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .locals 2

    .prologue
    .line 482
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "mediaRange"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method protected parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;)Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    if-eqz v0, :cond_0

    .line 472
    invoke-static {v0}, Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;->compile(Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    move-result-object p3

    .line 474
    :cond_0
    return-object p3
.end method

.method protected parseUtcTiming(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    const-string/jumbo v0, "schemeIdUri"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    const-string/jumbo v1, "value"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildUtcTimingElement(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;

    move-result-object v0

    return-object v0
.end method
