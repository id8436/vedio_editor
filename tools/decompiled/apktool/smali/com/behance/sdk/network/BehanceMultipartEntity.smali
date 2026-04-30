.class public Lcom/behance/sdk/network/BehanceMultipartEntity;
.super Ljava/lang/Object;
.source "BehanceMultipartEntity.java"


# static fields
.field public static final CHARSET_ISO_8859:Ljava/lang/String; = "ISO-8859-1"

.field public static final CHARSET_UTF8:Ljava/lang/String; = "UTF-8"

.field public static final CONTENT_TRANSFER_8BIT:Ljava/lang/String; = "8bit"

.field public static final CONTENT_TRANSFER_BINARY:Ljava/lang/String; = "binary"

.field public static final CONTENT_TYPE_APPLICATION_OCTETSTREAM:Ljava/lang/String; = "application/octet-stream"

.field public static final CONTENT_TYPE_APPLICATION_XHTML:Ljava/lang/String; = "application/xhtml+xml; charset=ISO-8859-1"

.field public static final CONTENT_TYPE_TEXT_ISO_8859:Ljava/lang/String; = "text/plain; charset=ISO-8859-1"

.field public static final CONTENT_TYPE_TEXT_UTF8:Ljava/lang/String; = "text/plain; charset=UTF-8"

.field private static final MULTIPART_CHARS:[C


# instance fields
.field private behanceHttpEntityWrapperCallback:Lcom/behance/sdk/network/BehanceMultipartEntityWrapper;

.field private boundary:Ljava/lang/String;

.field private browserCompatible:Z

.field private chunked:Z

.field headers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/behance/sdk/network/BehanceNameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private multiPartDataArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/behance/sdk/network/BehanceMultiPartData;",
            ">;"
        }
    .end annotation
.end field

.field private totalBytesLength:J

.field private transferredBytesLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string/jumbo v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/network/BehanceMultipartEntity;->MULTIPART_CHARS:[C

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->headers:Ljava/util/ArrayList;

    .line 28
    iput-object v1, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->multiPartDataArrayList:Ljava/util/ArrayList;

    .line 117
    invoke-direct {p0}, Lcom/behance/sdk/network/BehanceMultipartEntity;->generateBoundary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->boundary:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->multiPartDataArrayList:Ljava/util/ArrayList;

    .line 119
    iput-boolean v2, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->chunked:Z

    .line 120
    iput-boolean v2, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->browserCompatible:Z

    .line 121
    iput-wide v4, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->transferredBytesLength:J

    .line 122
    iput-wide v4, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->totalBytesLength:J

    .line 123
    iput-object v1, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->behanceHttpEntityWrapperCallback:Lcom/behance/sdk/network/BehanceMultipartEntityWrapper;

    .line 124
    return-void
.end method

.method private generateBoundary()Ljava/lang/String;
    .locals 6

    .prologue
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 108
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1e

    .line 109
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 110
    sget-object v4, Lcom/behance/sdk/network/BehanceMultipartEntity;->MULTIPART_CHARS:[C

    sget-object v5, Lcom/behance/sdk/network/BehanceMultipartEntity;->MULTIPART_CHARS:[C

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateMultiPartFormData(Lcom/behance/sdk/network/BehanceMultiPartData;Ljava/lang/String;Z)[B
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 155
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v0, ""

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 156
    const-string/jumbo v0, "--%s\r\n"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    invoke-virtual {p0}, Lcom/behance/sdk/network/BehanceMultiPartData;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/behance/sdk/network/BehanceMultiPartData;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 160
    const-string/jumbo v0, "Content-Disposition: form-data; name=\"%s\"; filename=\"%s\"\r\n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/behance/sdk/network/BehanceMultiPartData;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/behance/sdk/network/BehanceMultiPartData;->getFileName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    :goto_0
    invoke-virtual {p0}, Lcom/behance/sdk/network/BehanceMultiPartData;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 176
    const-string/jumbo v0, "Content-Transfer-Encoding: %s\r\n"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/behance/sdk/network/BehanceMultiPartData;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/network/BehanceMultiPartData;->getContentID()Ljava/lang/String;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 181
    const-string/jumbo v2, "cid:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_1
    const-string/jumbo v2, "Content-ID: <%s>\r\n"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/behance/sdk/network/BehanceMultiPartData;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    .line 188
    const-string/jumbo v0, "Content-Type: %s\r\n"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/behance/sdk/network/BehanceMultiPartData;->getContentType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    :cond_3
    const-string/jumbo v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 198
    :goto_1
    return-object v0

    .line 162
    :cond_4
    invoke-virtual {p0}, Lcom/behance/sdk/network/BehanceMultiPartData;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 164
    const-string/jumbo v0, "Content-Disposition: form-data; filename=\"%s\"\r\n"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/behance/sdk/network/BehanceMultiPartData;->getFileName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 166
    :cond_5
    invoke-virtual {p0}, Lcom/behance/sdk/network/BehanceMultiPartData;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 168
    const-string/jumbo v0, "Content-Disposition: form-data; name=\"%s\"\r\n"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/behance/sdk/network/BehanceMultiPartData;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 172
    :cond_6
    const-string/jumbo v0, "Content-Disposition: form-data;\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 198
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static getSize(Ljava/io/ByteArrayInputStream;)I
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 79
    return v0
.end method

.method private notifyUploadProgress()V
    .locals 4

    .prologue
    .line 247
    iget-wide v0, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->transferredBytesLength:J

    long-to-float v0, v0

    invoke-virtual {p0}, Lcom/behance/sdk/network/BehanceMultipartEntity;->getTotalBytesLength()J

    move-result-wide v2

    long-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    .line 248
    iget-object v1, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->behanceHttpEntityWrapperCallback:Lcom/behance/sdk/network/BehanceMultipartEntityWrapper;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->behanceHttpEntityWrapperCallback:Lcom/behance/sdk/network/BehanceMultipartEntityWrapper;

    invoke-interface {v1, v0}, Lcom/behance/sdk/network/BehanceMultipartEntityWrapper;->onUploadProgressUpdate(F)V

    .line 251
    :cond_0
    return-void
.end method


# virtual methods
.method public addCustomMultipartHeader(Lcom/behance/sdk/network/BehanceNameValuePair;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->headers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->headers:Ljava/util/ArrayList;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method public addImagePart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/ByteArrayInputStream;)V
    .locals 2

    .prologue
    .line 228
    new-instance v0, Lcom/behance/sdk/network/BehanceMultiPartData;

    invoke-direct {v0}, Lcom/behance/sdk/network/BehanceMultiPartData;-><init>()V

    .line 229
    invoke-virtual {v0, p1}, Lcom/behance/sdk/network/BehanceMultiPartData;->setName(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0, p4}, Lcom/behance/sdk/network/BehanceMultiPartData;->setContentTransferEncoding(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0, p3}, Lcom/behance/sdk/network/BehanceMultiPartData;->setContentType(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, p2}, Lcom/behance/sdk/network/BehanceMultiPartData;->setFileName(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0, p5}, Lcom/behance/sdk/network/BehanceMultiPartData;->setInputStream(Ljava/io/ByteArrayInputStream;)V

    .line 234
    invoke-virtual {p0}, Lcom/behance/sdk/network/BehanceMultipartEntity;->getMultiPartDataList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    return-void
.end method

.method public addImagePart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 217
    new-instance v0, Lcom/behance/sdk/network/BehanceMultiPartData;

    invoke-direct {v0}, Lcom/behance/sdk/network/BehanceMultiPartData;-><init>()V

    .line 218
    invoke-virtual {v0, p1}, Lcom/behance/sdk/network/BehanceMultiPartData;->setName(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0, p4}, Lcom/behance/sdk/network/BehanceMultiPartData;->setContentTransferEncoding(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, p3}, Lcom/behance/sdk/network/BehanceMultiPartData;->setContentType(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, p2}, Lcom/behance/sdk/network/BehanceMultiPartData;->setFileName(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, p5}, Lcom/behance/sdk/network/BehanceMultiPartData;->setSourcePath(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/behance/sdk/network/BehanceMultipartEntity;->getMultiPartDataList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    return-void
.end method

.method public addTextPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2

    .prologue
    .line 207
    new-instance v0, Lcom/behance/sdk/network/BehanceMultiPartData;

    invoke-direct {v0}, Lcom/behance/sdk/network/BehanceMultiPartData;-><init>()V

    .line 208
    invoke-virtual {v0, p1}, Lcom/behance/sdk/network/BehanceMultiPartData;->setName(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, p3}, Lcom/behance/sdk/network/BehanceMultiPartData;->setContentTransferEncoding(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, p2}, Lcom/behance/sdk/network/BehanceMultiPartData;->setContentType(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, p4}, Lcom/behance/sdk/network/BehanceMultiPartData;->setData([B)V

    .line 212
    invoke-virtual {p0}, Lcom/behance/sdk/network/BehanceMultipartEntity;->getMultiPartDataList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method public addTextPart(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 203
    return-void
.end method

.method public getBehanceHttpEntityWrapperCallback()Lcom/behance/sdk/network/BehanceMultipartEntityWrapper;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->behanceHttpEntityWrapperCallback:Lcom/behance/sdk/network/BehanceMultipartEntityWrapper;

    return-object v0
.end method

.method public getBoundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiPartDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/behance/sdk/network/BehanceMultiPartData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->multiPartDataArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMultipartHeaders()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/behance/sdk/network/BehanceNameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    iget-object v1, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->headers:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 136
    :cond_0
    new-instance v1, Lcom/behance/sdk/network/BehanceNameValuePair;

    const-string/jumbo v2, "Content-Type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "multipart/form-data; boundary="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/behance/sdk/network/BehanceMultipartEntity;->getBoundary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/behance/sdk/network/BehanceNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {p0}, Lcom/behance/sdk/network/BehanceMultipartEntity;->isChunked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    new-instance v1, Lcom/behance/sdk/network/BehanceNameValuePair;

    const-string/jumbo v2, "Transfer-Encoding"

    const-string/jumbo v3, "chunked"

    invoke-direct {v1, v2, v3}, Lcom/behance/sdk/network/BehanceNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_1
    return-object v0
.end method

.method public getTotalBytesLength()J
    .locals 6

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->totalBytesLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->totalBytesLength:J

    .line 86
    invoke-virtual {p0}, Lcom/behance/sdk/network/BehanceMultipartEntity;->getMultiPartDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/network/BehanceMultiPartData;

    .line 87
    iget-wide v2, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->totalBytesLength:J

    invoke-virtual {p0}, Lcom/behance/sdk/network/BehanceMultipartEntity;->getBoundary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/behance/sdk/network/BehanceMultipartEntity;->isBrowserCompatible()Z

    move-result v5

    invoke-static {v0, v4, v5}, Lcom/behance/sdk/network/BehanceMultipartEntity;->generateMultiPartFormData(Lcom/behance/sdk/network/BehanceMultiPartData;Ljava/lang/String;Z)[B

    move-result-object v4

    array-length v4, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->totalBytesLength:J

    .line 88
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceMultiPartData;->getSourcePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 89
    iget-wide v2, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->totalBytesLength:J

    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceMultiPartData;->getSourcePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->totalBytesLength:J

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceMultiPartData;->getInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 93
    iget-wide v2, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->totalBytesLength:J

    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceMultiPartData;->getInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/behance/sdk/network/BehanceMultipartEntity;->getSize(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->totalBytesLength:J

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceMultiPartData;->getData()[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 96
    iget-wide v2, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->totalBytesLength:J

    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceMultiPartData;->getData()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->totalBytesLength:J

    goto :goto_0

    .line 100
    :cond_3
    iget-wide v0, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->totalBytesLength:J

    return-wide v0
.end method

.method public incrementTransferredBytesLength(J)V
    .locals 5

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->transferredBytesLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 56
    iput-wide p1, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->transferredBytesLength:J

    .line 62
    :goto_0
    invoke-direct {p0}, Lcom/behance/sdk/network/BehanceMultipartEntity;->notifyUploadProgress()V

    .line 63
    return-void

    .line 60
    :cond_0
    iget-wide v0, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->transferredBytesLength:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->transferredBytesLength:J

    goto :goto_0
.end method

.method public isBrowserCompatible()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->browserCompatible:Z

    return v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->chunked:Z

    return v0
.end method

.method public setBehanceHttpEntityWrapperCallback(Lcom/behance/sdk/network/BehanceMultipartEntityWrapper;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->behanceHttpEntityWrapperCallback:Lcom/behance/sdk/network/BehanceMultipartEntityWrapper;

    .line 73
    return-void
.end method

.method public setBoundary(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->boundary:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setBrowserCompatible(Z)V
    .locals 0

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->browserCompatible:Z

    .line 244
    return-void
.end method

.method public setChunked(Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/behance/sdk/network/BehanceMultipartEntity;->chunked:Z

    .line 46
    return-void
.end method
