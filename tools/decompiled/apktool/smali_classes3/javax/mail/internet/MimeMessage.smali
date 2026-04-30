.class public Ljavax/mail/internet/MimeMessage;
.super Ljavax/mail/Message;
.source "MimeMessage.java"

# interfaces
.implements Ljavax/mail/internet/MimePart;


# static fields
.field private static final answeredFlag:Ljavax/mail/Flags;

.field private static mailDateFormat:Ljavax/mail/internet/MailDateFormat;


# instance fields
.field protected content:[B

.field protected contentStream:Ljava/io/InputStream;

.field protected dh:Ljavax/activation/DataHandler;

.field protected flags:Ljavax/mail/Flags;

.field protected headers:Ljavax/mail/internet/InternetHeaders;

.field protected modified:Z

.field protected saved:Z

.field private strict:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljavax/mail/internet/MailDateFormat;

    invoke-direct {v0}, Ljavax/mail/internet/MailDateFormat;-><init>()V

    sput-object v0, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    .line 1594
    new-instance v0, Ljavax/mail/Flags;

    sget-object v1, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    invoke-direct {v0, v1}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags$Flag;)V

    sput-object v0, Ljavax/mail/internet/MimeMessage;->answeredFlag:Ljavax/mail/Flags;

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Folder;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 236
    invoke-direct {p0, p1, p2}, Ljavax/mail/Message;-><init>(Ljavax/mail/Folder;I)V

    .line 135
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    .line 148
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    .line 154
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    .line 237
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    .line 238
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    .line 239
    invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V

    .line 240
    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Folder;Ljava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-direct {p0, p1, p3}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V

    .line 258
    invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V

    .line 259
    invoke-virtual {p0, p2}, Ljavax/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 260
    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Folder;Ljavax/mail/internet/InternetHeaders;[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-direct {p0, p1, p4}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V

    .line 277
    iput-object p2, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 278
    iput-object p3, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    .line 279
    invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V

    .line 280
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 163
    invoke-direct {p0, p1}, Ljavax/mail/Message;-><init>(Ljavax/mail/Session;)V

    .line 135
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    .line 148
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    .line 154
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    .line 164
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    .line 165
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 166
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    .line 167
    invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V

    .line 168
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 185
    invoke-direct {p0, p1}, Ljavax/mail/Message;-><init>(Ljavax/mail/Session;)V

    .line 135
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    .line 148
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    .line 154
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    .line 186
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    .line 187
    invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V

    .line 188
    invoke-virtual {p0, p2}, Ljavax/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 189
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    .line 190
    return-void
.end method

.method public constructor <init>(Ljavax/mail/internet/MimeMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 205
    iget-object v0, p1, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    invoke-direct {p0, v0}, Ljavax/mail/Message;-><init>(Ljavax/mail/Session;)V

    .line 135
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    .line 148
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    .line 154
    iput-boolean v2, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    .line 206
    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getFlags()Ljavax/mail/Flags;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    .line 208
    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getSize()I

    move-result v1

    .line 209
    if-lez v1, :cond_0

    .line 210
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 214
    :goto_0
    :try_start_0
    iget-boolean v1, p1, Ljavax/mail/internet/MimeMessage;->strict:Z

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    .line 215
    invoke-virtual {p1, v0}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;)V

    .line 216
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 217
    new-instance v1, Ljavax/mail/util/SharedByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/mail/util/SharedByteArrayInputStream;-><init>([B)V

    .line 219
    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 220
    invoke-virtual {v1}, Ljavax/mail/util/SharedByteArrayInputStream;->close()V

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    return-void

    .line 212
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 224
    new-instance v1, Ljavax/mail/MessagingException;

    const-string/jumbo v2, "IOException while copying message"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private addAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 695
    invoke-static {p2}, Ljavax/mail/internet/InternetAddress;->toString([Ljavax/mail/Address;)Ljava/lang/String;

    move-result-object v0

    .line 696
    if-nez v0, :cond_0

    .line 699
    :goto_0
    return-void

    .line 698
    :cond_0
    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private eliminateDuplicates(Ljava/util/Vector;[Ljavax/mail/Address;)[Ljavax/mail/Address;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1602
    if-nez p2, :cond_1

    move-object v0, v5

    .line 1634
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move v1, v2

    move v3, v2

    .line 1605
    :goto_1
    array-length v0, p2

    if-ge v1, v0, :cond_4

    move v4, v2

    .line 1608
    :goto_2
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_8

    .line 1609
    invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/InternetAddress;

    aget-object v6, p2, v1

    invoke-virtual {v0, v6}, Ljavax/mail/internet/InternetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1611
    const/4 v0, 0x1

    .line 1612
    add-int/lit8 v3, v3, 0x1

    .line 1613
    aput-object v5, p2, v1

    .line 1617
    :goto_3
    if-nez v0, :cond_2

    .line 1618
    aget-object v0, p2, v1

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1605
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1608
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 1621
    :cond_4
    if-eqz v3, :cond_7

    .line 1625
    instance-of v0, p2, [Ljavax/mail/internet/InternetAddress;

    if-eqz v0, :cond_6

    .line 1626
    array-length v0, p2

    sub-int/2addr v0, v3

    new-array v0, v0, [Ljavax/mail/internet/InternetAddress;

    :goto_4
    move v1, v2

    .line 1629
    :goto_5
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 1630
    aget-object v3, p2, v1

    if-eqz v3, :cond_5

    .line 1631
    add-int/lit8 v3, v2, 0x1

    aget-object v4, p2, v1

    aput-object v4, v0, v2

    move v2, v3

    .line 1629
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1628
    :cond_6
    array-length v0, p2

    sub-int/2addr v0, v3

    new-array v0, v0, [Ljavax/mail/Address;

    goto :goto_4

    :cond_7
    move-object v0, p2

    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_3
.end method

.method private getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 679
    const-string/jumbo v0, ","

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 680
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    invoke-static {v0, v1}, Ljavax/mail/internet/InternetAddress;->parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method private getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1246
    sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_0

    .line 1247
    const-string/jumbo v0, "To"

    .line 1256
    :goto_0
    return-object v0

    .line 1248
    :cond_0
    sget-object v0, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_1

    .line 1249
    const-string/jumbo v0, "Cc"

    goto :goto_0

    .line 1250
    :cond_1
    sget-object v0, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_2

    .line 1251
    const-string/jumbo v0, "Bcc"

    goto :goto_0

    .line 1252
    :cond_2
    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_3

    .line 1253
    const-string/jumbo v0, "Newsgroups"

    goto :goto_0

    .line 1255
    :cond_3
    new-instance v0, Ljavax/mail/MessagingException;

    const-string/jumbo v1, "Invalid Recipient Type"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initStrict()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    const-string/jumbo v1, "mail.mime.address.strict"

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    .line 290
    :cond_1
    return-void

    .line 288
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 686
    invoke-static {p2}, Ljavax/mail/internet/InternetAddress;->toString([Ljavax/mail/Address;)Ljava/lang/String;

    move-result-object v0

    .line 687
    if-nez v0, :cond_0

    .line 688
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 691
    :goto_0
    return-void

    .line 690
    :cond_0
    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addFrom([Ljavax/mail/Address;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 399
    const-string/jumbo v0, "From"

    invoke-direct {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->addAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    .line 400
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1788
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    return-void
.end method

.method public addHeaderLine(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1857
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->addHeaderLine(Ljava/lang/String;)V

    .line 1858
    return-void
.end method

.method public addRecipients(Ljavax/mail/Message$RecipientType;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 636
    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_1

    .line 637
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    const-string/jumbo v0, "Newsgroups"

    invoke-virtual {p0, v0, p2}, Ljavax/mail/internet/MimeMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->addAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    goto :goto_0
.end method

.method public addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 611
    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_1

    .line 612
    invoke-static {p2}, Ljavax/mail/internet/NewsAddress;->toString([Ljavax/mail/Address;)Ljava/lang/String;

    move-result-object v0

    .line 613
    if-eqz v0, :cond_0

    .line 614
    const-string/jumbo v1, "Newsgroups"

    invoke-virtual {p0, v1, v0}, Ljavax/mail/internet/MimeMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljavax/mail/internet/MimeMessage;->addAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    goto :goto_0
.end method

.method protected createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2030
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeMessage(Ljavax/mail/Session;)Ljavax/mail/internet/MimeMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2046
    new-instance v0, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    return-object v0
.end method

.method public getAllHeaderLines()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1868
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllHeaders()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1820
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllRecipients()[Ljavax/mail/Address;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 520
    invoke-super {p0}, Ljavax/mail/Message;->getAllRecipients()[Ljavax/mail/Address;

    move-result-object v2

    .line 521
    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v4

    .line 523
    if-nez v4, :cond_1

    move-object v0, v2

    .line 539
    :cond_0
    :goto_0
    return-object v0

    .line 526
    :cond_1
    if-eqz v2, :cond_2

    array-length v0, v2

    move v3, v0

    :goto_1
    if-eqz v4, :cond_3

    array-length v0, v4

    :goto_2
    add-int/2addr v0, v3

    .line 529
    new-array v0, v0, [Ljavax/mail/Address;

    .line 531
    if-eqz v2, :cond_4

    .line 532
    array-length v3, v2

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 533
    array-length v2, v2

    add-int/2addr v2, v1

    .line 535
    :goto_3
    if-eqz v4, :cond_0

    .line 536
    array-length v3, v4

    invoke-static {v4, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 537
    array-length v1, v4

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    move v3, v1

    .line 526
    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_3
.end method

.method public getContent()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1380
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;

    move-result-object v0

    .line 1381
    sget-boolean v1, Ljavax/mail/internet/MimeBodyPart;->cacheMultipart:Z

    if-eqz v1, :cond_2

    instance-of v1, v0, Ljavax/mail/Multipart;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljavax/mail/Message;

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;

    instance-of v1, v1, Ljavax/mail/internet/CachedDataHandler;

    if-nez v1, :cond_2

    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-nez v1, :cond_1

    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    .line 1385
    :cond_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/mail/internet/MimeBodyPart;->createCachedDataHandler(Ljava/lang/Object;Ljava/lang/String;)Ljavax/activation/DataHandler;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;

    .line 1387
    :cond_2
    return-object v0
.end method

.method public getContentID()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1015
    const-string/jumbo v0, "Content-Id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLanguage()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1157
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getContentLanguage(Ljavax/mail/internet/MimePart;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentMD5()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1048
    const-string/jumbo v0, "Content-MD5"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContentStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1294
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 1295
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v0

    .line 1297
    :goto_0
    return-object v0

    .line 1296
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-eqz v0, :cond_1

    .line 1297
    new-instance v0, Ljavax/mail/util/SharedByteArrayInputStream;

    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    invoke-direct {v0, v1}, Ljavax/mail/util/SharedByteArrayInputStream;-><init>([B)V

    goto :goto_0

    .line 1299
    :cond_1
    new-instance v0, Ljavax/mail/MessagingException;

    const-string/jumbo v1, "No content"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 930
    const-string/jumbo v0, "Content-Type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 931
    if-nez v0, :cond_0

    .line 932
    const-string/jumbo v0, "text/plain"

    .line 933
    :cond_0
    return-object v0
.end method

.method public declared-synchronized getDataHandler()Ljavax/activation/DataHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1351
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;

    if-nez v0, :cond_0

    .line 1352
    new-instance v0, Ljavax/activation/DataHandler;

    new-instance v1, Ljavax/mail/internet/MimePartDataSource;

    invoke-direct {v1, p0}, Ljavax/mail/internet/MimePartDataSource;-><init>(Ljavax/mail/internet/MimePart;)V

    invoke-direct {v0, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;

    .line 1353
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1351
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1081
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getDescription(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisposition()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 969
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getDisposition(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1000
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getEncoding(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1215
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getFileName(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getFlags()Ljavax/mail/Flags;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1908
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFrom()[Ljavax/mail/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 340
    const-string/jumbo v0, "From"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v0

    .line 341
    if-nez v0, :cond_0

    .line 342
    const-string/jumbo v0, "Sender"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v0

    .line 344
    :cond_0
    return-object v0
.end method

.method public getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1747
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1730
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1277
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getLineCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 913
    const/4 v0, -0x1

    return v0
.end method

.method public getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1880
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1832
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getMessageID()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1191
    const-string/jumbo v0, "Message-ID"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1892
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1844
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getRawInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1318
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getReceivedDate()Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 862
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 501
    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_1

    .line 502
    const-string/jumbo v0, "Newsgroups"

    const-string/jumbo v1, ","

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 503
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 505
    :goto_0
    return-object v0

    .line 503
    :cond_0
    invoke-static {v0}, Ljavax/mail/internet/NewsAddress;->parse(Ljava/lang/String;)[Ljavax/mail/internet/NewsAddress;

    move-result-object v0

    goto :goto_0

    .line 505
    :cond_1
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v0

    goto :goto_0
.end method

.method public getReplyTo()[Ljavax/mail/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 655
    const-string/jumbo v0, "Reply-To"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v0

    .line 656
    if-nez v0, :cond_0

    .line 657
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v0

    .line 658
    :cond_0
    return-object v0
.end method

.method public getSender()Ljavax/mail/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 416
    const-string/jumbo v0, "Sender"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v0

    .line 417
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 418
    :cond_0
    const/4 v0, 0x0

    .line 419
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getSentDate()Ljava/util/Date;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 812
    const-string/jumbo v0, "Date"

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 813
    if-eqz v0, :cond_0

    .line 815
    :try_start_0
    sget-object v2, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    monitor-enter v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    :try_start_1
    sget-object v3, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    invoke-virtual {v3, v0}, Ljavax/mail/internet/MailDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    monitor-exit v2

    .line 823
    :goto_0
    return-object v0

    .line 817
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 818
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 819
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 823
    goto :goto_0
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 883
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-eqz v0, :cond_1

    .line 884
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    array-length v0, v0

    .line 896
    :cond_0
    :goto_0
    return v0

    .line 885
    :cond_1
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 887
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 890
    if-gtz v0, :cond_0

    .line 896
    :cond_2
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 892
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 717
    const-string/jumbo v1, "Subject"

    invoke-virtual {p0, v1, v0}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 719
    if-nez v1, :cond_0

    .line 725
    :goto_0
    return-object v0

    .line 723
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 724
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 725
    goto :goto_0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 951
    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->isMimeType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isSet(Ljavax/mail/Flags$Flag;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1931
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0, p1}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected parse(Ljava/io/InputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 305
    instance-of v0, p1, Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljavax/mail/internet/SharedInputStream;

    if-nez v0, :cond_1

    .line 308
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 310
    :goto_0
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 312
    instance-of v1, v0, Ljavax/mail/internet/SharedInputStream;

    if-eqz v1, :cond_0

    .line 313
    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    .line 314
    invoke-interface {v0}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    .line 323
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    .line 324
    return-void

    .line 317
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/l/b/a/a;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 318
    :catch_0
    move-exception v0

    .line 319
    new-instance v1, Ljavax/mail/MessagingException;

    const-string/jumbo v2, "IOException"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1801
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->removeHeader(Ljava/lang/String;)V

    .line 1802
    return-void
.end method

.method public reply(Z)Ljavax/mail/Message;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 1528
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->createMimeMessage(Ljavax/mail/Session;)Ljavax/mail/internet/MimeMessage;

    move-result-object v7

    .line 1536
    const-string/jumbo v0, "Subject"

    invoke-virtual {p0, v0, v6}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1537
    if-eqz v0, :cond_1

    .line 1538
    const-string/jumbo v3, "Re: "

    const/4 v5, 0x4

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1539
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Re: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1540
    :cond_0
    const-string/jumbo v3, "Subject"

    invoke-virtual {v7, v3, v0}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    :cond_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getReplyTo()[Ljavax/mail/Address;

    move-result-object v3

    .line 1543
    sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v7, v0, v3}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 1544
    if-eqz p1, :cond_6

    .line 1545
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 1547
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    .line 1548
    if-eqz v0, :cond_2

    .line 1549
    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1552
    :cond_2
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    if-eqz v0, :cond_b

    .line 1553
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    const-string/jumbo v5, "mail.alternates"

    invoke-virtual {v0, v5}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1554
    :goto_0
    if-eqz v0, :cond_3

    .line 1555
    invoke-static {v0, v2}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Ljavax/mail/internet/MimeMessage;->eliminateDuplicates(Ljava/util/Vector;[Ljavax/mail/Address;)[Ljavax/mail/Address;

    .line 1559
    :cond_3
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    if-eqz v0, :cond_a

    .line 1560
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    const-string/jumbo v5, "mail.replyallcc"

    invoke-virtual {v0, v5}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1561
    :goto_1
    if-eqz v0, :cond_8

    const-string/jumbo v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1564
    :goto_2
    invoke-direct {p0, v4, v3}, Ljavax/mail/internet/MimeMessage;->eliminateDuplicates(Ljava/util/Vector;[Ljavax/mail/Address;)[Ljavax/mail/Address;

    .line 1565
    sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v0

    .line 1566
    invoke-direct {p0, v4, v0}, Ljavax/mail/internet/MimeMessage;->eliminateDuplicates(Ljava/util/Vector;[Ljavax/mail/Address;)[Ljavax/mail/Address;

    move-result-object v0

    .line 1567
    if-eqz v0, :cond_4

    array-length v2, v0

    if-lez v2, :cond_4

    .line 1568
    if-eqz v1, :cond_9

    .line 1569
    sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v7, v1, v0}, Ljavax/mail/internet/MimeMessage;->addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 1573
    :cond_4
    :goto_3
    sget-object v0, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v0

    .line 1574
    invoke-direct {p0, v4, v0}, Ljavax/mail/internet/MimeMessage;->eliminateDuplicates(Ljava/util/Vector;[Ljavax/mail/Address;)[Ljavax/mail/Address;

    move-result-object v0

    .line 1575
    if-eqz v0, :cond_5

    array-length v1, v0

    if-lez v1, :cond_5

    .line 1576
    sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v7, v1, v0}, Ljavax/mail/internet/MimeMessage;->addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 1578
    :cond_5
    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v0

    .line 1579
    if-eqz v0, :cond_6

    array-length v1, v0

    if-lez v1, :cond_6

    .line 1580
    sget-object v1, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    invoke-virtual {v7, v1, v0}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 1582
    :cond_6
    const-string/jumbo v0, "Message-Id"

    invoke-virtual {p0, v0, v6}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1583
    if-eqz v0, :cond_7

    .line 1584
    const-string/jumbo v1, "In-Reply-To"

    invoke-virtual {v7, v1, v0}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    :cond_7
    :try_start_0
    sget-object v0, Ljavax/mail/internet/MimeMessage;->answeredFlag:Ljavax/mail/Flags;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setFlags(Ljavax/mail/Flags;Z)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1590
    :goto_4
    return-object v7

    :cond_8
    move v1, v2

    .line 1561
    goto :goto_2

    .line 1571
    :cond_9
    sget-object v1, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v7, v1, v0}, Ljavax/mail/internet/MimeMessage;->addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    goto :goto_3

    .line 1587
    :catch_0
    move-exception v0

    goto :goto_4

    :cond_a
    move-object v0, v6

    goto :goto_1

    :cond_b
    move-object v0, v6

    goto/16 :goto_0
.end method

.method public saveChanges()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1978
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    .line 1979
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    .line 1980
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->updateHeaders()V

    .line 1981
    return-void
.end method

.method public setContent(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1428
    new-instance v0, Ljavax/activation/DataHandler;

    invoke-direct {v0, p1, p2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 1429
    return-void
.end method

.method public setContent(Ljavax/mail/Multipart;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1500
    new-instance v0, Ljavax/activation/DataHandler;

    invoke-virtual {p1}, Ljavax/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 1501
    invoke-virtual {p1, p0}, Ljavax/mail/Multipart;->setParent(Ljavax/mail/Part;)V

    .line 1502
    return-void
.end method

.method public setContentID(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1030
    if-nez p1, :cond_0

    .line 1031
    const-string/jumbo v0, "Content-ID"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 1034
    :goto_0
    return-void

    .line 1033
    :cond_0
    const-string/jumbo v0, "Content-ID"

    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContentLanguage([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1173
    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setContentLanguage(Ljavax/mail/internet/MimePart;[Ljava/lang/String;)V

    .line 1174
    return-void
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1061
    const-string/jumbo v0, "Content-MD5"

    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    return-void
.end method

.method public declared-synchronized setDataHandler(Ljavax/activation/DataHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1403
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;

    .line 1404
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->invalidateContentHeaders(Ljavax/mail/internet/MimePart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    monitor-exit p0

    return-void

    .line 1403
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1110
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->setDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    return-void
.end method

.method public setDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1141
    invoke-static {p0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    return-void
.end method

.method public setDisposition(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 984
    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    .line 985
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1239
    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    .line 1240
    return-void
.end method

.method public declared-synchronized setFlags(Ljavax/mail/Flags;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1947
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 1948
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0, p1}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1951
    :goto_0
    monitor-exit p0

    return-void

    .line 1950
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0, p1}, Ljavax/mail/Flags;->remove(Ljavax/mail/Flags;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1947
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFrom()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->setFrom(Ljavax/mail/Address;)V

    .line 384
    return-void

    .line 383
    :cond_0
    new-instance v0, Ljavax/mail/MessagingException;

    const-string/jumbo v1, "No From address"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFrom(Ljavax/mail/Address;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 361
    if-nez p1, :cond_0

    .line 362
    const-string/jumbo v0, "From"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 365
    :goto_0
    return-void

    .line 364
    :cond_0
    const-string/jumbo v0, "From"

    invoke-virtual {p1}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1768
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    return-void
.end method

.method public setRecipients(Ljavax/mail/Message$RecipientType;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 588
    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_2

    .line 589
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 590
    :cond_0
    const-string/jumbo v0, "Newsgroups"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 595
    :goto_0
    return-void

    .line 592
    :cond_1
    const-string/jumbo v0, "Newsgroups"

    invoke-virtual {p0, v0, p2}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 594
    :cond_2
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    goto :goto_0
.end method

.method public setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 559
    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_2

    .line 560
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 561
    :cond_0
    const-string/jumbo v0, "Newsgroups"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 566
    :goto_0
    return-void

    .line 563
    :cond_1
    const-string/jumbo v0, "Newsgroups"

    invoke-static {p2}, Ljavax/mail/internet/NewsAddress;->toString([Ljavax/mail/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 565
    :cond_2
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljavax/mail/internet/MimeMessage;->setAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    goto :goto_0
.end method

.method public setReplyTo([Ljavax/mail/Address;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 673
    const-string/jumbo v0, "Reply-To"

    invoke-direct {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->setAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    .line 674
    return-void
.end method

.method public setSender(Ljavax/mail/Address;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 437
    if-nez p1, :cond_0

    .line 438
    const-string/jumbo v0, "Sender"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 441
    :goto_0
    return-void

    .line 440
    :cond_0
    const-string/jumbo v0, "Sender"

    invoke-virtual {p1}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSentDate(Ljava/util/Date;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 839
    if-nez p1, :cond_0

    .line 840
    const-string/jumbo v0, "Date"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 846
    :goto_0
    return-void

    .line 842
    :cond_0
    sget-object v1, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    monitor-enter v1

    .line 843
    :try_start_0
    const-string/jumbo v0, "Date"

    sget-object v2, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    invoke-virtual {v2, p1}, Ljavax/mail/internet/MailDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 757
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    return-void
.end method

.method public setSubject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 789
    if-nez p1, :cond_0

    .line 790
    const-string/jumbo v0, "Subject"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 793
    :cond_0
    :try_start_0
    const-string/jumbo v0, "Subject"

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-static {p1, p2, v2}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    return-void

    .line 795
    :catch_0
    move-exception v0

    .line 796
    new-instance v1, Ljavax/mail/MessagingException;

    const-string/jumbo v2, "Encoding error"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1451
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1467
    const-string/jumbo v0, "plain"

    invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1485
    invoke-static {p0, p1, p2, p3}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    return-void
.end method

.method protected updateHeaders()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2012
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders(Ljavax/mail/internet/MimePart;)V

    .line 2013
    const-string/jumbo v0, "MIME-Version"

    const-string/jumbo v1, "1.0"

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->updateMessageID()V

    .line 2015
    return-void
.end method

.method protected updateMessageID()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1991
    const-string/jumbo v0, "Message-ID"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    invoke-static {v2}, Ljavax/mail/internet/UniqueValue;->getUniqueMessageIDValue(Ljavax/mail/Session;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1659
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 1660
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1679
    iget-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    if-nez v0, :cond_0

    .line 1680
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->saveChanges()V

    .line 1682
    :cond_0
    iget-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    if-eqz v0, :cond_1

    .line 1683
    invoke-static {p0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljavax/mail/internet/MimePart;Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 1713
    :goto_0
    return-void

    .line 1689
    :cond_1
    invoke-virtual {p0, p2}, Ljavax/mail/internet/MimeMessage;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 1690
    new-instance v2, Lcom/l/b/a/f;

    invoke-direct {v2, p1}, Lcom/l/b/a/f;-><init>(Ljava/io/OutputStream;)V

    .line 1691
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1692
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/l/b/a/f;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1695
    :cond_2
    invoke-virtual {v2}, Lcom/l/b/a/f;->a()V

    .line 1698
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-nez v0, :cond_4

    .line 1701
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1703
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 1705
    :goto_2
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_3

    .line 1706
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    .line 1707
    :cond_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1712
    :goto_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    .line 1710
    :cond_4
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3
.end method
