.class public Ljavax/mail/internet/MimeMultipart;
.super Ljavax/mail/Multipart;
.source "MimeMultipart.java"


# static fields
.field private static bmparse:Z

.field private static ignoreMissingBoundaryParameter:Z

.field private static ignoreMissingEndBoundary:Z


# instance fields
.field private complete:Z

.field protected ds:Ljavax/activation/DataSource;

.field protected parsed:Z

.field private preamble:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 89
    sput-boolean v1, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    .line 90
    sput-boolean v1, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    .line 91
    sput-boolean v1, Ljavax/mail/internet/MimeMultipart;->bmparse:Z

    .line 95
    :try_start_0
    const-string/jumbo v2, "mail.mime.multipart.ignoremissingendboundary"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    if-eqz v2, :cond_0

    const-string/jumbo v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    move v2, v1

    :goto_0
    sput-boolean v2, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    .line 100
    const-string/jumbo v2, "mail.mime.multipart.ignoremissingboundaryparameter"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    if-eqz v2, :cond_1

    const-string/jumbo v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_1
    move v2, v1

    :goto_1
    sput-boolean v2, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    .line 105
    const-string/jumbo v2, "mail.mime.multipart.bmparse"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    if-eqz v2, :cond_2

    const-string/jumbo v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    sput-boolean v0, Ljavax/mail/internet/MimeMultipart;->bmparse:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_2
    return-void

    :cond_4
    move v2, v0

    .line 98
    goto :goto_0

    :cond_5
    move v2, v0

    .line 103
    goto :goto_1

    .line 109
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 148
    const-string/jumbo v0, "mixed"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 160
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    .line 117
    iput-object v3, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 125
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 130
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 136
    iput-object v3, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 164
    invoke-static {}, Ljavax/mail/internet/UniqueValue;->getUniqueBoundaryValue()Ljava/lang/String;

    move-result-object v0

    .line 165
    new-instance v1, Ljavax/mail/internet/ContentType;

    const-string/jumbo v2, "multipart"

    invoke-direct {v1, v2, p1, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    .line 166
    const-string/jumbo v2, "boundary"

    invoke-virtual {v1, v2, v0}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public constructor <init>(Ljavax/activation/DataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 189
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    .line 117
    iput-object v1, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 125
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 130
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 136
    iput-object v1, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 191
    instance-of v0, p1, Ljavax/mail/MessageAware;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 192
    check-cast v0, Ljavax/mail/MessageAware;

    invoke-interface {v0}, Ljavax/mail/MessageAware;->getMessageContext()Ljavax/mail/MessageContext;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Ljavax/mail/MessageContext;->getPart()Ljavax/mail/Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMultipart;->setParent(Ljavax/mail/Part;)V

    .line 196
    :cond_0
    instance-of v0, p1, Ljavax/mail/MultipartDataSource;

    if-eqz v0, :cond_1

    .line 198
    check-cast p1, Ljavax/mail/MultipartDataSource;

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMultipart;->setMultipartDataSource(Ljavax/mail/MultipartDataSource;)V

    .line 207
    :goto_0
    return-void

    .line 204
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 205
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 206
    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    goto :goto_0
.end method

.method private declared-synchronized parsebm()V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 632
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_0

    .line 945
    :goto_0
    monitor-exit p0

    return-void

    .line 636
    :cond_0
    const/4 v8, 0x0

    .line 637
    const-wide/16 v6, 0x0

    const-wide/16 v12, 0x0

    .line 640
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    invoke-interface {v4}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 641
    instance-of v5, v4, Ljava/io/ByteArrayInputStream;

    if-nez v5, :cond_30

    instance-of v5, v4, Ljava/io/BufferedInputStream;

    if-nez v5, :cond_30

    instance-of v5, v4, Ljavax/mail/internet/SharedInputStream;

    if-nez v5, :cond_30

    .line 644
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 648
    :goto_1
    :try_start_2
    instance-of v4, v5, Ljavax/mail/internet/SharedInputStream;

    if-eqz v4, :cond_2f

    .line 649
    move-object v0, v5

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    move-object v4, v0

    move-object/from16 v20, v4

    .line 651
    :goto_2
    new-instance v4, Ljavax/mail/internet/ContentType;

    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v4, v8}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 652
    const/4 v9, 0x0

    .line 653
    const-string/jumbo v8, "boundary"

    invoke-virtual {v4, v8}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 654
    if-eqz v4, :cond_4

    .line 655
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v9

    .line 661
    :cond_1
    :try_start_3
    new-instance v21, Lcom/l/b/a/e;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Lcom/l/b/a/e;-><init>(Ljava/io/InputStream;)V

    .line 663
    const/4 v4, 0x0

    .line 664
    :cond_2
    :goto_3
    invoke-virtual/range {v21 .. v21}, Lcom/l/b/a/e;->a()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2e

    .line 672
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    :goto_4
    if-ltz v10, :cond_3

    .line 673
    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 674
    const/16 v14, 0x20

    if-eq v11, v14, :cond_5

    const/16 v14, 0x9

    if-eq v11, v14, :cond_5

    .line 677
    :cond_3
    const/4 v11, 0x0

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v8, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 678
    if-eqz v9, :cond_6

    .line 679
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    move-object v4, v8

    move-object v8, v9

    .line 712
    :goto_5
    if-nez v4, :cond_a

    .line 713
    new-instance v4, Ljavax/mail/MessagingException;

    const-string/jumbo v6, "Missing start boundary"

    invoke-direct {v4, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 934
    :catch_0
    move-exception v4

    .line 935
    :try_start_4
    new-instance v6, Ljavax/mail/MessagingException;

    const-string/jumbo v7, "IO Error"

    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 937
    :catchall_0
    move-exception v4

    .line 938
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 942
    :goto_6
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 632
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 645
    :catch_1
    move-exception v4

    .line 646
    :try_start_7
    new-instance v4, Ljavax/mail/MessagingException;

    const-string/jumbo v5, "No inputstream from datasource"

    invoke-direct {v4, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 656
    :cond_4
    sget-boolean v4, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    if-nez v4, :cond_1

    .line 657
    new-instance v4, Ljavax/mail/MessagingException;

    const-string/jumbo v5, "Missing boundary parameter"

    invoke-direct {v4, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 672
    :cond_5
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 687
    :cond_6
    :try_start_8
    const-string/jumbo v10, "--"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    move-object v4, v8

    .line 689
    goto :goto_5

    .line 694
    :cond_7
    invoke-virtual {v8}, Ljava/lang/String;->length()I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v10

    if-lez v10, :cond_2

    .line 697
    if-nez v4, :cond_8

    .line 699
    :try_start_9
    const-string/jumbo v4, "line.separator"

    const-string/jumbo v10, "\n"

    invoke-static {v4, v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v4

    .line 706
    :cond_8
    :goto_7
    :try_start_a
    move-object/from16 v0, p0

    iget-object v10, v0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    if-nez v10, :cond_9

    .line 707
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iput-object v8, v0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    goto/16 :goto_3

    .line 701
    :catch_2
    move-exception v4

    .line 702
    const-string/jumbo v4, "\n"

    goto :goto_7

    .line 709
    :cond_9
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iput-object v8, v0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    goto/16 :goto_3

    .line 716
    :cond_a
    invoke-static {v8}, Lcom/l/b/a/a;->a(Ljava/lang/String;)[B

    move-result-object v22

    .line 717
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v17, v0

    .line 724
    const/16 v4, 0x100

    new-array v0, v4, [I

    move-object/from16 v23, v0

    .line 725
    const/4 v4, 0x0

    :goto_8
    move/from16 v0, v17

    if-ge v4, v0, :cond_b

    .line 726
    aget-byte v8, v22, v4

    add-int/lit8 v9, v4, 0x1

    aput v9, v23, v8

    .line 725
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 729
    :cond_b
    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v24, v0

    move/from16 v8, v17

    .line 731
    :goto_9
    if-lez v8, :cond_e

    .line 733
    add-int/lit8 v4, v17, -0x1

    :goto_a
    if-lt v4, v8, :cond_c

    .line 735
    aget-byte v9, v22, v4

    sub-int v10, v4, v8

    aget-byte v10, v22, v10

    if-ne v9, v10, :cond_d

    .line 737
    add-int/lit8 v9, v4, -0x1

    aput v8, v24, v9

    .line 733
    add-int/lit8 v4, v4, -0x1

    goto :goto_a

    .line 744
    :cond_c
    :goto_b
    if-lez v4, :cond_d

    .line 745
    add-int/lit8 v4, v4, -0x1

    aput v8, v24, v4

    goto :goto_b

    .line 731
    :cond_d
    add-int/lit8 v4, v8, -0x1

    move v8, v4

    goto :goto_9

    .line 747
    :cond_e
    add-int/lit8 v4, v17, -0x1

    const/4 v8, 0x1

    aput v8, v24, v4

    .line 753
    const/4 v10, 0x0

    .line 755
    :goto_c
    if-nez v10, :cond_12

    .line 756
    const/4 v4, 0x0

    .line 757
    if-eqz v20, :cond_13

    .line 758
    invoke-interface/range {v20 .. v20}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v6

    .line 760
    :cond_f
    invoke-virtual/range {v21 .. v21}, Lcom/l/b/a/e;->a()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_f

    .line 762
    :cond_10
    if-nez v8, :cond_2d

    .line 763
    sget-boolean v4, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v4, :cond_11

    .line 764
    new-instance v4, Ljavax/mail/MessagingException;

    const-string/jumbo v6, "missing multipart end boundary"

    invoke-direct {v4, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 767
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Ljavax/mail/internet/MimeMultipart;->complete:Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 938
    :cond_12
    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 944
    :goto_d
    const/4 v4, 0x1

    :try_start_c
    move-object/from16 v0, p0

    iput-boolean v4, v0, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_0

    .line 772
    :cond_13
    :try_start_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v4

    move-object/from16 v16, v4

    move-wide/from16 v18, v6

    .line 775
    :goto_e
    invoke-virtual {v5}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-nez v4, :cond_14

    .line 776
    new-instance v4, Ljavax/mail/MessagingException;

    const-string/jumbo v6, "Stream doesn\'t support mark"

    invoke-direct {v4, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 778
    :cond_14
    const/4 v4, 0x0

    .line 780
    if-nez v20, :cond_15

    .line 781
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v15, v4

    .line 795
    :goto_f
    move/from16 v0, v17

    new-array v9, v0, [B

    .line 796
    move/from16 v0, v17

    new-array v8, v0, [B

    .line 798
    const/4 v6, 0x0

    .line 800
    const/4 v4, 0x1

    move v11, v4

    move v14, v6

    move-wide v6, v12

    .line 806
    :goto_10
    add-int/lit8 v4, v17, 0x4

    add-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v5, v4}, Ljava/io/InputStream;->mark(I)V

    .line 807
    const/4 v4, 0x0

    .line 808
    const/4 v12, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v9, v12, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    .line 809
    move/from16 v0, v17

    if-ge v12, v0, :cond_17

    .line 811
    sget-boolean v10, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v10, :cond_16

    .line 812
    new-instance v4, Ljavax/mail/MessagingException;

    const-string/jumbo v6, "missing multipart end boundary"

    invoke-direct {v4, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 783
    :cond_15
    invoke-interface/range {v20 .. v20}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v12

    move-object v15, v4

    goto :goto_f

    .line 814
    :cond_16
    if-eqz v20, :cond_2c

    .line 815
    invoke-interface/range {v20 .. v20}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v10

    .line 816
    :goto_11
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 817
    const/4 v6, 0x1

    .line 920
    :goto_12
    if-eqz v20, :cond_27

    .line 921
    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-interface {v0, v1, v2, v10, v11}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v4

    .line 932
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    move-wide v12, v10

    move v10, v6

    move-wide/from16 v6, v18

    .line 933
    goto/16 :goto_c

    .line 822
    :cond_17
    add-int/lit8 v4, v17, -0x1

    :goto_14
    if-ltz v4, :cond_18

    .line 823
    aget-byte v13, v9, v4

    aget-byte v25, v22, v4

    move/from16 v0, v25

    if-eq v13, v0, :cond_1d

    .line 826
    :cond_18
    if-gez v4, :cond_2b

    .line 827
    const/4 v4, 0x0

    .line 828
    if-nez v11, :cond_1a

    .line 831
    add-int/lit8 v13, v14, -0x1

    aget-byte v13, v8, v13

    .line 832
    const/16 v25, 0xd

    move/from16 v0, v25

    if-eq v13, v0, :cond_19

    const/16 v25, 0xa

    move/from16 v0, v25

    if-ne v13, v0, :cond_1a

    .line 833
    :cond_19
    const/4 v4, 0x1

    .line 834
    const/16 v25, 0xa

    move/from16 v0, v25

    if-ne v13, v0, :cond_1a

    const/4 v13, 0x2

    if-lt v14, v13, :cond_1a

    .line 835
    add-int/lit8 v13, v14, -0x2

    aget-byte v13, v8, v13

    .line 836
    const/16 v25, 0xd

    move/from16 v0, v25

    if-ne v13, v0, :cond_1a

    .line 837
    const/4 v4, 0x2

    .line 841
    :cond_1a
    if-nez v11, :cond_1b

    if-lez v4, :cond_22

    .line 842
    :cond_1b
    if-eqz v20, :cond_1c

    .line 845
    invoke-interface/range {v20 .. v20}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v6

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v26, v0

    sub-long v6, v6, v26

    int-to-long v0, v4

    move-wide/from16 v26, v0

    sub-long v6, v6, v26

    .line 848
    :cond_1c
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v11

    .line 849
    const/16 v13, 0x2d

    if-ne v11, v13, :cond_1e

    .line 850
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v13

    const/16 v25, 0x2d

    move/from16 v0, v25

    if-ne v13, v0, :cond_1e

    .line 851
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 852
    const/4 v10, 0x1

    move/from16 v28, v10

    move-wide v10, v6

    move/from16 v6, v28

    .line 853
    goto/16 :goto_12

    .line 822
    :cond_1d
    add-int/lit8 v4, v4, -0x1

    goto :goto_14

    .line 857
    :cond_1e
    :goto_15
    const/16 v13, 0x20

    if-eq v11, v13, :cond_1f

    const/16 v13, 0x9

    if-ne v11, v13, :cond_20

    .line 858
    :cond_1f
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v11

    goto :goto_15

    .line 860
    :cond_20
    const/16 v13, 0xa

    if-ne v11, v13, :cond_21

    move/from16 v28, v10

    move-wide v10, v6

    move/from16 v6, v28

    .line 861
    goto/16 :goto_12

    .line 862
    :cond_21
    const/16 v13, 0xd

    if-ne v11, v13, :cond_22

    .line 863
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/io/InputStream;->mark(I)V

    .line 864
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v11

    const/16 v13, 0xa

    if-eq v11, v13, :cond_2a

    .line 865
    invoke-virtual {v5}, Ljava/io/InputStream;->reset()V

    move/from16 v28, v10

    move-wide v10, v6

    move/from16 v6, v28

    goto/16 :goto_12

    .line 869
    :cond_22
    const/4 v4, 0x0

    move-wide v12, v6

    .line 879
    :goto_16
    add-int/lit8 v6, v4, 0x1

    aget-byte v7, v9, v4

    and-int/lit8 v7, v7, 0x7f

    aget v7, v23, v7

    sub-int/2addr v6, v7

    aget v4, v24, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 881
    const/4 v6, 0x2

    if-ge v4, v6, :cond_25

    .line 885
    if-nez v20, :cond_23

    const/4 v4, 0x1

    if-le v14, v4, :cond_23

    .line 886
    const/4 v4, 0x0

    add-int/lit8 v6, v14, -0x1

    invoke-virtual {v15, v8, v4, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 887
    :cond_23
    invoke-virtual {v5}, Ljava/io/InputStream;->reset()V

    .line 888
    const-wide/16 v6, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/io/InputStream;->skip(J)J

    .line 889
    const/4 v4, 0x1

    if-lt v14, v4, :cond_24

    .line 891
    const/4 v4, 0x0

    add-int/lit8 v6, v14, -0x1

    aget-byte v6, v8, v6

    aput-byte v6, v8, v4

    .line 892
    const/4 v4, 0x1

    const/4 v6, 0x0

    aget-byte v6, v9, v6

    aput-byte v6, v8, v4

    .line 893
    const/4 v4, 0x2

    move-object v6, v8

    .line 913
    :goto_17
    const/4 v7, 0x0

    move v11, v7

    move v14, v4

    move-object v8, v6

    move-wide v6, v12

    .line 914
    goto/16 :goto_10

    .line 896
    :cond_24
    const/4 v4, 0x0

    const/4 v6, 0x0

    aget-byte v6, v9, v6

    aput-byte v6, v8, v4

    .line 897
    const/4 v4, 0x1

    move-object v6, v8

    .line 899
    goto :goto_17

    .line 902
    :cond_25
    if-lez v14, :cond_26

    if-nez v20, :cond_26

    .line 903
    const/4 v6, 0x0

    invoke-virtual {v15, v8, v6, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 906
    :cond_26
    invoke-virtual {v5}, Ljava/io/InputStream;->reset()V

    .line 907
    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-object v6, v9

    move-object v9, v8

    .line 911
    goto :goto_17

    .line 924
    :cond_27
    sub-int v7, v14, v4

    if-lez v7, :cond_28

    .line 925
    const/4 v7, 0x0

    sub-int v4, v14, v4

    invoke-virtual {v15, v8, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 928
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v4, v0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    if-nez v4, :cond_29

    if-lez v12, :cond_29

    .line 929
    const/4 v4, 0x0

    invoke-virtual {v15, v9, v4, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 930
    :cond_29
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v4

    goto/16 :goto_13

    .line 939
    :catch_3
    move-exception v4

    goto/16 :goto_d

    :catch_4
    move-exception v5

    goto/16 :goto_6

    :cond_2a
    move/from16 v28, v10

    move-wide v10, v6

    move/from16 v6, v28

    goto/16 :goto_12

    :cond_2b
    move-wide v12, v6

    goto/16 :goto_16

    :cond_2c
    move-wide v10, v6

    goto/16 :goto_11

    :cond_2d
    move-object/from16 v16, v4

    move-wide/from16 v18, v6

    goto/16 :goto_e

    :cond_2e
    move-object v4, v8

    move-object v8, v9

    goto/16 :goto_5

    :cond_2f
    move-object/from16 v20, v8

    goto/16 :goto_2

    :cond_30
    move-object v5, v4

    goto/16 :goto_1
.end method


# virtual methods
.method protected createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 960
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 993
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 977
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljavax/mail/internet/InternetHeaders;[B)V

    return-object v0
.end method

.method public declared-synchronized getBodyPart(I)Ljavax/mail/BodyPart;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 243
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBodyPart(Ljava/lang/String;)Ljavax/mail/BodyPart;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 257
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v2

    .line 258
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 259
    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/MimeBodyPart;

    .line 260
    invoke-virtual {v0}, Ljavax/mail/internet/MimeBodyPart;->getContentID()Ljava/lang/String;

    move-result-object v3

    .line 261
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    :goto_1
    monitor-exit p0

    return-object v0

    .line 258
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 264
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 230
    invoke-super {p0}, Ljavax/mail/Multipart;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPreamble()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 296
    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    return-object v0
.end method

.method public isComplete()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 283
    iget-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    return v0
.end method

.method protected declared-synchronized parse()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 616
    :goto_0
    monitor-exit p0

    return-void

    .line 382
    :cond_0
    :try_start_1
    sget-boolean v2, Ljavax/mail/internet/MimeMultipart;->bmparse:Z

    if-eqz v2, :cond_1

    .line 383
    invoke-direct/range {p0 .. p0}, Ljavax/mail/internet/MimeMultipart;->parsebm()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 388
    :cond_1
    const/4 v6, 0x0

    .line 389
    const-wide/16 v8, 0x0

    const-wide/16 v4, 0x0

    .line 392
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    invoke-interface {v2}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 393
    instance-of v3, v2, Ljava/io/ByteArrayInputStream;

    if-nez v3, :cond_29

    instance-of v3, v2, Ljava/io/BufferedInputStream;

    if-nez v3, :cond_29

    instance-of v3, v2, Ljavax/mail/internet/SharedInputStream;

    if-nez v3, :cond_29

    .line 396
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 400
    :goto_1
    :try_start_3
    instance-of v2, v3, Ljavax/mail/internet/SharedInputStream;

    if-eqz v2, :cond_28

    .line 401
    move-object v0, v3

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    move-object v2, v0

    move-object v13, v2

    .line 403
    :goto_2
    new-instance v2, Ljavax/mail/internet/ContentType;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 404
    const/4 v7, 0x0

    .line 405
    const-string/jumbo v6, "boundary"

    invoke-virtual {v2, v6}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 406
    if-eqz v2, :cond_5

    .line 407
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    .line 413
    :cond_2
    :try_start_4
    new-instance v16, Lcom/l/b/a/e;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lcom/l/b/a/e;-><init>(Ljava/io/InputStream;)V

    .line 415
    const/4 v2, 0x0

    .line 416
    :cond_3
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/l/b/a/e;->a()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_27

    .line 424
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    :goto_4
    if-ltz v10, :cond_4

    .line 425
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 426
    const/16 v12, 0x20

    if-eq v11, v12, :cond_6

    const/16 v12, 0x9

    if-eq v11, v12, :cond_6

    .line 429
    :cond_4
    const/4 v11, 0x0

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v6, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 430
    if-eqz v7, :cond_7

    .line 431
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move-object v2, v6

    move-object v6, v7

    .line 464
    :goto_5
    if-nez v2, :cond_b

    .line 465
    new-instance v2, Ljavax/mail/MessagingException;

    const-string/jumbo v4, "Missing start boundary"

    invoke-direct {v2, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 605
    :catch_0
    move-exception v2

    .line 606
    :try_start_5
    new-instance v4, Ljavax/mail/MessagingException;

    const-string/jumbo v5, "IO Error"

    invoke-direct {v4, v5, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 608
    :catchall_1
    move-exception v2

    .line 609
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 613
    :goto_6
    :try_start_7
    throw v2

    .line 397
    :catch_1
    move-exception v2

    .line 398
    new-instance v2, Ljavax/mail/MessagingException;

    const-string/jumbo v3, "No inputstream from datasource"

    invoke-direct {v2, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 408
    :cond_5
    sget-boolean v2, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    if-nez v2, :cond_2

    .line 409
    new-instance v2, Ljavax/mail/MessagingException;

    const-string/jumbo v3, "Missing boundary parameter"

    invoke-direct {v2, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 424
    :cond_6
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 439
    :cond_7
    :try_start_8
    const-string/jumbo v10, "--"

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    move-object v2, v6

    .line 441
    goto :goto_5

    .line 446
    :cond_8
    invoke-virtual {v6}, Ljava/lang/String;->length()I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v10

    if-lez v10, :cond_3

    .line 449
    if-nez v2, :cond_9

    .line 451
    :try_start_9
    const-string/jumbo v2, "line.separator"

    const-string/jumbo v10, "\n"

    invoke-static {v2, v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v2

    .line 458
    :cond_9
    :goto_7
    :try_start_a
    move-object/from16 v0, p0

    iget-object v10, v0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    if-nez v10, :cond_a

    .line 459
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    goto/16 :goto_3

    .line 453
    :catch_2
    move-exception v2

    .line 454
    const-string/jumbo v2, "\n"

    goto :goto_7

    .line 461
    :cond_a
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    goto/16 :goto_3

    .line 468
    :cond_b
    invoke-static {v6}, Lcom/l/b/a/a;->a(Ljava/lang/String;)[B

    move-result-object v17

    .line 469
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    .line 475
    const/4 v6, 0x0

    .line 477
    :goto_8
    if-nez v6, :cond_f

    .line 478
    const/4 v2, 0x0

    .line 479
    if-eqz v13, :cond_10

    .line 480
    invoke-interface {v13}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v8

    .line 482
    :cond_c
    invoke-virtual/range {v16 .. v16}, Lcom/l/b/a/e;->a()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_c

    .line 484
    :cond_d
    if-nez v7, :cond_26

    .line 485
    sget-boolean v2, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v2, :cond_e

    .line 486
    new-instance v2, Ljavax/mail/MessagingException;

    const-string/jumbo v4, "missing multipart end boundary"

    invoke-direct {v2, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 489
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljavax/mail/internet/MimeMultipart;->complete:Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 609
    :cond_f
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 615
    :goto_9
    const/4 v2, 0x1

    :try_start_c
    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 494
    :cond_10
    :try_start_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v2

    move-object v12, v2

    move-wide v14, v8

    .line 497
    :goto_a
    invoke-virtual {v3}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_11

    .line 498
    new-instance v2, Ljavax/mail/MessagingException;

    const-string/jumbo v4, "Stream doesn\'t support mark"

    invoke-direct {v2, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 500
    :cond_11
    const/4 v2, 0x0

    .line 502
    if-nez v13, :cond_13

    .line 503
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 507
    :goto_b
    const/4 v9, 0x1

    .line 509
    const/4 v8, -0x1

    const/4 v7, -0x1

    move/from16 v19, v7

    move v7, v9

    move/from16 v20, v8

    move-wide v8, v4

    move/from16 v4, v19

    move/from16 v5, v20

    .line 515
    :goto_c
    if-eqz v7, :cond_24

    .line 521
    add-int/lit8 v7, v18, 0x4

    add-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v3, v7}, Ljava/io/InputStream;->mark(I)V

    .line 523
    const/4 v7, 0x0

    :goto_d
    move/from16 v0, v18

    if-ge v7, v0, :cond_12

    .line 524
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v10

    aget-byte v11, v17, v7

    and-int/lit16 v11, v11, 0xff

    if-eq v10, v11, :cond_14

    .line 526
    :cond_12
    move/from16 v0, v18

    if-ne v7, v0, :cond_19

    .line 528
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 529
    const/16 v10, 0x2d

    if-ne v7, v10, :cond_15

    .line 530
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_15

    .line 531
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 532
    const/4 v4, 0x1

    .line 599
    :goto_e
    if-eqz v13, :cond_20

    .line 600
    invoke-interface {v13, v14, v15, v8, v9}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v2

    .line 603
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    move v6, v4

    move-wide v4, v8

    move-wide v8, v14

    .line 604
    goto/16 :goto_8

    .line 505
    :cond_13
    invoke-interface {v13}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v4

    goto :goto_b

    .line 523
    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 537
    :cond_15
    :goto_10
    const/16 v10, 0x20

    if-eq v7, v10, :cond_16

    const/16 v10, 0x9

    if-ne v7, v10, :cond_17

    .line 538
    :cond_16
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v7

    goto :goto_10

    .line 540
    :cond_17
    const/16 v10, 0xa

    if-ne v7, v10, :cond_18

    move v4, v6

    .line 541
    goto :goto_e

    .line 542
    :cond_18
    const/16 v10, 0xd

    if-ne v7, v10, :cond_19

    .line 543
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->mark(I)V

    .line 544
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_25

    .line 545
    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    move v4, v6

    goto :goto_e

    .line 550
    :cond_19
    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    .line 554
    if-eqz v2, :cond_24

    const/4 v7, -0x1

    if-eq v5, v7, :cond_24

    .line 555
    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 556
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1a

    .line 557
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 558
    :cond_1a
    const/4 v4, -0x1

    move v7, v4

    .line 563
    :goto_11
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v10

    if-gez v10, :cond_1c

    .line 564
    sget-boolean v4, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v4, :cond_1b

    .line 565
    new-instance v2, Ljavax/mail/MessagingException;

    const-string/jumbo v4, "missing multipart end boundary"

    invoke-direct {v2, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 567
    :cond_1b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 568
    const/4 v4, 0x1

    .line 569
    goto :goto_e

    .line 576
    :cond_1c
    const/16 v5, 0xd

    if-eq v10, v5, :cond_1d

    const/16 v5, 0xa

    if-ne v10, v5, :cond_1f

    .line 577
    :cond_1d
    const/4 v11, 0x1

    .line 578
    if-eqz v13, :cond_23

    .line 579
    invoke-interface {v13}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v4

    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    .line 581
    :goto_12
    const/16 v8, 0xd

    if-ne v10, v8, :cond_22

    .line 582
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/io/InputStream;->mark(I)V

    .line 583
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_1e

    move v7, v11

    move/from16 v19, v8

    move-wide v8, v4

    move v5, v10

    move/from16 v4, v19

    .line 584
    goto/16 :goto_c

    .line 586
    :cond_1e
    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    move-wide v8, v4

    move v5, v10

    move v4, v7

    move v7, v11

    .line 587
    goto/16 :goto_c

    .line 589
    :cond_1f
    const/4 v5, 0x0

    .line 590
    if-eqz v2, :cond_21

    .line 591
    invoke-virtual {v2, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move/from16 v19, v7

    move v7, v5

    move v5, v4

    move/from16 v4, v19

    goto/16 :goto_c

    .line 602
    :cond_20
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result-object v2

    goto/16 :goto_f

    .line 610
    :catch_3
    move-exception v2

    goto/16 :goto_9

    :catch_4
    move-exception v3

    goto/16 :goto_6

    :cond_21
    move/from16 v19, v7

    move v7, v5

    move v5, v4

    move/from16 v4, v19

    goto/16 :goto_c

    :cond_22
    move-wide v8, v4

    move v5, v10

    move v4, v7

    move v7, v11

    goto/16 :goto_c

    :cond_23
    move-wide v4, v8

    goto :goto_12

    :cond_24
    move v7, v4

    move v4, v5

    goto :goto_11

    :cond_25
    move v4, v6

    goto/16 :goto_e

    :cond_26
    move-object v12, v2

    move-wide v14, v8

    goto/16 :goto_a

    :cond_27
    move-object v2, v6

    move-object v6, v7

    goto/16 :goto_5

    :cond_28
    move-object v13, v6

    goto/16 :goto_2

    :cond_29
    move-object v3, v2

    goto/16 :goto_1
.end method

.method public setPreamble(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 311
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public declared-synchronized setSubType(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0, p1}, Ljavax/mail/internet/ContentType;->setSubType(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected updateHeaders()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 332
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 333
    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders()V

    .line 332
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 334
    :cond_0
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 344
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Ljavax/mail/internet/ContentType;

    iget-object v2, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "boundary"

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 346
    new-instance v3, Lcom/l/b/a/f;

    invoke-direct {v3, p1}, Lcom/l/b/a/f;-><init>(Ljava/io/OutputStream;)V

    .line 349
    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    invoke-static {v0}, Lcom/l/b/a/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 351
    invoke-virtual {v3, v0}, Lcom/l/b/a/f;->write([B)V

    .line 353
    array-length v1, v0

    if-lez v1, :cond_0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v0, v1

    const/16 v4, 0xd

    if-eq v1, v4, :cond_0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 355
    invoke-virtual {v3}, Lcom/l/b/a/f;->a()V

    .line 359
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 360
    invoke-virtual {v3, v2}, Lcom/l/b/a/f;->a(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 362
    invoke-virtual {v3}, Lcom/l/b/a/f;->a()V

    .line 359
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 366
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/l/b/a/f;->a(Ljava/lang/String;)V

    .line 367
    return-void
.end method
