.class public Ljavax/mail/internet/InternetHeaders;
.super Ljava/lang/Object;
.source "InternetHeaders.java"


# instance fields
.field protected headers:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    .line 253
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "Return-Path"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "Received"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "Resent-Date"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "Resent-From"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "Resent-Sender"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "Resent-To"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "Resent-Cc"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "Resent-Bcc"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "Resent-Message-Id"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "Date"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "From"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "Sender"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "Reply-To"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "To"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "Cc"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "Bcc"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "Message-Id"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "In-Reply-To"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "References"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "Subject"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "Comments"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "Keywords"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "Errors-To"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "MIME-Version"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "Content-Type"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "Content-Transfer-Encoding"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "Content-MD5"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, ":"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "Content-Length"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string/jumbo v2, "Status"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    .line 301
    invoke-virtual {p0, p1}, Ljavax/mail/internet/InternetHeaders;->load(Ljava/io/InputStream;)V

    .line 302
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 465
    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 466
    const-string/jumbo v2, "Received"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Return-Path"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const/4 v2, 0x1

    move v3, v2

    .line 469
    :goto_0
    if-eqz v3, :cond_6

    .line 471
    :goto_1
    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    move v1, v0

    :goto_2
    if-ltz v2, :cond_5

    .line 472
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 473
    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 474
    if-eqz v3, :cond_4

    move v1, v2

    .line 482
    :cond_1
    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    .line 471
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    move v3, v0

    .line 466
    goto :goto_0

    .line 477
    :cond_4
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    add-int/lit8 v1, v2, 0x1

    new-instance v2, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    invoke-direct {v2, p1, p2}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 486
    :goto_3
    return-void

    .line 485
    :cond_5
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v2, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    invoke-direct {v2, p1, p2}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public addHeaderLine(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 543
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 544
    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 545
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 547
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    .line 556
    :goto_0
    return-void

    .line 549
    :cond_1
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    invoke-direct {v1, p1}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 550
    :catch_0
    move-exception v0

    goto :goto_0

    .line 553
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getAllHeaderLines()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllHeaders()Ljava/util/Enumeration;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 510
    new-instance v0, Ljavax/mail/internet/InternetHeaders$matchEnum;

    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/mail/internet/InternetHeaders$matchEnum;-><init>(Ljava/util/List;[Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 396
    invoke-virtual {p0, p1}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 398
    if-nez v1, :cond_0

    .line 399
    const/4 v0, 0x0

    .line 409
    :goto_0
    return-object v0

    .line 401
    :cond_0
    array-length v2, v1

    if-eq v2, v0, :cond_1

    if-nez p2, :cond_2

    .line 402
    :cond_1
    aget-object v0, v1, v3

    goto :goto_0

    .line 404
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    aget-object v3, v1, v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 405
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_3

    .line 406
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 409
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 365
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 367
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 369
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 371
    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 372
    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 375
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 376
    const/4 v0, 0x0

    .line 380
    :goto_1
    return-object v0

    .line 378
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 379
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    goto :goto_1
.end method

.method public getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 569
    new-instance v0, Ljavax/mail/internet/InternetHeaders$matchEnum;

    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-direct {v0, v1, p1, v2, v2}, Ljavax/mail/internet/InternetHeaders$matchEnum;-><init>(Ljava/util/List;[Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 4

    .prologue
    .line 519
    new-instance v0, Ljavax/mail/internet/InternetHeaders$matchEnum;

    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Ljavax/mail/internet/InternetHeaders$matchEnum;-><init>(Ljava/util/List;[Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 4

    .prologue
    .line 576
    new-instance v0, Ljavax/mail/internet/InternetHeaders$matchEnum;

    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, p1, v2, v3}, Ljavax/mail/internet/InternetHeaders$matchEnum;-><init>(Ljava/util/List;[Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 528
    new-instance v0, Ljavax/mail/internet/InternetHeaders$matchEnum;

    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-direct {v0, v1, p1, v2, v2}, Ljavax/mail/internet/InternetHeaders$matchEnum;-><init>(Ljava/util/List;[Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public load(Ljava/io/InputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 321
    new-instance v3, Lcom/l/b/a/e;

    invoke-direct {v3, p1}, Lcom/l/b/a/e;-><init>(Ljava/io/InputStream;)V

    .line 324
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v0, v1

    .line 329
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Lcom/l/b/a/e;->a()Ljava/lang/String;

    move-result-object v2

    .line 330
    if-eqz v2, :cond_4

    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "\t"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 333
    :cond_1
    if-eqz v0, :cond_2

    .line 334
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v0, v1

    .line 337
    :cond_2
    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    .line 354
    :cond_3
    return-void

    .line 341
    :cond_4
    if-eqz v0, :cond_6

    .line 342
    invoke-virtual {p0, v0}, Ljavax/mail/internet/InternetHeaders;->addHeaderLine(Ljava/lang/String;)V

    :cond_5
    :goto_1
    move-object v0, v2

    .line 348
    goto :goto_0

    .line 343
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 345
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/internet/InternetHeaders;->addHeaderLine(Ljava/lang/String;)V

    .line 346
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 351
    :catch_0
    move-exception v0

    .line 352
    new-instance v1, Ljavax/mail/MessagingException;

    const-string/jumbo v2, "Error in input stream"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 493
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 494
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 495
    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    const/4 v2, 0x0

    iput-object v2, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    .line 493
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 501
    :cond_1
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 423
    move v1, v2

    move v3, v2

    .line 425
    :goto_0
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 426
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 427
    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 428
    if-nez v3, :cond_1

    .line 430
    iget-object v3, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_0

    .line 431
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    .line 436
    :goto_1
    const/4 v3, 0x1

    move v0, v1

    move v1, v3

    .line 425
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 434
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    goto :goto_1

    .line 438
    :cond_1
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 439
    add-int/lit8 v1, v1, -0x1

    move v0, v1

    move v1, v3

    goto :goto_2

    .line 444
    :cond_2
    if-nez v3, :cond_3

    .line 445
    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_3
    return-void

    :cond_4
    move v0, v1

    move v1, v3

    goto :goto_2
.end method
