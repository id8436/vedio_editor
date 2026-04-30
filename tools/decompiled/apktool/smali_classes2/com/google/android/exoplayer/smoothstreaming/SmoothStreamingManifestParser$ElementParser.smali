.class abstract Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;
.super Ljava/lang/Object;
.source "SmoothStreamingManifestParser.java"


# instance fields
.field private final baseUri:Landroid/net/Uri;

.field private final normalizedAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final parent:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->parent:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;

    .line 97
    iput-object p2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->baseUri:Landroid/net/Uri;

    .line 98
    iput-object p3, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->tag:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->normalizedAttributes:Ljava/util/List;

    .line 100
    return-void
.end method

.method private newChildParser(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;Ljava/lang/String;Landroid/net/Uri;)Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;
    .locals 1

    .prologue
    .line 159
    const-string/jumbo v0, "QualityLevel"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;

    invoke-direct {v0, p1, p3}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;-><init>(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;Landroid/net/Uri;)V

    .line 166
    :goto_0
    return-object v0

    .line 161
    :cond_0
    const-string/jumbo v0, "Protection"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    new-instance v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ProtectionElementParser;

    invoke-direct {v0, p1, p3}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ProtectionElementParser;-><init>(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;Landroid/net/Uri;)V

    goto :goto_0

    .line 163
    :cond_1
    const-string/jumbo v0, "StreamIndex"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    new-instance v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$StreamElementParser;

    invoke-direct {v0, p1, p3}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$StreamElementParser;-><init>(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;Landroid/net/Uri;)V

    goto :goto_0

    .line 166
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected addChild(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method protected abstract build()Ljava/lang/Object;
.end method

.method protected final getNormalizedAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 192
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->normalizedAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->normalizedAttributes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 194
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 198
    :goto_1
    return-object v0

    .line 192
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->parent:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->parent:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->getNormalizedAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method protected handleChildInline(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public final parse(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 105
    move v1, v0

    .line 108
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 109
    packed-switch v3, :pswitch_data_0

    .line 154
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 111
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 112
    iget-object v4, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->tag:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move v1, v2

    goto :goto_1

    .line 115
    :cond_1
    if-eqz v1, :cond_0

    .line 116
    if-lez v0, :cond_2

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->handleChildInline(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 119
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 121
    :cond_3
    iget-object v4, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->baseUri:Landroid/net/Uri;

    invoke-direct {p0, p0, v3, v4}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->newChildParser(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;Ljava/lang/String;Landroid/net/Uri;)Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;

    move-result-object v3

    .line 122
    if-nez v3, :cond_4

    move v0, v2

    .line 123
    goto :goto_1

    .line 125
    :cond_4
    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->parse(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->addChild(Ljava/lang/Object;)V

    goto :goto_1

    .line 131
    :pswitch_1
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->parseText(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 136
    :pswitch_2
    if-eqz v1, :cond_0

    .line 137
    if-lez v0, :cond_5

    .line 138
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 140
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->parseEndTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 142
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->handleChildInline(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->build()Ljava/lang/Object;

    move-result-object v0

    .line 149
    :goto_2
    return-object v0

    :pswitch_3
    const/4 v0, 0x0

    goto :goto_2

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected final parseBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_0

    .line 312
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 314
    :cond_0
    return p3
.end method

.method protected parseEndTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 233
    return-void
.end method

.method protected final parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    .line 259
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .line 264
    :cond_0
    return p3

    .line 260
    :catch_0
    move-exception v0

    .line 261
    new-instance v1, Lcom/google/android/exoplayer/ParserException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 283
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_0

    .line 286
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p3

    .line 291
    :cond_0
    return-wide p3

    .line 287
    :catch_0
    move-exception v0

    .line 288
    new-instance v1, Lcom/google/android/exoplayer/ParserException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_0

    .line 272
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    new-instance v1, Lcom/google/android/exoplayer/ParserException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 277
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$MissingFieldException;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$MissingFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final parseRequiredLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_0

    .line 300
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    new-instance v1, Lcom/google/android/exoplayer/ParserException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 305
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$MissingFieldException;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$MissingFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final parseRequiredString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$MissingFieldException;
        }
    .end annotation

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_0

    .line 248
    return-object v0

    .line 250
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$MissingFieldException;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$MissingFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 217
    return-void
.end method

.method protected parseText(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 225
    return-void
.end method

.method protected final putNormalizedAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;->normalizedAttributes:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    return-void
.end method
