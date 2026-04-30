.class public Lorg/mortbay/util/ajax/JSON;
.super Ljava/lang/Object;
.source "JSON.java"


# static fields
.field private static __default:Lorg/mortbay/util/ajax/JSON;

.field static class$java$lang$Object:Ljava/lang/Class;

.field static class$org$mortbay$util$ajax$JSON:Ljava/lang/Class;

.field static class$org$mortbay$util$ajax$JSON$Convertible:Ljava/lang/Class;


# instance fields
.field private _convertors:Ljava/util/Map;

.field private _stringBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lorg/mortbay/util/ajax/JSON;

    invoke-direct {v0}, Lorg/mortbay/util/ajax/JSON;-><init>()V

    sput-object v0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/util/ajax/JSON;->_convertors:Ljava/util/Map;

    .line 78
    const/16 v0, 0x100

    iput v0, p0, Lorg/mortbay/util/ajax/JSON;->_stringBufferSize:I

    .line 83
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 511
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method protected static complete(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)V
    .locals 4

    .prologue
    .line 1178
    const/4 v0, 0x0

    .line 1179
    :goto_0
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1181
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v2

    .line 1182
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v0, :cond_0

    .line 1183
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Unexpected \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " while seeking  \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    .line 1184
    goto :goto_0

    .line 1186
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1187
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Expected \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1188
    :cond_2
    return-void
.end method

.method public static getDefault()Lorg/mortbay/util/ajax/JSON;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    new-instance v1, Lorg/mortbay/util/ajax/JSON$StringSource;

    invoke-static {p0}, Lorg/mortbay/util/IO;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mortbay/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    new-instance v1, Lorg/mortbay/util/ajax/JSON$StringSource;

    invoke-static {p0}, Lorg/mortbay/util/IO;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mortbay/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    new-instance v1, Lorg/mortbay/util/ajax/JSON$ReaderSource;

    invoke-direct {v1, p0}, Lorg/mortbay/util/ajax/JSON$ReaderSource;-><init>(Ljava/io/Reader;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/Reader;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    new-instance v1, Lorg/mortbay/util/ajax/JSON$ReaderSource;

    invoke-direct {v1, p0}, Lorg/mortbay/util/ajax/JSON$ReaderSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v1, p1}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 164
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    new-instance v1, Lorg/mortbay/util/ajax/JSON$StringSource;

    invoke-direct {v1, p0}, Lorg/mortbay/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 174
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    new-instance v1, Lorg/mortbay/util/ajax/JSON$StringSource;

    invoke-direct {v1, p0}, Lorg/mortbay/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static registerConvertor(Ljava/lang/Class;Lorg/mortbay/util/ajax/JSON$Convertor;)V
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v0, p0, p1}, Lorg/mortbay/util/ajax/JSON;->addConvertor(Ljava/lang/Class;Lorg/mortbay/util/ajax/JSON$Convertor;)V

    .line 116
    return-void
.end method

.method public static setDefault(Lorg/mortbay/util/ajax/JSON;)V
    .locals 0

    .prologue
    .line 125
    sput-object p0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    .line 126
    return-void
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    new-instance v1, Ljava/lang/StringBuffer;

    sget-object v0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v0}, Lorg/mortbay/util/ajax/JSON;->getStringBufferSize()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 131
    monitor-enter v1

    .line 133
    :try_start_0
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v0, v1, p0}, Lorg/mortbay/util/ajax/JSON;->append(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static toString(Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    new-instance v1, Ljava/lang/StringBuffer;

    sget-object v0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v0}, Lorg/mortbay/util/ajax/JSON;->getStringBufferSize()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 141
    monitor-enter v1

    .line 143
    :try_start_0
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v0, v1, p0}, Lorg/mortbay/util/ajax/JSON;->appendMap(Ljava/lang/StringBuffer;Ljava/util/Map;)V

    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    new-instance v1, Ljava/lang/StringBuffer;

    sget-object v0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v0}, Lorg/mortbay/util/ajax/JSON;->getStringBufferSize()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 151
    monitor-enter v1

    .line 153
    :try_start_0
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v0, v1, p0}, Lorg/mortbay/util/ajax/JSON;->appendArray(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addConvertor(Ljava/lang/Class;Lorg/mortbay/util/ajax/JSON$Convertor;)V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON;->_convertors:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    return-void
.end method

.method public addConvertorFor(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Convertor;)V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON;->_convertors:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 250
    if-nez p2, :cond_0

    .line 251
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    :goto_0
    return-void

    .line 252
    :cond_0
    instance-of v0, p2, Lorg/mortbay/util/ajax/JSON$Convertible;

    if-eqz v0, :cond_1

    .line 253
    check-cast p2, Lorg/mortbay/util/ajax/JSON$Convertible;

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/ajax/JSON;->appendJSON(Ljava/lang/StringBuffer;Lorg/mortbay/util/ajax/JSON$Convertible;)V

    goto :goto_0

    .line 254
    :cond_1
    instance-of v0, p2, Lorg/mortbay/util/ajax/JSON$Generator;

    if-eqz v0, :cond_2

    .line 255
    check-cast p2, Lorg/mortbay/util/ajax/JSON$Generator;

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/ajax/JSON;->appendJSON(Ljava/lang/StringBuffer;Lorg/mortbay/util/ajax/JSON$Generator;)V

    goto :goto_0

    .line 256
    :cond_2
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 257
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/ajax/JSON;->appendMap(Ljava/lang/StringBuffer;Ljava/util/Map;)V

    goto :goto_0

    .line 258
    :cond_3
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_4

    .line 259
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/ajax/JSON;->appendArray(Ljava/lang/StringBuffer;Ljava/util/Collection;)V

    goto :goto_0

    .line 260
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 261
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/ajax/JSON;->appendArray(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    goto :goto_0

    .line 262
    :cond_5
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_6

    .line 263
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/ajax/JSON;->appendNumber(Ljava/lang/StringBuffer;Ljava/lang/Number;)V

    goto :goto_0

    .line 264
    :cond_6
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 265
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/ajax/JSON;->appendBoolean(Ljava/lang/StringBuffer;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 266
    :cond_7
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 267
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/ajax/JSON;->appendString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/util/ajax/JSON;->getConvertor(Ljava/lang/Class;)Lorg/mortbay/util/ajax/JSON$Convertor;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_9

    .line 272
    invoke-virtual {p0, p1, v0, p2}, Lorg/mortbay/util/ajax/JSON;->appendJSON(Ljava/lang/StringBuffer;Lorg/mortbay/util/ajax/JSON$Convertor;Ljava/lang/Object;)V

    goto :goto_0

    .line 274
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/util/ajax/JSON;->appendString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public appendArray(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 426
    if-nez p2, :cond_0

    .line 428
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->appendNull(Ljava/lang/StringBuffer;)V

    .line 443
    :goto_0
    return-void

    .line 432
    :cond_0
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 433
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 435
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 437
    if-eqz v0, :cond_1

    .line 438
    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 439
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/mortbay/util/ajax/JSON;->append(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 442
    :cond_2
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public appendArray(Ljava/lang/StringBuffer;Ljava/util/Collection;)V
    .locals 3

    .prologue
    .line 403
    if-nez p2, :cond_0

    .line 405
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->appendNull(Ljava/lang/StringBuffer;)V

    .line 422
    :goto_0
    return-void

    .line 409
    :cond_0
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 410
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 411
    const/4 v0, 0x1

    .line 412
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 414
    if-nez v0, :cond_1

    .line 415
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 417
    :cond_1
    const/4 v0, 0x0

    .line 418
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/mortbay/util/ajax/JSON;->append(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    goto :goto_1

    .line 421
    :cond_2
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public appendBoolean(Ljava/lang/StringBuffer;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 447
    if-nez p2, :cond_0

    .line 449
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->appendNull(Ljava/lang/StringBuffer;)V

    .line 453
    :goto_0
    return-void

    .line 452
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "true"

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_1
.end method

.method public appendJSON(Ljava/lang/StringBuffer;Lorg/mortbay/util/ajax/JSON$Convertible;)V
    .locals 4

    .prologue
    const/16 v3, 0x7b

    const/4 v2, 0x0

    .line 300
    const/4 v0, 0x1

    new-array v0, v0, [C

    aput-char v3, v0, v2

    .line 302
    new-instance v1, Lorg/mortbay/util/ajax/JSON$2;

    invoke-direct {v1, p0, v0, p1}, Lorg/mortbay/util/ajax/JSON$2;-><init>(Lorg/mortbay/util/ajax/JSON;[CLjava/lang/StringBuffer;)V

    invoke-interface {p2, v1}, Lorg/mortbay/util/ajax/JSON$Convertible;->toJSON(Lorg/mortbay/util/ajax/JSON$Output;)V

    .line 367
    aget-char v1, v0, v2

    if-ne v1, v3, :cond_1

    .line 368
    const-string/jumbo v0, "{}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    aget-char v0, v0, v2

    if-eqz v0, :cond_0

    .line 370
    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public appendJSON(Ljava/lang/StringBuffer;Lorg/mortbay/util/ajax/JSON$Convertor;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 285
    new-instance v0, Lorg/mortbay/util/ajax/JSON$1;

    invoke-direct {v0, p0, p2, p3}, Lorg/mortbay/util/ajax/JSON$1;-><init>(Lorg/mortbay/util/ajax/JSON;Lorg/mortbay/util/ajax/JSON$Convertor;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/util/ajax/JSON;->appendJSON(Ljava/lang/StringBuffer;Lorg/mortbay/util/ajax/JSON$Convertible;)V

    .line 296
    return-void
.end method

.method public appendJSON(Ljava/lang/StringBuffer;Lorg/mortbay/util/ajax/JSON$Generator;)V
    .locals 0

    .prologue
    .line 375
    invoke-interface {p2, p1}, Lorg/mortbay/util/ajax/JSON$Generator;->addJSON(Ljava/lang/StringBuffer;)V

    .line 376
    return-void
.end method

.method public appendMap(Ljava/lang/StringBuffer;Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 380
    if-nez p2, :cond_0

    .line 382
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->appendNull(Ljava/lang/StringBuffer;)V

    .line 399
    :goto_0
    return-void

    .line 386
    :cond_0
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 387
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 388
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 391
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 392
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 393
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/util/ajax/JSON;->append(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 394
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 398
    :cond_2
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public appendNull(Ljava/lang/StringBuffer;)V
    .locals 1

    .prologue
    .line 280
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    return-void
.end method

.method public appendNumber(Ljava/lang/StringBuffer;Ljava/lang/Number;)V
    .locals 0

    .prologue
    .line 457
    if-nez p2, :cond_0

    .line 459
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->appendNull(Ljava/lang/StringBuffer;)V

    .line 463
    :goto_0
    return-void

    .line 462
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public appendString(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 467
    if-nez p2, :cond_0

    .line 469
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->appendNull(Ljava/lang/StringBuffer;)V

    .line 474
    :goto_0
    return-void

    .line 473
    :cond_0
    invoke-static {p1, p2}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected contextFor(Ljava/lang/String;)Lorg/mortbay/util/ajax/JSON;
    .locals 0

    .prologue
    .line 506
    return-object p0
.end method

.method protected contextForArray()Lorg/mortbay/util/ajax/JSON;
    .locals 0

    .prologue
    .line 501
    return-object p0
.end method

.method protected convertTo(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 511
    if-eqz p1, :cond_1

    sget-object v0, Lorg/mortbay/util/ajax/JSON;->class$org$mortbay$util$ajax$JSON$Convertible:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "org.mortbay.util.ajax.JSON$Convertible"

    invoke-static {v0}, Lorg/mortbay/util/ajax/JSON;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/ajax/JSON;->class$org$mortbay$util$ajax$JSON$Convertible:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/util/ajax/JSON$Convertible;

    .line 516
    invoke-interface {v0, p2}, Lorg/mortbay/util/ajax/JSON$Convertible;->fromJSON(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_1
    return-object v0

    .line 511
    :cond_0
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->class$org$mortbay$util$ajax$JSON$Convertible:Ljava/lang/Class;

    goto :goto_0

    .line 519
    :catch_0
    move-exception v0

    .line 521
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 525
    :cond_1
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->getConvertor(Ljava/lang/Class;)Lorg/mortbay/util/ajax/JSON$Convertor;

    move-result-object v0

    .line 526
    if-eqz v0, :cond_2

    .line 528
    invoke-interface {v0, p2}, Lorg/mortbay/util/ajax/JSON$Convertor;->fromJSON(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p2

    .line 530
    goto :goto_1
.end method

.method public fromJSON(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 239
    new-instance v0, Lorg/mortbay/util/ajax/JSON$StringSource;

    invoke-direct {v0, p1}, Lorg/mortbay/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0, v0}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getConvertor(Ljava/lang/Class;)Lorg/mortbay/util/ajax/JSON$Convertor;
    .locals 6

    .prologue
    .line 554
    .line 555
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON;->_convertors:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/util/ajax/JSON$Convertor;

    .line 556
    if-nez v0, :cond_4

    sget-object v1, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    if-eq p0, v1, :cond_4

    .line 557
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v0, p1}, Lorg/mortbay/util/ajax/JSON;->getConvertor(Ljava/lang/Class;)Lorg/mortbay/util/ajax/JSON$Convertor;

    move-result-object v0

    move-object v2, v0

    move-object v1, p1

    .line 559
    :goto_0
    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    sget-object v0, Lorg/mortbay/util/ajax/JSON;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "java.lang.Object"

    invoke-static {v0}, Lorg/mortbay/util/ajax/JSON;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/ajax/JSON;->class$java$lang$Object:Ljava/lang/Class;

    :goto_1
    if-eq v1, v0, :cond_3

    .line 561
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v4

    .line 562
    const/4 v0, 0x0

    move v5, v0

    move-object v0, v2

    move v2, v5

    .line 563
    :goto_2
    if-nez v0, :cond_1

    if-eqz v4, :cond_1

    array-length v3, v4

    if-ge v2, v3, :cond_1

    .line 564
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON;->_convertors:Ljava/util/Map;

    add-int/lit8 v3, v2, 0x1

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/util/ajax/JSON$Convertor;

    move v2, v3

    goto :goto_2

    .line 559
    :cond_0
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_1

    .line 565
    :cond_1
    if-nez v0, :cond_2

    .line 567
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 568
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON;->_convertors:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/util/ajax/JSON$Convertor;

    :cond_2
    move-object v2, v0

    .line 570
    goto :goto_0

    .line 571
    :cond_3
    return-object v2

    :cond_4
    move-object v2, v0

    move-object v1, p1

    goto :goto_0
.end method

.method public getConvertorFor(Ljava/lang/String;)Lorg/mortbay/util/ajax/JSON$Convertor;
    .locals 2

    .prologue
    .line 592
    .line 593
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON;->_convertors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/util/ajax/JSON$Convertor;

    .line 594
    if-nez v0, :cond_0

    sget-object v1, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    if-eq p0, v1, :cond_0

    .line 595
    sget-object v0, Lorg/mortbay/util/ajax/JSON;->__default:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v0, p1}, Lorg/mortbay/util/ajax/JSON;->getConvertorFor(Ljava/lang/String;)Lorg/mortbay/util/ajax/JSON$Convertor;

    move-result-object v0

    .line 596
    :cond_0
    return-object v0
.end method

.method public getStringBufferSize()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/mortbay/util/ajax/JSON;->_stringBufferSize:I

    return v0
.end method

.method protected handleUnknown(Lorg/mortbay/util/ajax/JSON$Source;C)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 788
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "unknown char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\'("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ") in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 496
    new-array v0, p1, [Ljava/lang/Object;

    return-object v0
.end method

.method protected newMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 491
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public parse(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 689
    move v0, v1

    .line 691
    :goto_0
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 693
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->peek()C

    move-result v6

    .line 696
    if-ne v0, v4, :cond_1

    .line 698
    sparse-switch v6, :sswitch_data_0

    .line 780
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 701
    :sswitch_0
    const/4 v0, -0x1

    .line 702
    goto :goto_1

    :sswitch_1
    move v0, v2

    .line 704
    goto :goto_1

    .line 708
    :cond_1
    if-le v0, v4, :cond_3

    .line 710
    sparse-switch v6, :sswitch_data_1

    move v0, v2

    .line 722
    goto :goto_1

    :sswitch_2
    move v0, v3

    .line 714
    goto :goto_1

    .line 716
    :sswitch_3
    if-ne v0, v3, :cond_2

    move v0, v1

    .line 717
    goto :goto_1

    :cond_2
    move v0, v2

    .line 720
    goto :goto_1

    .line 726
    :cond_3
    if-gez v0, :cond_4

    .line 728
    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    move v0, v1

    .line 733
    goto :goto_1

    .line 741
    :cond_4
    sparse-switch v6, :sswitch_data_2

    .line 773
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 774
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->parseNumber(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Number;

    move-result-object v0

    .line 783
    :goto_2
    return-object v0

    .line 744
    :sswitch_4
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->parseObject(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 746
    :sswitch_5
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->parseArray(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 748
    :sswitch_6
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->parseString(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 750
    :sswitch_7
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->parseNumber(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Number;

    move-result-object v0

    goto :goto_2

    .line 753
    :sswitch_8
    const-string/jumbo v0, "null"

    invoke-static {v0, p1}, Lorg/mortbay/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)V

    move-object v0, v5

    .line 754
    goto :goto_2

    .line 756
    :sswitch_9
    const-string/jumbo v0, "true"

    invoke-static {v0, p1}, Lorg/mortbay/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)V

    .line 757
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    .line 759
    :sswitch_a
    const-string/jumbo v0, "false"

    invoke-static {v0, p1}, Lorg/mortbay/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)V

    .line 760
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 762
    :sswitch_b
    const-string/jumbo v0, "undefined"

    invoke-static {v0, p1}, Lorg/mortbay/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)V

    move-object v0, v5

    .line 763
    goto :goto_2

    .line 765
    :sswitch_c
    const-string/jumbo v0, "NaN"

    invoke-static {v0, p1}, Lorg/mortbay/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)V

    move-object v0, v5

    .line 766
    goto :goto_2

    :sswitch_d
    move v0, v4

    .line 770
    goto :goto_1

    .line 775
    :cond_5
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_0

    .line 777
    invoke-virtual {p0, p1, v6}, Lorg/mortbay/util/ajax/JSON;->handleUnknown(Lorg/mortbay/util/ajax/JSON$Source;C)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v5

    .line 783
    goto :goto_2

    .line 698
    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch

    .line 710
    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch

    .line 728
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 741
    :sswitch_data_2
    .sparse-switch
        0x22 -> :sswitch_6
        0x2d -> :sswitch_7
        0x2f -> :sswitch_d
        0x4e -> :sswitch_c
        0x5b -> :sswitch_5
        0x66 -> :sswitch_a
        0x6e -> :sswitch_8
        0x74 -> :sswitch_9
        0x75 -> :sswitch_b
        0x7b -> :sswitch_4
    .end sparse-switch
.end method

.method public parse(Lorg/mortbay/util/ajax/JSON$Source;Z)Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 601
    .line 602
    if-nez p2, :cond_1

    .line 603
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v0

    .line 683
    :cond_0
    return-object v0

    .line 607
    :cond_1
    const/4 v0, 0x0

    move v1, v2

    move v3, v4

    .line 608
    :goto_0
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 610
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->peek()C

    move-result v7

    .line 613
    if-ne v3, v2, :cond_3

    .line 615
    sparse-switch v7, :sswitch_data_0

    .line 680
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 618
    :sswitch_0
    const/4 v3, -0x1

    .line 619
    goto :goto_1

    .line 622
    :sswitch_1
    if-ne v1, v2, :cond_9

    move v1, v5

    move v3, v4

    .line 625
    goto :goto_1

    .line 630
    :cond_3
    if-le v3, v2, :cond_5

    .line 632
    sparse-switch v7, :sswitch_data_1

    move v3, v5

    .line 648
    goto :goto_1

    :sswitch_2
    move v3, v6

    .line 636
    goto :goto_1

    .line 638
    :sswitch_3
    if-ne v3, v6, :cond_4

    .line 641
    if-eq v1, v5, :cond_0

    move v3, v4

    goto :goto_1

    :cond_4
    move v3, v5

    .line 646
    goto :goto_1

    .line 652
    :cond_5
    if-gez v3, :cond_6

    .line 654
    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    move v3, v4

    .line 658
    goto :goto_1

    .line 666
    :cond_6
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_2

    .line 668
    const/16 v8, 0x2f

    if-ne v7, v8, :cond_7

    move v3, v2

    .line 669
    goto :goto_1

    .line 670
    :cond_7
    const/16 v8, 0x2a

    if-ne v7, v8, :cond_8

    move v3, v6

    .line 671
    goto :goto_1

    .line 672
    :cond_8
    if-nez v0, :cond_2

    .line 674
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_9
    move v3, v5

    goto :goto_1

    .line 615
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch

    .line 632
    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch

    .line 654
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected parseArray(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 841
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v0

    const/16 v3, 0x5b

    if-eq v0, v3, :cond_0

    .line 842
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    move v0, v1

    move-object v3, v4

    move-object v5, v4

    move v6, v2

    .line 849
    :goto_0
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 851
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->peek()C

    move-result v7

    .line 852
    sparse-switch v7, :sswitch_data_0

    .line 876
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 877
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 855
    :sswitch_0
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    .line 856
    packed-switch v6, :pswitch_data_0

    .line 865
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mortbay/util/ajax/JSON;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    .line 859
    :pswitch_0
    invoke-virtual {p0, v2}, Lorg/mortbay/util/ajax/JSON;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 861
    :pswitch_1
    invoke-virtual {p0, v1}, Lorg/mortbay/util/ajax/JSON;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 862
    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    .line 869
    :sswitch_1
    if-eqz v0, :cond_1

    .line 870
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 872
    :cond_1
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move v0, v1

    .line 873
    goto :goto_0

    .line 881
    :cond_2
    add-int/lit8 v7, v6, 0x1

    if-nez v6, :cond_3

    .line 882
    invoke-virtual {p0}, Lorg/mortbay/util/ajax/JSON;->contextForArray()Lorg/mortbay/util/ajax/JSON;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    move v6, v7

    move v0, v2

    goto :goto_0

    .line 883
    :cond_3
    if-nez v5, :cond_4

    .line 885
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 886
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    invoke-virtual {p0}, Lorg/mortbay/util/ajax/JSON;->contextForArray()Lorg/mortbay/util/ajax/JSON;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v3

    .line 888
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v4

    move-object v5, v0

    move v6, v7

    move v0, v2

    .line 889
    goto :goto_0

    .line 893
    :cond_4
    invoke-virtual {p0}, Lorg/mortbay/util/ajax/JSON;->contextForArray()Lorg/mortbay/util/ajax/JSON;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v0

    .line 894
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    move-object v3, v4

    move v6, v7

    .line 895
    goto :goto_0

    .line 902
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unexpected end of array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 852
    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_1
        0x5d -> :sswitch_0
    .end sparse-switch

    .line 856
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public parseNumber(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Number;
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    .line 1058
    const/4 v0, 0x0

    .line 1060
    const/4 v5, 0x0

    move v4, v0

    move-wide v0, v2

    .line 1062
    :goto_0
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1064
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->peek()C

    move-result v6

    .line 1065
    sparse-switch v6, :sswitch_data_0

    move-object v2, v5

    .line 1105
    :goto_1
    if-nez v2, :cond_3

    .line 1106
    if-eqz v4, :cond_0

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    :cond_0
    invoke-static {v0, v1}, Lorg/mortbay/util/TypeUtil;->newLong(J)Ljava/lang/Long;

    move-result-object v0

    .line 1138
    :goto_2
    return-object v0

    .line 1077
    :sswitch_0
    const-wide/16 v8, 0xa

    mul-long/2addr v0, v8

    add-int/lit8 v6, v6, -0x30

    int-to-long v6, v6

    add-long/2addr v0, v6

    .line 1078
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 1083
    :sswitch_1
    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 1084
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "bad number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1085
    :cond_1
    const/4 v4, 0x1

    .line 1086
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 1092
    :sswitch_2
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1093
    if-eqz v4, :cond_2

    .line 1094
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1095
    :cond_2
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1096
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1097
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    goto :goto_1

    .line 1108
    :cond_3
    monitor-enter v2

    .line 1110
    :goto_3
    :try_start_0
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1112
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->peek()C

    move-result v0

    .line 1113
    sparse-switch v0, :sswitch_data_1

    .line 1138
    :cond_4
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_2

    .line 1139
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1130
    :sswitch_3
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1131
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_5
    move-object v2, v5

    goto :goto_1

    .line 1065
    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_1
        0x2d -> :sswitch_1
        0x2e -> :sswitch_2
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
        0x45 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch

    .line 1113
    :sswitch_data_1
    .sparse-switch
        0x2b -> :sswitch_3
        0x2d -> :sswitch_3
        0x2e -> :sswitch_3
        0x30 -> :sswitch_3
        0x31 -> :sswitch_3
        0x32 -> :sswitch_3
        0x33 -> :sswitch_3
        0x34 -> :sswitch_3
        0x35 -> :sswitch_3
        0x36 -> :sswitch_3
        0x37 -> :sswitch_3
        0x38 -> :sswitch_3
        0x39 -> :sswitch_3
        0x45 -> :sswitch_3
        0x65 -> :sswitch_3
    .end sparse-switch
.end method

.method protected parseObject(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/16 v3, 0x7d

    .line 793
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v0

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    .line 794
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 795
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/util/ajax/JSON;->newMap()Ljava/util/Map;

    move-result-object v1

    .line 797
    const-string/jumbo v0, "\"}"

    invoke-virtual {p0, v0, p1}, Lorg/mortbay/util/ajax/JSON;->seekTo(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)C

    move-result v0

    .line 799
    :goto_0
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 801
    if-ne v0, v3, :cond_2

    .line 803
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    .line 822
    :cond_1
    const-string/jumbo v0, "class"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 823
    if-eqz v0, :cond_4

    .line 827
    :try_start_0
    sget-object v2, Lorg/mortbay/util/ajax/JSON;->class$org$mortbay$util$ajax$JSON:Ljava/lang/Class;

    if-nez v2, :cond_3

    const-string/jumbo v2, "org.mortbay.util.ajax.JSON"

    invoke-static {v2}, Lorg/mortbay/util/ajax/JSON;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/mortbay/util/ajax/JSON;->class$org$mortbay$util$ajax$JSON:Ljava/lang/Class;

    :goto_1
    invoke-static {v2, v0}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 828
    invoke-virtual {p0, v0, v1}, Lorg/mortbay/util/ajax/JSON;->convertTo(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 835
    :goto_2
    return-object v0

    .line 807
    :cond_2
    invoke-virtual {p0, p1}, Lorg/mortbay/util/ajax/JSON;->parseString(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/String;

    move-result-object v0

    .line 808
    const/16 v2, 0x3a

    invoke-virtual {p0, v2, p1}, Lorg/mortbay/util/ajax/JSON;->seekTo(CLorg/mortbay/util/ajax/JSON$Source;)V

    .line 809
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    .line 811
    invoke-virtual {p0, v0}, Lorg/mortbay/util/ajax/JSON;->contextFor(Ljava/lang/String;)Lorg/mortbay/util/ajax/JSON;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/mortbay/util/ajax/JSON;->parse(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v2

    .line 812
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    const-string/jumbo v0, ",}"

    invoke-virtual {p0, v0, p1}, Lorg/mortbay/util/ajax/JSON;->seekTo(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)C

    .line 815
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v0

    .line 816
    if-eq v0, v3, :cond_1

    .line 819
    const-string/jumbo v0, "\"}"

    invoke-virtual {p0, v0, p1}, Lorg/mortbay/util/ajax/JSON;->seekTo(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)C

    move-result v0

    goto :goto_0

    .line 827
    :cond_3
    :try_start_1
    sget-object v2, Lorg/mortbay/util/ajax/JSON;->class$org$mortbay$util$ajax$JSON:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 830
    :catch_0
    move-exception v0

    .line 832
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_4
    move-object v0, v1

    .line 835
    goto :goto_2
.end method

.method protected parseString(Lorg/mortbay/util/ajax/JSON$Source;)Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v3, 0x1

    const/16 v9, 0x5c

    const/16 v8, 0x22

    const/4 v1, 0x0

    .line 908
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v0

    if-eq v0, v8, :cond_0

    .line 909
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 913
    :cond_0
    const/4 v5, 0x0

    .line 914
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->scratchBuffer()[C

    move-result-object v6

    .line 916
    if-eqz v6, :cond_6

    move v0, v1

    move v2, v1

    .line 919
    :goto_0
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 921
    array-length v4, v6

    if-lt v0, v4, :cond_1

    .line 925
    new-instance v4, Ljava/lang/StringBuffer;

    array-length v5, v6

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 926
    invoke-virtual {v4, v6, v1, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 987
    :goto_1
    if-nez v4, :cond_5

    .line 988
    invoke-virtual {p0, v6, v1, v0}, Lorg/mortbay/util/ajax/JSON;->toString([CII)Ljava/lang/String;

    move-result-object v0

    .line 1052
    :goto_2
    return-object v0

    .line 930
    :cond_1
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v7

    .line 932
    if-eqz v2, :cond_2

    .line 935
    sparse-switch v7, :sswitch_data_0

    .line 969
    add-int/lit8 v2, v0, 0x1

    aput-char v7, v6, v0

    move v0, v2

    :goto_3
    move v2, v1

    goto :goto_0

    .line 938
    :sswitch_0
    add-int/lit8 v2, v0, 0x1

    aput-char v8, v6, v0

    move v0, v2

    .line 939
    goto :goto_3

    .line 941
    :sswitch_1
    add-int/lit8 v2, v0, 0x1

    aput-char v9, v6, v0

    move v0, v2

    .line 942
    goto :goto_3

    .line 944
    :sswitch_2
    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0x2f

    aput-char v4, v6, v0

    move v0, v2

    .line 945
    goto :goto_3

    .line 947
    :sswitch_3
    add-int/lit8 v2, v0, 0x1

    aput-char v10, v6, v0

    move v0, v2

    .line 948
    goto :goto_3

    .line 950
    :sswitch_4
    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0xc

    aput-char v4, v6, v0

    move v0, v2

    .line 951
    goto :goto_3

    .line 953
    :sswitch_5
    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0xa

    aput-char v4, v6, v0

    move v0, v2

    .line 954
    goto :goto_3

    .line 956
    :sswitch_6
    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0xd

    aput-char v4, v6, v0

    move v0, v2

    .line 957
    goto :goto_3

    .line 959
    :sswitch_7
    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0x9

    aput-char v4, v6, v0

    move v0, v2

    .line 960
    goto :goto_3

    .line 962
    :sswitch_8
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v2

    shl-int/lit8 v2, v2, 0xc

    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v2, v4

    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v2, v4

    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v4

    add-int/2addr v2, v4

    int-to-char v4, v2

    .line 966
    add-int/lit8 v2, v0, 0x1

    aput-char v4, v6, v0

    move v0, v2

    .line 967
    goto :goto_3

    .line 972
    :cond_2
    if-ne v7, v9, :cond_3

    move v2, v3

    .line 975
    goto/16 :goto_0

    .line 977
    :cond_3
    if-ne v7, v8, :cond_4

    .line 980
    invoke-virtual {p0, v6, v1, v0}, Lorg/mortbay/util/ajax/JSON;->toString([CII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 983
    :cond_4
    add-int/lit8 v4, v0, 0x1

    aput-char v7, v6, v0

    move v0, v4

    goto/16 :goto_0

    :cond_5
    move-object v0, v4

    .line 995
    :goto_4
    monitor-enter v0

    .line 997
    :goto_5
    :try_start_0
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 999
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v4

    .line 1001
    if-eqz v2, :cond_7

    .line 1004
    sparse-switch v4, :sswitch_data_1

    .line 1038
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_6
    move v2, v1

    goto :goto_5

    .line 991
    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/mortbay/util/ajax/JSON;->getStringBufferSize()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    move v2, v1

    goto :goto_4

    .line 1007
    :sswitch_9
    const/16 v2, 0x22

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1053
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1010
    :sswitch_a
    const/16 v2, 0x5c

    :try_start_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1013
    :sswitch_b
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1016
    :sswitch_c
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1019
    :sswitch_d
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1022
    :sswitch_e
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1025
    :sswitch_f
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1028
    :sswitch_10
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1031
    :sswitch_11
    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v2

    shl-int/lit8 v2, v2, 0xc

    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v2, v4

    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v2, v4

    invoke-interface {p1}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v4

    add-int/2addr v2, v4

    int-to-char v2, v2

    .line 1035
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1041
    :cond_7
    if-ne v4, v9, :cond_8

    move v2, v3

    .line 1044
    goto/16 :goto_5

    .line 1046
    :cond_8
    if-ne v4, v8, :cond_a

    .line 1052
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    move-object v0, v1

    goto/16 :goto_2

    .line 1049
    :cond_a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    :cond_b
    move-object v4, v5

    goto/16 :goto_1

    .line 935
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2f -> :sswitch_2
        0x5c -> :sswitch_1
        0x62 -> :sswitch_3
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x72 -> :sswitch_6
        0x74 -> :sswitch_7
        0x75 -> :sswitch_8
    .end sparse-switch

    .line 1004
    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_9
        0x2f -> :sswitch_b
        0x5c -> :sswitch_a
        0x62 -> :sswitch_c
        0x66 -> :sswitch_d
        0x6e -> :sswitch_e
        0x72 -> :sswitch_f
        0x74 -> :sswitch_10
        0x75 -> :sswitch_11
    .end sparse-switch
.end method

.method protected seekTo(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Source;)C
    .locals 4

    .prologue
    .line 1160
    :goto_0
    invoke-interface {p2}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1162
    invoke-interface {p2}, Lorg/mortbay/util/ajax/JSON$Source;->peek()C

    move-result v0

    .line 1163
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1165
    return v0

    .line 1168
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1169
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Unexpected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "\' while seeking one of \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1170
    :cond_1
    invoke-interface {p2}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 1173
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Expected one of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected seekTo(CLorg/mortbay/util/ajax/JSON$Source;)V
    .locals 4

    .prologue
    .line 1144
    :goto_0
    invoke-interface {p2}, Lorg/mortbay/util/ajax/JSON$Source;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1146
    invoke-interface {p2}, Lorg/mortbay/util/ajax/JSON$Source;->peek()C

    move-result v0

    .line 1147
    if-ne v0, p1, :cond_0

    .line 1148
    return-void

    .line 1150
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1151
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Unexpected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, " while seeking \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1152
    :cond_1
    invoke-interface {p2}, Lorg/mortbay/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 1155
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStringBufferSize(I)V
    .locals 0

    .prologue
    .line 102
    iput p1, p0, Lorg/mortbay/util/ajax/JSON;->_stringBufferSize:I

    .line 103
    return-void
.end method

.method public toJSON(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 224
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/mortbay/util/ajax/JSON;->getStringBufferSize()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 225
    monitor-enter v1

    .line 227
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lorg/mortbay/util/ajax/JSON;->append(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 228
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected toString([CII)Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
