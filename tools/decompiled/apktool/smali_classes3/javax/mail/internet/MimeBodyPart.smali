.class public Ljavax/mail/internet/MimeBodyPart;
.super Ljavax/mail/BodyPart;
.source "MimeBodyPart.java"

# interfaces
.implements Ljavax/mail/internet/MimePart;


# static fields
.field static cacheMultipart:Z

.field private static decodeFileName:Z

.field private static encodeFileName:Z

.field private static setContentTypeFileName:Z

.field private static setDefaultTextCharset:Z


# instance fields
.field protected content:[B

.field protected contentStream:Ljava/io/InputStream;

.field protected dh:Ljavax/activation/DataHandler;

.field protected headers:Ljavax/mail/internet/InternetHeaders;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 73
    sput-boolean v1, Ljavax/mail/internet/MimeBodyPart;->setDefaultTextCharset:Z

    .line 75
    sput-boolean v1, Ljavax/mail/internet/MimeBodyPart;->setContentTypeFileName:Z

    .line 77
    sput-boolean v0, Ljavax/mail/internet/MimeBodyPart;->encodeFileName:Z

    .line 78
    sput-boolean v0, Ljavax/mail/internet/MimeBodyPart;->decodeFileName:Z

    .line 82
    sput-boolean v1, Ljavax/mail/internet/MimeBodyPart;->cacheMultipart:Z

    .line 86
    :try_start_0
    const-string/jumbo v2, "mail.mime.setdefaulttextcharset"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    if-eqz v2, :cond_0

    const-string/jumbo v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    move v2, v1

    :goto_0
    sput-boolean v2, Ljavax/mail/internet/MimeBodyPart;->setDefaultTextCharset:Z

    .line 90
    const-string/jumbo v2, "mail.mime.setcontenttypefilename"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    if-eqz v2, :cond_1

    const-string/jumbo v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_1
    move v2, v1

    :goto_1
    sput-boolean v2, Ljavax/mail/internet/MimeBodyPart;->setContentTypeFileName:Z

    .line 94
    const-string/jumbo v2, "mail.mime.encodefilename"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    if-eqz v2, :cond_6

    const-string/jumbo v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v1

    :goto_2
    sput-boolean v2, Ljavax/mail/internet/MimeBodyPart;->encodeFileName:Z

    .line 98
    const-string/jumbo v2, "mail.mime.decodefilename"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    if-eqz v2, :cond_7

    const-string/jumbo v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v1

    :goto_3
    sput-boolean v2, Ljavax/mail/internet/MimeBodyPart;->decodeFileName:Z

    .line 102
    const-string/jumbo v2, "mail.mime.cachemultipart"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    if-eqz v2, :cond_2

    const-string/jumbo v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    sput-boolean v0, Ljavax/mail/internet/MimeBodyPart;->cacheMultipart:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_4
    return-void

    :cond_4
    move v2, v0

    .line 88
    goto :goto_0

    :cond_5
    move v2, v0

    .line 92
    goto :goto_1

    :cond_6
    move v2, v0

    .line 96
    goto :goto_2

    :cond_7
    move v2, v0

    .line 100
    goto :goto_3

    .line 105
    :catch_0
    move-exception v0

    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Ljavax/mail/BodyPart;-><init>()V

    .line 144
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0}, Ljavax/mail/BodyPart;-><init>()V

    .line 163
    instance-of v0, p1, Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljavax/mail/internet/SharedInputStream;

    if-nez v0, :cond_1

    .line 166
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 168
    :goto_0
    new-instance v1, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v1, v0}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 170
    instance-of v1, v0, Ljavax/mail/internet/SharedInputStream;

    if-eqz v1, :cond_0

    .line 171
    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    .line 172
    invoke-interface {v0}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    .line 181
    :goto_1
    return-void

    .line 175
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/l/b/a/a;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    new-instance v1, Ljavax/mail/MessagingException;

    const-string/jumbo v2, "Error reading input stream"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/mail/internet/InternetHeaders;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0}, Ljavax/mail/BodyPart;-><init>()V

    .line 195
    iput-object p1, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 196
    iput-object p2, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    .line 197
    return-void
.end method

.method static createCachedDataHandler(Ljava/lang/Object;Ljava/lang/String;)Ljavax/activation/DataHandler;
    .locals 1

    .prologue
    .line 1236
    new-instance v0, Ljavax/mail/internet/CachedDataHandler;

    invoke-direct {v0, p0, p1}, Ljavax/mail/internet/CachedDataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method static getContentLanguage(Ljavax/mail/internet/MimePart;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1157
    const-string/jumbo v1, "Content-Language"

    invoke-interface {p0, v1, v0}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1159
    if-nez v1, :cond_1

    .line 1185
    :cond_0
    :goto_0
    return-object v0

    .line 1163
    :cond_1
    new-instance v2, Ljavax/mail/internet/HeaderTokenizer;

    const-string/jumbo v3, "()<>@,;:\\\"\t []/?="

    invoke-direct {v2, v1, v3}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1170
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v3

    .line 1171
    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v4

    .line 1172
    const/4 v5, -0x4

    if-ne v4, v5, :cond_3

    .line 1180
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1183
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1184
    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_0

    .line 1174
    :cond_3
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 1175
    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static getDescription(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1065
    const-string/jumbo v1, "Content-Description"

    invoke-interface {p0, v1, v0}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1067
    if-nez v1, :cond_0

    .line 1073
    :goto_0
    return-object v0

    .line 1071
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1072
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 1073
    goto :goto_0
.end method

.method static getDisposition(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1034
    const-string/jumbo v1, "Content-Disposition"

    invoke-interface {p0, v1, v0}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1036
    if-nez v1, :cond_0

    .line 1040
    :goto_0
    return-object v0

    .line 1039
    :cond_0
    new-instance v0, Ljavax/mail/internet/ContentDisposition;

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {v0}, Ljavax/mail/internet/ContentDisposition;->getDisposition()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getEncoding(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1197
    const-string/jumbo v1, "Content-Transfer-Encoding"

    invoke-interface {p0, v1, v0}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1199
    if-nez v1, :cond_1

    .line 1227
    :cond_0
    :goto_0
    return-object v0

    .line 1202
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1205
    const-string/jumbo v1, "7bit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "8bit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "quoted-printable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "binary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "base64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1212
    new-instance v1, Ljavax/mail/internet/HeaderTokenizer;

    const-string/jumbo v2, "()<>@,;:\\\"\t []/?="

    invoke-direct {v1, v0, v2}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    :cond_2
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v2

    .line 1219
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v3

    .line 1220
    const/4 v4, -0x4

    if-eq v3, v4, :cond_0

    .line 1222
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 1223
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getFileName(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1094
    .line 1095
    const-string/jumbo v0, "Content-Disposition"

    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1097
    if-eqz v0, :cond_2

    .line 1099
    new-instance v2, Ljavax/mail/internet/ContentDisposition;

    invoke-direct {v2, v0}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    .line 1100
    const-string/jumbo v0, "filename"

    invoke-virtual {v2, v0}, Ljavax/mail/internet/ContentDisposition;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1102
    :goto_0
    if-nez v0, :cond_0

    .line 1104
    const-string/jumbo v2, "Content-Type"

    invoke-interface {p0, v2, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1105
    if-eqz v1, :cond_0

    .line 1107
    :try_start_0
    new-instance v2, Ljavax/mail/internet/ContentType;

    invoke-direct {v2, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 1108
    const-string/jumbo v1, "name"

    invoke-virtual {v2, v1}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1112
    :cond_0
    :goto_1
    sget-boolean v1, Ljavax/mail/internet/MimeBodyPart;->decodeFileName:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1114
    :try_start_1
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 1119
    :cond_1
    return-object v0

    .line 1115
    :catch_0
    move-exception v0

    .line 1116
    new-instance v1, Ljavax/mail/MessagingException;

    const-string/jumbo v2, "Can\'t decode filename"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1109
    :catch_1
    move-exception v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method static invalidateContentHeaders(Ljavax/mail/internet/MimePart;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1324
    const-string/jumbo v0, "Content-Type"

    invoke-interface {p0, v0}, Ljavax/mail/internet/MimePart;->removeHeader(Ljava/lang/String;)V

    .line 1325
    const-string/jumbo v0, "Content-Transfer-Encoding"

    invoke-interface {p0, v0}, Ljavax/mail/internet/MimePart;->removeHeader(Ljava/lang/String;)V

    .line 1326
    return-void
.end method

.method static isMimeType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1013
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {v0, p1}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1016
    :goto_0
    return v0

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static setContentLanguage(Ljavax/mail/internet/MimePart;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1190
    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1191
    const/4 v0, 0x1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 1192
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1193
    :cond_0
    const-string/jumbo v0, "Content-Language"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    return-void
.end method

.method static setDescription(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1080
    if-nez p1, :cond_0

    .line 1081
    const-string/jumbo v0, "Content-Description"

    invoke-interface {p0, v0}, Ljavax/mail/internet/MimePart;->removeHeader(Ljava/lang/String;)V

    .line 1091
    :goto_0
    return-void

    .line 1086
    :cond_0
    :try_start_0
    const-string/jumbo v0, "Content-Description"

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-static {p1, p2, v2}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1088
    :catch_0
    move-exception v0

    .line 1089
    new-instance v1, Ljavax/mail/MessagingException;

    const-string/jumbo v2, "Encoding error"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method static setDisposition(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1045
    if-nez p1, :cond_0

    .line 1046
    const-string/jumbo v0, "Content-Disposition"

    invoke-interface {p0, v0}, Ljavax/mail/internet/MimePart;->removeHeader(Ljava/lang/String;)V

    .line 1061
    :goto_0
    return-void

    .line 1048
    :cond_0
    const-string/jumbo v0, "Content-Disposition"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1049
    if-eqz v0, :cond_1

    .line 1055
    new-instance v1, Ljavax/mail/internet/ContentDisposition;

    invoke-direct {v1, v0}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {v1, p1}, Ljavax/mail/internet/ContentDisposition;->setDisposition(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {v1}, Ljavax/mail/internet/ContentDisposition;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1059
    :cond_1
    const-string/jumbo v0, "Content-Disposition"

    invoke-interface {p0, v0, p1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static setEncoding(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1232
    const-string/jumbo v0, "Content-Transfer-Encoding"

    invoke-interface {p0, v0, p1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    return-void
.end method

.method static setFileName(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1124
    sget-boolean v0, Ljavax/mail/internet/MimeBodyPart;->encodeFileName:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1126
    :try_start_0
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 1133
    :cond_0
    const-string/jumbo v0, "Content-Disposition"

    invoke-interface {p0, v0, v2}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1134
    new-instance v1, Ljavax/mail/internet/ContentDisposition;

    if-nez v0, :cond_1

    const-string/jumbo v0, "attachment"

    :cond_1
    invoke-direct {v1, v0}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    .line 1136
    const-string/jumbo v0, "filename"

    invoke-virtual {v1, v0, p1}, Ljavax/mail/internet/ContentDisposition;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    const-string/jumbo v0, "Content-Disposition"

    invoke-virtual {v1}, Ljavax/mail/internet/ContentDisposition;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    sget-boolean v0, Ljavax/mail/internet/MimeBodyPart;->setContentTypeFileName:Z

    if-eqz v0, :cond_2

    .line 1144
    const-string/jumbo v0, "Content-Type"

    invoke-interface {p0, v0, v2}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1145
    if-eqz v0, :cond_2

    .line 1147
    :try_start_1
    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-direct {v1, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 1148
    const-string/jumbo v0, "name"

    invoke-virtual {v1, v0, p1}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    const-string/jumbo v0, "Content-Type"

    invoke-virtual {v1}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/mail/internet/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1153
    :cond_2
    :goto_0
    return-void

    .line 1127
    :catch_0
    move-exception v0

    .line 1128
    new-instance v1, Ljavax/mail/MessagingException;

    const-string/jumbo v2, "Can\'t encode filename"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1150
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static setText(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1022
    if-nez p2, :cond_0

    .line 1023
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1024
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultMIMECharset()Ljava/lang/String;

    move-result-object p2

    .line 1029
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "text/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "()<>@,;:\\\"\t []/?="

    invoke-static {p2, v1}, Ljavax/mail/internet/MimeUtility;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljavax/mail/internet/MimePart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1031
    return-void

    .line 1026
    :cond_1
    const-string/jumbo p2, "us-ascii"

    goto :goto_0
.end method

.method static updateHeaders(Ljavax/mail/internet/MimePart;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 1240
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v4

    .line 1241
    if-nez v4, :cond_1

    .line 1320
    :cond_0
    :goto_0
    return-void

    .line 1245
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 1247
    const-string/jumbo v3, "Content-Type"

    invoke-interface {p0, v3}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    move v3, v2

    .line 1249
    :goto_1
    new-instance v5, Ljavax/mail/internet/ContentType;

    invoke-direct {v5, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 1250
    const-string/jumbo v6, "multipart/*"

    invoke-virtual {v5, v6}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1253
    invoke-virtual {v4}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;

    move-result-object v0

    .line 1254
    instance-of v6, v0, Ljavax/mail/internet/MimeMultipart;

    if-eqz v6, :cond_6

    .line 1255
    check-cast v0, Ljavax/mail/internet/MimeMultipart;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMultipart;->updateHeaders()V

    move v0, v2

    .line 1266
    :cond_2
    :goto_2
    if-nez v0, :cond_9

    .line 1267
    const-string/jumbo v0, "Content-Transfer-Encoding"

    invoke-interface {p0, v0}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1268
    invoke-static {v4}, Ljavax/mail/internet/MimeUtility;->getEncoding(Ljavax/activation/DataHandler;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->setEncoding(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    .line 1270
    :cond_3
    if-eqz v3, :cond_9

    sget-boolean v0, Ljavax/mail/internet/MimeBodyPart;->setDefaultTextCharset:Z

    if-eqz v0, :cond_9

    const-string/jumbo v0, "text/*"

    invoke-virtual {v5, v0}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "charset"

    invoke-virtual {v5, v0}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1284
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 1285
    if-eqz v0, :cond_8

    const-string/jumbo v1, "7bit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1286
    const-string/jumbo v0, "us-ascii"

    .line 1289
    :goto_3
    const-string/jumbo v1, "charset"

    invoke-virtual {v5, v1, v0}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    invoke-virtual {v5}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1297
    :goto_4
    if-eqz v3, :cond_0

    .line 1304
    const-string/jumbo v1, "Content-Disposition"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1305
    if-eqz v1, :cond_4

    .line 1307
    new-instance v2, Ljavax/mail/internet/ContentDisposition;

    invoke-direct {v2, v1}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    .line 1308
    const-string/jumbo v1, "filename"

    invoke-virtual {v2, v1}, Ljavax/mail/internet/ContentDisposition;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1309
    if-eqz v1, :cond_4

    .line 1310
    const-string/jumbo v0, "name"

    invoke-virtual {v5, v0, v1}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    invoke-virtual {v5}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1315
    :cond_4
    const-string/jumbo v1, "Content-Type"

    invoke-interface {p0, v1, v0}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1317
    :catch_0
    move-exception v0

    .line 1318
    new-instance v1, Ljavax/mail/MessagingException;

    const-string/jumbo v2, "IOException updating headers"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_5
    move v3, v0

    .line 1247
    goto/16 :goto_1

    .line 1257
    :cond_6
    :try_start_1
    new-instance v2, Ljavax/mail/MessagingException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "MIME part of type \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v3, "\" contains object of type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " instead of MimeMultipart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1260
    :cond_7
    const-string/jumbo v6, "message/rfc822"

    invoke-virtual {v5, v6}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v2

    .line 1261
    goto/16 :goto_2

    .line 1288
    :cond_8
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultMIMECharset()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_3

    :cond_9
    move-object v0, v1

    goto :goto_4
.end method

.method static writeTo(Ljavax/mail/internet/MimePart;Ljava/io/OutputStream;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1332
    .line 1333
    instance-of v0, p1, Lcom/l/b/a/f;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1334
    check-cast v0, Lcom/l/b/a/f;

    move-object v1, v0

    .line 1340
    :goto_0
    invoke-interface {p0, p2}, Ljavax/mail/internet/MimePart;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    .line 1341
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1342
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/l/b/a/f;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1336
    :cond_0
    new-instance v0, Lcom/l/b/a/f;

    invoke-direct {v0, p1}, Lcom/l/b/a/f;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v0

    goto :goto_0

    .line 1345
    :cond_1
    invoke-virtual {v1}, Lcom/l/b/a/f;->a()V

    .line 1349
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljavax/mail/internet/MimeUtility;->encode(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 1350
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V

    .line 1351
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1352
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 906
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
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
    .line 946
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->addHeaderLine(Ljava/lang/String;)V

    .line 947
    return-void
.end method

.method public attachFile(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 767
    new-instance v0, Ljavax/activation/FileDataSource;

    invoke-direct {v0, p1}, Ljavax/activation/FileDataSource;-><init>(Ljava/io/File;)V

    .line 768
    new-instance v1, Ljavax/activation/DataHandler;

    invoke-direct {v1, v0}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 769
    invoke-virtual {v0}, Ljavax/activation/FileDataSource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljava/lang/String;)V

    .line 770
    return-void
.end method

.method public attachFile(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 785
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 786
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->attachFile(Ljava/io/File;)V

    .line 787
    return-void
.end method

.method public getAllHeaderLines()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 955
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

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
    .line 921
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
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
    .line 629
    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;

    move-result-object v0

    .line 630
    sget-boolean v1, Ljavax/mail/internet/MimeBodyPart;->cacheMultipart:Z

    if-eqz v1, :cond_2

    instance-of v1, v0, Ljavax/mail/Multipart;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljavax/mail/Message;

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    instance-of v1, v1, Ljavax/mail/internet/CachedDataHandler;

    if-nez v1, :cond_2

    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    if-nez v1, :cond_1

    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    .line 634
    :cond_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/mail/internet/MimeBodyPart;->createCachedDataHandler(Ljava/lang/Object;Ljava/lang/String;)Ljavax/activation/DataHandler;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    .line 636
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
    .line 340
    const-string/jumbo v0, "Content-Id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    .line 396
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
    .line 371
    const-string/jumbo v0, "Content-MD5"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    .line 567
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v0

    .line 570
    :goto_0
    return-object v0

    .line 569
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    if-eqz v0, :cond_1

    .line 570
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    .line 572
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
    .line 260
    const-string/jumbo v0, "Content-Type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    if-nez v0, :cond_0

    .line 262
    const-string/jumbo v0, "text/plain"

    .line 264
    :cond_0
    return-object v0
.end method

.method public getDataHandler()Ljavax/activation/DataHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 602
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    if-nez v0, :cond_0

    .line 603
    new-instance v0, Ljavax/activation/DataHandler;

    new-instance v1, Ljavax/mail/internet/MimePartDataSource;

    invoke-direct {v1, p0}, Ljavax/mail/internet/MimePartDataSource;-><init>(Ljavax/mail/internet/MimePart;)V

    invoke-direct {v0, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    .line 604
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 426
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
    .line 299
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
    .line 328
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
    .line 509
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getFileName(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

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
    .line 875
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

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
    .line 858
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

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
    .line 554
    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;

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
    .line 245
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
    .line 965
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

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
    .line 930
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

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
    .line 975
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

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
    .line 939
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

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
    .line 591
    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    array-length v0, v0

    .line 229
    :cond_0
    :goto_0
    return v0

    .line 218
    :cond_1
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 220
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 223
    if-gtz v0, :cond_0

    .line 229
    :cond_2
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->isMimeType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 913
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->removeHeader(Ljava/lang/String;)V

    .line 914
    return-void
.end method

.method public saveFile(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 799
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 801
    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 803
    const/16 v0, 0x2000

    :try_start_0
    new-array v0, v0, [B

    .line 805
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_2

    .line 806
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 809
    :catchall_0
    move-exception v0

    .line 810
    if-eqz v2, :cond_0

    .line 811
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 814
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 815
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 817
    :cond_1
    :goto_2
    throw v0

    .line 810
    :cond_2
    if-eqz v2, :cond_3

    .line 811
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 814
    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    .line 815
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 818
    :cond_4
    :goto_4
    return-void

    .line 812
    :catch_0
    move-exception v0

    goto :goto_3

    .line 816
    :catch_1
    move-exception v0

    goto :goto_4

    .line 812
    :catch_2
    move-exception v2

    goto :goto_1

    .line 816
    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public saveFile(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 830
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 831
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->saveFile(Ljava/io/File;)V

    .line 832
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
    .line 675
    instance-of v0, p1, Ljavax/mail/Multipart;

    if-eqz v0, :cond_0

    .line 676
    check-cast p1, Ljavax/mail/Multipart;

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljavax/mail/Multipart;)V

    .line 680
    :goto_0
    return-void

    .line 678
    :cond_0
    new-instance v0, Ljavax/activation/DataHandler;

    invoke-direct {v0, p1, p2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    goto :goto_0
.end method

.method public setContent(Ljavax/mail/Multipart;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 750
    new-instance v0, Ljavax/activation/DataHandler;

    invoke-virtual {p1}, Ljavax/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 751
    invoke-virtual {p1, p0}, Ljavax/mail/Multipart;->setParent(Ljavax/mail/Part;)V

    .line 752
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
    .line 356
    if-nez p1, :cond_0

    .line 357
    const-string/jumbo v0, "Content-ID"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->removeHeader(Ljava/lang/String;)V

    .line 360
    :goto_0
    return-void

    .line 359
    :cond_0
    const-string/jumbo v0, "Content-ID"

    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 407
    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setContentLanguage(Ljavax/mail/internet/MimePart;[Ljava/lang/String;)V

    .line 408
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
    .line 383
    const-string/jumbo v0, "Content-MD5"

    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public setDataHandler(Ljavax/activation/DataHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 651
    iput-object p1, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    .line 652
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->invalidateContentHeaders(Ljavax/mail/internet/MimePart;)V

    .line 653
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 455
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
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
    .line 486
    invoke-static {p0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
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
    .line 313
    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    .line 314
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
    .line 534
    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 891
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 702
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
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
    .line 718
    const-string/jumbo v0, "plain"

    invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 719
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
    .line 736
    invoke-static {p0, p1, p2, p3}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method protected updateHeaders()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1001
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders(Ljavax/mail/internet/MimePart;)V

    .line 1002
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
    .line 845
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljavax/mail/internet/MimePart;Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 846
    return-void
.end method
