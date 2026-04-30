.class public Lorg/mortbay/servlet/MultiPartFilter;
.super Ljava/lang/Object;
.source "MultiPartFilter.java"

# interfaces
.implements Ljavax/servlet/Filter;


# static fields
.field private static final FILES:Ljava/lang/String; = "org.mortbay.servlet.MultiPartFilter.files"


# instance fields
.field private _context:Ljavax/servlet/ServletContext;

.field private _deleteFiles:Z

.field private _fileOutputBuffer:I

.field private tempdir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/servlet/MultiPartFilter;->_fileOutputBuffer:I

    .line 356
    return-void
.end method

.method private deleteFiles(Ljavax/servlet/ServletRequest;)V
    .locals 6

    .prologue
    .line 310
    const-string/jumbo v0, "org.mortbay.servlet.MultiPartFilter.files"

    invoke-interface {p1, v0}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 311
    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 314
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 319
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v2

    .line 323
    iget-object v3, p0, Lorg/mortbay/servlet/MultiPartFilter;->_context:Ljavax/servlet/ServletContext;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "failed to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 327
    :cond_0
    return-void
.end method

.method private value(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 331
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 332
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 333
    if-lez v1, :cond_0

    .line 334
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 335
    :cond_0
    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 337
    const/16 v1, 0x22

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 345
    :cond_1
    :goto_0
    return-object v0

    .line 341
    :cond_2
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 342
    if-lez v1, :cond_1

    .line 343
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 92
    move-object/from16 v3, p1

    check-cast v3, Ljavax/servlet/http/HttpServletRequest;

    .line 93
    invoke-interface {v3}, Ljavax/servlet/http/HttpServletRequest;->getContentType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljavax/servlet/http/HttpServletRequest;->getContentType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "multipart/form-data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 95
    :cond_0
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 306
    :goto_0
    return-void

    .line 99
    :cond_1
    new-instance v14, Ljava/io/BufferedInputStream;

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/ServletRequest;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v4

    invoke-direct {v14, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 100
    invoke-interface {v3}, Ljavax/servlet/http/HttpServletRequest;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 104
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "boundary="

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/mortbay/servlet/MultiPartFilter;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 105
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    .line 107
    new-instance v16, Lorg/mortbay/util/MultiMap;

    invoke-direct/range {v16 .. v16}, Lorg/mortbay/util/MultiMap;-><init>()V

    .line 108
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/ServletRequest;->getParameterMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 110
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 111
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 112
    instance-of v8, v5, [Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 113
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object v4, v5

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v4}, Lorg/mortbay/util/MultiMap;->addValues(Ljava/lang/Object;[Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 121
    :cond_3
    :try_start_0
    invoke-static {v14}, Lorg/mortbay/util/TypeUtil;->readLine(Ljava/io/InputStream;)[B

    move-result-object v5

    .line 122
    if-nez v5, :cond_5

    const/4 v4, 0x0

    .line 123
    :goto_2
    if-eqz v4, :cond_4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 125
    :cond_4
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Missing initial multi part boundary"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :catchall_0
    move-exception v3

    invoke-direct/range {p0 .. p1}, Lorg/mortbay/servlet/MultiPartFilter;->deleteFiles(Ljavax/servlet/ServletRequest;)V

    throw v3

    .line 122
    :cond_5
    :try_start_1
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v4, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_2

    .line 129
    :cond_6
    const/4 v11, 0x0

    .line 130
    const/4 v5, 0x0

    .line 131
    :cond_7
    :goto_3
    if-nez v11, :cond_8

    .line 135
    :goto_4
    invoke-static {v14}, Lorg/mortbay/util/TypeUtil;->readLine(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 137
    if-nez v4, :cond_9

    .line 300
    :cond_8
    new-instance v4, Lorg/mortbay/servlet/MultiPartFilter$Wrapper;

    move-object/from16 v0, v16

    invoke-direct {v4, v3, v0}, Lorg/mortbay/servlet/MultiPartFilter$Wrapper;-><init>(Ljavax/servlet/http/HttpServletRequest;Lorg/mortbay/util/MultiMap;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v4, v1}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    invoke-direct/range {p0 .. p1}, Lorg/mortbay/servlet/MultiPartFilter;->deleteFiles(Ljavax/servlet/ServletRequest;)V

    goto/16 :goto_0

    .line 139
    :cond_9
    :try_start_2
    array-length v6, v4

    if-nez v6, :cond_a

    .line 154
    const/4 v7, 0x0

    .line 155
    if-nez v5, :cond_b

    .line 157
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Missing content-disposition"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 141
    :cond_a
    new-instance v6, Ljava/lang/String;

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v6, v4, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 144
    const/16 v4, 0x3a

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 145
    if-lez v4, :cond_2c

    .line 147
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 148
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 149
    const-string/jumbo v6, "content-disposition"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    :goto_5
    move-object v5, v4

    .line 152
    goto :goto_4

    .line 160
    :cond_b
    new-instance v8, Ljava/util/StringTokenizer;

    const-string/jumbo v4, ";"

    invoke-direct {v8, v5, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v6, 0x0

    .line 162
    const/4 v4, 0x0

    .line 163
    :cond_c
    :goto_6
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 165
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 166
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 167
    const-string/jumbo v12, "form-data"

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 168
    const/4 v7, 0x1

    goto :goto_6

    .line 169
    :cond_d
    const-string/jumbo v12, "name="

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 170
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/mortbay/servlet/MultiPartFilter;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 171
    :cond_e
    const-string/jumbo v12, "filename="

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 172
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/mortbay/servlet/MultiPartFilter;->value(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    goto :goto_6

    .line 176
    :cond_f
    if-eqz v7, :cond_7

    .line 186
    if-eqz v6, :cond_7

    .line 191
    const/4 v9, 0x0

    .line 192
    const/4 v7, 0x0

    .line 195
    if-eqz v4, :cond_1d

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1d

    .line 197
    const-string/jumbo v7, "MultiPart"

    const-string/jumbo v8, ""

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mortbay/servlet/MultiPartFilter;->tempdir:Ljava/io/File;

    invoke-static {v7, v8, v10}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    .line 198
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 199
    :try_start_4
    move-object/from16 v0, p0

    iget v9, v0, Lorg/mortbay/servlet/MultiPartFilter;->_fileOutputBuffer:I

    if-lez v9, :cond_10

    .line 200
    new-instance v9, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget v10, v0, Lorg/mortbay/servlet/MultiPartFilter;->_fileOutputBuffer:I

    invoke-direct {v9, v8, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v8, v9

    .line 201
    :cond_10
    :try_start_5
    move-object/from16 v0, p1

    invoke-interface {v0, v6, v7}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v4}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 204
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/mortbay/servlet/MultiPartFilter;->_deleteFiles:Z

    if-eqz v4, :cond_2b

    .line 206
    invoke-virtual {v7}, Ljava/io/File;->deleteOnExit()V

    .line 207
    const-string/jumbo v4, "org.mortbay.servlet.MultiPartFilter.files"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 208
    if-nez v4, :cond_11

    .line 210
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 211
    const-string/jumbo v9, "org.mortbay.servlet.MultiPartFilter.files"

    move-object/from16 v0, p1

    invoke-interface {v0, v9, v4}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    :cond_11
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v4, v8

    .line 220
    :goto_7
    const/4 v10, -0x2

    .line 222
    const/4 v9, 0x0

    .line 223
    const/4 v8, 0x0

    .line 228
    :cond_12
    :goto_8
    const/4 v12, 0x0

    move/from16 v18, v12

    move v12, v9

    move v9, v8

    move/from16 v8, v18

    .line 229
    :goto_9
    const/4 v13, -0x2

    if-eq v10, v13, :cond_1e

    move v13, v10

    :goto_a
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v13, v0, :cond_14

    .line 231
    const/4 v10, -0x2

    .line 233
    const/16 v17, 0xd

    move/from16 v0, v17

    if-eq v13, v0, :cond_13

    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v13, v0, :cond_1f

    .line 235
    :cond_13
    const/16 v17, 0xd

    move/from16 v0, v17

    if-ne v13, v0, :cond_14

    .line 236
    :try_start_6
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->read()I

    move-result v10

    .line 257
    :cond_14
    if-lez v8, :cond_15

    array-length v0, v15

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x2

    move/from16 v0, v17

    if-lt v8, v0, :cond_16

    :cond_15
    array-length v0, v15

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_19

    .line 259
    :cond_16
    if-eqz v12, :cond_17

    .line 260
    const/16 v12, 0xd

    invoke-virtual {v4, v12}, Ljava/io/OutputStream;->write(I)V

    .line 261
    :cond_17
    if-eqz v9, :cond_18

    .line 262
    const/16 v9, 0xa

    invoke-virtual {v4, v9}, Ljava/io/OutputStream;->write(I)V

    .line 263
    :cond_18
    const/4 v9, 0x0

    .line 264
    const/4 v12, 0x0

    invoke-virtual {v4, v15, v12, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 265
    const/4 v8, -0x1

    move v12, v9

    .line 268
    :cond_19
    if-gtz v8, :cond_1a

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_24

    .line 270
    :cond_1a
    array-length v9, v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-ne v8, v9, :cond_2a

    .line 271
    const/4 v8, 0x1

    .line 272
    :goto_b
    const/16 v9, 0xa

    if-ne v10, v9, :cond_1b

    .line 289
    :cond_1b
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 292
    if-nez v7, :cond_1c

    .line 294
    check-cast v4, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 295
    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v4}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_1c
    move v11, v8

    .line 297
    goto/16 :goto_3

    .line 218
    :cond_1d
    :try_start_8
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_7

    .line 289
    :catchall_1
    move-exception v3

    move-object v4, v9

    :goto_c
    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 229
    :cond_1e
    :try_start_a
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->read()I

    move-result v13

    goto :goto_a

    .line 240
    :cond_1f
    if-ltz v8, :cond_20

    array-length v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_20

    aget-byte v17, v15, v8

    move/from16 v0, v17

    if-ne v13, v0, :cond_20

    .line 241
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_9

    .line 245
    :cond_20
    if-eqz v12, :cond_21

    .line 246
    const/16 v12, 0xd

    invoke-virtual {v4, v12}, Ljava/io/OutputStream;->write(I)V

    .line 247
    :cond_21
    if-eqz v9, :cond_22

    .line 248
    const/16 v9, 0xa

    invoke-virtual {v4, v9}, Ljava/io/OutputStream;->write(I)V

    .line 249
    :cond_22
    const/4 v9, 0x0

    .line 250
    if-lez v8, :cond_23

    .line 251
    const/4 v12, 0x0

    invoke-virtual {v4, v15, v12, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 252
    :cond_23
    const/4 v8, -0x1

    .line 253
    invoke-virtual {v4, v13}, Ljava/io/OutputStream;->write(I)V

    move v12, v9

    goto/16 :goto_9

    .line 277
    :cond_24
    if-eqz v12, :cond_25

    .line 278
    const/16 v8, 0xd

    invoke-virtual {v4, v8}, Ljava/io/OutputStream;->write(I)V

    .line 279
    :cond_25
    if-eqz v9, :cond_26

    .line 280
    const/16 v8, 0xa

    invoke-virtual {v4, v8}, Ljava/io/OutputStream;->write(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 281
    :cond_26
    const/16 v8, 0xd

    if-ne v13, v8, :cond_28

    const/4 v9, 0x1

    .line 282
    :goto_d
    const/16 v8, 0xa

    if-eq v13, v8, :cond_27

    const/16 v8, 0xa

    if-ne v10, v8, :cond_29

    :cond_27
    const/4 v8, 0x1

    .line 283
    :goto_e
    const/16 v12, 0xa

    if-ne v10, v12, :cond_12

    .line 284
    const/4 v10, -0x2

    goto/16 :goto_8

    .line 281
    :cond_28
    const/4 v9, 0x0

    goto :goto_d

    .line 282
    :cond_29
    const/4 v8, 0x0

    goto :goto_e

    .line 289
    :catchall_2
    move-exception v3

    move-object v4, v8

    goto :goto_c

    :catchall_3
    move-exception v3

    move-object v4, v8

    goto :goto_c

    :catchall_4
    move-exception v3

    goto :goto_c

    :cond_2a
    move v8, v11

    goto/16 :goto_b

    :cond_2b
    move-object v4, v8

    goto/16 :goto_7

    :cond_2c
    move-object v4, v5

    goto/16 :goto_5
.end method

.method public init(Ljavax/servlet/FilterConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-interface {p1}, Ljavax/servlet/FilterConfig;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    const-string/jumbo v1, "javax.servlet.context.tempdir"

    invoke-interface {v0, v1}, Ljavax/servlet/ServletContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lorg/mortbay/servlet/MultiPartFilter;->tempdir:Ljava/io/File;

    .line 77
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "deleteFiles"

    invoke-interface {p1, v1}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mortbay/servlet/MultiPartFilter;->_deleteFiles:Z

    .line 78
    const-string/jumbo v0, "fileOutputBuffer"

    invoke-interface {p1, v0}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/mortbay/servlet/MultiPartFilter;->_fileOutputBuffer:I

    .line 81
    :cond_0
    invoke-interface {p1}, Ljavax/servlet/FilterConfig;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/servlet/MultiPartFilter;->_context:Ljavax/servlet/ServletContext;

    .line 82
    return-void
.end method
