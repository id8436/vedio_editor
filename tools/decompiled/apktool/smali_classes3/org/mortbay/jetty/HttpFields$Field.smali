.class public final Lorg/mortbay/jetty/HttpFields$Field;
.super Ljava/lang/Object;
.source "HttpFields.java"


# instance fields
.field private _name:Lorg/mortbay/io/Buffer;

.field private _next:Lorg/mortbay/jetty/HttpFields$Field;

.field private _numValue:J

.field private _prev:Lorg/mortbay/jetty/HttpFields$Field;

.field private _revision:I

.field private _stringValue:Ljava/lang/String;

.field private _value:Lorg/mortbay/io/Buffer;


# direct methods
.method private constructor <init>(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;JI)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1306
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->asImmutableBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_name:Lorg/mortbay/io/Buffer;

    .line 1307
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iput-object p2, p0, Lorg/mortbay/jetty/HttpFields$Field;->_value:Lorg/mortbay/io/Buffer;

    .line 1308
    iput-object v1, p0, Lorg/mortbay/jetty/HttpFields$Field;->_next:Lorg/mortbay/jetty/HttpFields$Field;

    .line 1309
    iput-object v1, p0, Lorg/mortbay/jetty/HttpFields$Field;->_prev:Lorg/mortbay/jetty/HttpFields$Field;

    .line 1310
    iput p5, p0, Lorg/mortbay/jetty/HttpFields$Field;->_revision:I

    .line 1311
    iput-wide p3, p0, Lorg/mortbay/jetty/HttpFields$Field;->_numValue:J

    .line 1312
    iput-object v1, p0, Lorg/mortbay/jetty/HttpFields$Field;->_stringValue:Ljava/lang/String;

    .line 1313
    return-void

    .line 1307
    :cond_0
    new-instance v0, Lorg/mortbay/io/View;

    invoke-direct {v0, p2}, Lorg/mortbay/io/View;-><init>(Lorg/mortbay/io/Buffer;)V

    move-object p2, v0

    goto :goto_0
.end method

.method constructor <init>(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;JILorg/mortbay/jetty/HttpFields$1;)V
    .locals 1

    .prologue
    .line 1293
    invoke-direct/range {p0 .. p5}, Lorg/mortbay/jetty/HttpFields$Field;-><init>(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;JI)V

    return-void
.end method

.method static access$000(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/jetty/HttpFields$Field;
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_prev:Lorg/mortbay/jetty/HttpFields$Field;

    return-object v0
.end method

.method static access$002(Lorg/mortbay/jetty/HttpFields$Field;Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/jetty/HttpFields$Field;
    .locals 0

    .prologue
    .line 1293
    iput-object p1, p0, Lorg/mortbay/jetty/HttpFields$Field;->_prev:Lorg/mortbay/jetty/HttpFields$Field;

    return-object p1
.end method

.method static access$100(Lorg/mortbay/jetty/HttpFields$Field;)I
    .locals 1

    .prologue
    .line 1293
    iget v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_revision:I

    return v0
.end method

.method static access$200(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/io/Buffer;
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_name:Lorg/mortbay/io/Buffer;

    return-object v0
.end method

.method static access$300(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/io/Buffer;
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_value:Lorg/mortbay/io/Buffer;

    return-object v0
.end method

.method static access$400(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/jetty/HttpFields$Field;
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_next:Lorg/mortbay/jetty/HttpFields$Field;

    return-object v0
.end method

.method static access$402(Lorg/mortbay/jetty/HttpFields$Field;Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/jetty/HttpFields$Field;
    .locals 0

    .prologue
    .line 1293
    iput-object p1, p0, Lorg/mortbay/jetty/HttpFields$Field;->_next:Lorg/mortbay/jetty/HttpFields$Field;

    return-object p1
.end method

.method static access$500(Lorg/mortbay/jetty/HttpFields$Field;Lorg/mortbay/io/Buffer;JI)V
    .locals 0

    .prologue
    .line 1293
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mortbay/jetty/HttpFields$Field;->reset(Lorg/mortbay/io/Buffer;JI)V

    return-void
.end method

.method static access$600(Lorg/mortbay/jetty/HttpFields$Field;)V
    .locals 0

    .prologue
    .line 1293
    invoke-direct {p0}, Lorg/mortbay/jetty/HttpFields$Field;->clear()V

    return-void
.end method

.method static access$800(Lorg/mortbay/jetty/HttpFields$Field;)J
    .locals 2

    .prologue
    .line 1293
    iget-wide v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_numValue:J

    return-wide v0
.end method

.method static access$802(Lorg/mortbay/jetty/HttpFields$Field;J)J
    .locals 1

    .prologue
    .line 1293
    iput-wide p1, p0, Lorg/mortbay/jetty/HttpFields$Field;->_numValue:J

    return-wide p1
.end method

.method static access$900(Lorg/mortbay/jetty/HttpFields$Field;)V
    .locals 0

    .prologue
    .line 1293
    invoke-direct {p0}, Lorg/mortbay/jetty/HttpFields$Field;->destroy()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 1318
    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_revision:I

    .line 1319
    return-void
.end method

.method private destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1324
    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_name:Lorg/mortbay/io/Buffer;

    .line 1325
    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_value:Lorg/mortbay/io/Buffer;

    .line 1326
    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_next:Lorg/mortbay/jetty/HttpFields$Field;

    .line 1327
    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_prev:Lorg/mortbay/jetty/HttpFields$Field;

    .line 1328
    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_stringValue:Ljava/lang/String;

    .line 1329
    return-void
.end method

.method private reset(Lorg/mortbay/io/Buffer;JI)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1338
    iput p4, p0, Lorg/mortbay/jetty/HttpFields$Field;->_revision:I

    .line 1339
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_value:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_2

    .line 1341
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iput-object p1, p0, Lorg/mortbay/jetty/HttpFields$Field;->_value:Lorg/mortbay/io/Buffer;

    .line 1342
    iput-wide p2, p0, Lorg/mortbay/jetty/HttpFields$Field;->_numValue:J

    .line 1343
    iput-object v3, p0, Lorg/mortbay/jetty/HttpFields$Field;->_stringValue:Ljava/lang/String;

    .line 1377
    :cond_0
    :goto_1
    return-void

    .line 1341
    :cond_1
    new-instance v0, Lorg/mortbay/io/View;

    invoke-direct {v0, p1}, Lorg/mortbay/io/View;-><init>(Lorg/mortbay/io/Buffer;)V

    move-object p1, v0

    goto :goto_0

    .line 1345
    :cond_2
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1347
    iput-object p1, p0, Lorg/mortbay/jetty/HttpFields$Field;->_value:Lorg/mortbay/io/Buffer;

    .line 1348
    iput-wide p2, p0, Lorg/mortbay/jetty/HttpFields$Field;->_numValue:J

    .line 1349
    iput-object v3, p0, Lorg/mortbay/jetty/HttpFields$Field;->_stringValue:Ljava/lang/String;

    goto :goto_1

    .line 1353
    :cond_3
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_value:Lorg/mortbay/io/Buffer;

    instance-of v0, v0, Lorg/mortbay/io/View;

    if-eqz v0, :cond_4

    .line 1354
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_value:Lorg/mortbay/io/Buffer;

    check-cast v0, Lorg/mortbay/io/View;

    invoke-virtual {v0, p1}, Lorg/mortbay/io/View;->update(Lorg/mortbay/io/Buffer;)V

    .line 1357
    :goto_2
    iput-wide p2, p0, Lorg/mortbay/jetty/HttpFields$Field;->_numValue:J

    .line 1360
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_stringValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_stringValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 1363
    iput-object v3, p0, Lorg/mortbay/jetty/HttpFields$Field;->_stringValue:Ljava/lang/String;

    goto :goto_1

    .line 1356
    :cond_4
    new-instance v0, Lorg/mortbay/io/View;

    invoke-direct {v0, p1}, Lorg/mortbay/io/View;-><init>(Lorg/mortbay/io/Buffer;)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_value:Lorg/mortbay/io/Buffer;

    goto :goto_2

    .line 1366
    :cond_5
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    :goto_3
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 1368
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v0

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v0

    iget-object v2, p0, Lorg/mortbay/jetty/HttpFields$Field;->_stringValue:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v0, v2, :cond_6

    .line 1370
    iput-object v3, p0, Lorg/mortbay/jetty/HttpFields$Field;->_stringValue:Ljava/lang/String;

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_3
.end method


# virtual methods
.method public getIntValue()I
    .locals 2

    .prologue
    .line 1474
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpFields$Field;->getLongValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLongValue()J
    .locals 4

    .prologue
    .line 1480
    iget-wide v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_numValue:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_value:Lorg/mortbay/io/Buffer;

    invoke-static {v0}, Lorg/mortbay/io/BufferUtil;->toLong(Lorg/mortbay/io/Buffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_numValue:J

    .line 1481
    :cond_0
    iget-wide v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_numValue:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1436
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_name:Lorg/mortbay/io/Buffer;

    invoke-static {v0}, Lorg/mortbay/io/BufferUtil;->to8859_1_String(Lorg/mortbay/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNameBuffer()Lorg/mortbay/io/Buffer;
    .locals 1

    .prologue
    .line 1442
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_name:Lorg/mortbay/io/Buffer;

    return-object v0
.end method

.method public getNameOrdinal()I
    .locals 2

    .prologue
    .line 1448
    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpFields$Field;->_name:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpHeaders;->getOrdinal(Lorg/mortbay/io/Buffer;)I

    move-result v0

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1454
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_stringValue:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1455
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_value:Lorg/mortbay/io/Buffer;

    invoke-static {v0}, Lorg/mortbay/io/BufferUtil;->to8859_1_String(Lorg/mortbay/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_stringValue:Ljava/lang/String;

    .line 1456
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public getValueBuffer()Lorg/mortbay/io/Buffer;
    .locals 1

    .prologue
    .line 1462
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_value:Lorg/mortbay/io/Buffer;

    return-object v0
.end method

.method public getValueOrdinal()I
    .locals 2

    .prologue
    .line 1468
    sget-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpFields$Field;->_value:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpHeaderValues;->getOrdinal(Lorg/mortbay/io/Buffer;)I

    move-result v0

    return v0
.end method

.method public put(Lorg/mortbay/io/Buffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 1384
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_name:Lorg/mortbay/io/Buffer;

    instance-of v0, v0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_name:Lorg/mortbay/io/Buffer;

    check-cast v0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v0

    .line 1385
    :goto_0
    if-ltz v0, :cond_4

    .line 1386
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_name:Lorg/mortbay/io/Buffer;

    invoke-interface {p1, v0}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    .line 1406
    :cond_0
    const/16 v0, 0x3a

    invoke-interface {p1, v0}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 1407
    const/16 v0, 0x20

    invoke-interface {p1, v0}, Lorg/mortbay/io/Buffer;->put(B)V

    .line 1409
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_value:Lorg/mortbay/io/Buffer;

    instance-of v0, v0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_value:Lorg/mortbay/io/Buffer;

    check-cast v0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v0

    .line 1410
    :goto_1
    if-gez v0, :cond_1

    iget-wide v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_numValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6

    .line 1411
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_value:Lorg/mortbay/io/Buffer;

    invoke-interface {p1, v0}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    .line 1430
    :cond_2
    invoke-static {p1}, Lorg/mortbay/io/BufferUtil;->putCRLF(Lorg/mortbay/io/Buffer;)V

    .line 1431
    return-void

    :cond_3
    move v0, v1

    .line 1384
    goto :goto_0

    .line 1389
    :cond_4
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_name:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v0

    .line 1390
    iget-object v2, p0, Lorg/mortbay/jetty/HttpFields$Field;->_name:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v3

    .line 1391
    :goto_2
    if-ge v0, v3, :cond_0

    .line 1393
    iget-object v4, p0, Lorg/mortbay/jetty/HttpFields$Field;->_name:Lorg/mortbay/io/Buffer;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v4, v0}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v0

    .line 1394
    sparse-switch v0, :sswitch_data_0

    .line 1401
    invoke-interface {p1, v0}, Lorg/mortbay/io/Buffer;->put(B)V

    move v0, v2

    .line 1403
    goto :goto_2

    :sswitch_0
    move v0, v2

    .line 1399
    goto :goto_2

    :cond_5
    move v0, v1

    .line 1409
    goto :goto_1

    .line 1414
    :cond_6
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_value:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v0

    .line 1415
    iget-object v1, p0, Lorg/mortbay/jetty/HttpFields$Field;->_value:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v2

    .line 1416
    :goto_3
    if-ge v0, v2, :cond_2

    .line 1418
    iget-object v3, p0, Lorg/mortbay/jetty/HttpFields$Field;->_value:Lorg/mortbay/io/Buffer;

    add-int/lit8 v1, v0, 0x1

    invoke-interface {v3, v0}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v0

    .line 1419
    packed-switch v0, :pswitch_data_0

    .line 1425
    :pswitch_0
    invoke-interface {p1, v0}, Lorg/mortbay/io/Buffer;->put(B)V

    move v0, v1

    .line 1427
    goto :goto_3

    :pswitch_1
    move v0, v1

    .line 1423
    goto :goto_3

    .line 1394
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x3a -> :sswitch_0
    .end sparse-switch

    .line 1419
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1487
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_prev:Lorg/mortbay/jetty/HttpFields$Field;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpFields$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/mortbay/jetty/HttpFields$Field;->_revision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/HttpFields$Field;->_value:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$Field;->_next:Lorg/mortbay/jetty/HttpFields$Field;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "<-"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "->"

    goto :goto_1
.end method
