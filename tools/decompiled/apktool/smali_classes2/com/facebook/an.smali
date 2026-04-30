.class Lcom/facebook/an;
.super Ljava/lang/Object;
.source "GraphRequest.java"

# interfaces
.implements Lcom/facebook/ak;


# instance fields
.field private final a:Ljava/io/OutputStream;

.field private final b:Lcom/facebook/i/ag;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/facebook/i/ag;Z)V
    .locals 1

    .prologue
    .line 2063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2060
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/an;->c:Z

    .line 2061
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/an;->d:Z

    .line 2064
    iput-object p1, p0, Lcom/facebook/an;->a:Ljava/io/OutputStream;

    .line 2065
    iput-object p2, p0, Lcom/facebook/an;->b:Lcom/facebook/i/ag;

    .line 2066
    iput-boolean p3, p0, Lcom/facebook/an;->d:Z

    .line 2067
    return-void
.end method

.method private b()Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 2102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value is not a supported type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2228
    iget-boolean v0, p0, Lcom/facebook/an;->d:Z

    if-nez v0, :cond_0

    .line 2229
    const-string/jumbo v0, "--%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/an;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2233
    :goto_0
    return-void

    .line 2231
    :cond_0
    iget-object v0, p0, Lcom/facebook/an;->a:Ljava/io/OutputStream;

    const-string/jumbo v1, "&"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2145
    const-string/jumbo v0, "image/png"

    invoke-virtual {p0, p1, p1, v0}, Lcom/facebook/an;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/facebook/an;->a:Ljava/io/OutputStream;

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2148
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/an;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2149
    invoke-virtual {p0}, Lcom/facebook/an;->a()V

    .line 2150
    iget-object v0, p0, Lcom/facebook/an;->b:Lcom/facebook/i/ag;

    if-eqz v0, :cond_0

    .line 2151
    iget-object v0, p0, Lcom/facebook/an;->b:Lcom/facebook/i/ag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "<Image>"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/i/ag;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2153
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2169
    if-nez p3, :cond_0

    .line 2170
    const-string/jumbo p3, "content/unknown"

    .line 2172
    :cond_0
    invoke-virtual {p0, p1, p1, p3}, Lcom/facebook/an;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    invoke-static {}, Lcom/facebook/w;->f()Landroid/content/Context;

    move-result-object v0

    .line 2176
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2177
    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 2180
    iget-object v2, p0, Lcom/facebook/an;->a:Ljava/io/OutputStream;

    instance-of v2, v2, Lcom/facebook/ba;

    if-eqz v2, :cond_2

    .line 2182
    invoke-static {p2}, Lcom/facebook/i/as;->a(Landroid/net/Uri;)J

    move-result-wide v2

    .line 2184
    iget-object v0, p0, Lcom/facebook/an;->a:Ljava/io/OutputStream;

    check-cast v0, Lcom/facebook/ba;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/ba;->a(J)V

    move v0, v1

    .line 2189
    :goto_0
    const-string/jumbo v2, ""

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/facebook/an;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2190
    invoke-virtual {p0}, Lcom/facebook/an;->a()V

    .line 2191
    iget-object v2, p0, Lcom/facebook/an;->b:Lcom/facebook/i/ag;

    if-eqz v2, :cond_1

    .line 2192
    iget-object v2, p0, Lcom/facebook/an;->b:Lcom/facebook/i/ag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v5, "<Data: %d>"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 2194
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2192
    invoke-virtual {v2, v3, v0}, Lcom/facebook/i/ag;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2196
    :cond_1
    return-void

    .line 2186
    :cond_2
    iget-object v2, p0, Lcom/facebook/an;->a:Ljava/io/OutputStream;

    invoke-static {v0, v2}, Lcom/facebook/i/as;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2203
    if-nez p3, :cond_0

    .line 2204
    const-string/jumbo p3, "content/unknown"

    .line 2206
    :cond_0
    invoke-virtual {p0, p1, p1, p3}, Lcom/facebook/an;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    iget-object v0, p0, Lcom/facebook/an;->a:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/facebook/ba;

    if-eqz v0, :cond_2

    .line 2212
    iget-object v0, p0, Lcom/facebook/an;->a:Ljava/io/OutputStream;

    check-cast v0, Lcom/facebook/ba;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/ba;->a(J)V

    move v0, v1

    .line 2218
    :goto_0
    const-string/jumbo v2, ""

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/facebook/an;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2219
    invoke-virtual {p0}, Lcom/facebook/an;->a()V

    .line 2220
    iget-object v2, p0, Lcom/facebook/an;->b:Lcom/facebook/i/ag;

    if-eqz v2, :cond_1

    .line 2221
    iget-object v2, p0, Lcom/facebook/an;->b:Lcom/facebook/i/ag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v5, "<Data: %d>"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 2223
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2221
    invoke-virtual {v2, v3, v0}, Lcom/facebook/i/ag;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2225
    :cond_1
    return-void

    .line 2214
    :cond_2
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 2216
    iget-object v2, p0, Lcom/facebook/an;->a:Ljava/io/OutputStream;

    invoke-static {v0, v2}, Lcom/facebook/i/as;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2070
    iget-object v0, p0, Lcom/facebook/an;->a:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/facebook/bi;

    if-eqz v0, :cond_0

    .line 2071
    iget-object v0, p0, Lcom/facebook/an;->a:Ljava/io/OutputStream;

    check-cast v0, Lcom/facebook/bi;

    invoke-interface {v0, p3}, Lcom/facebook/bi;->a(Lcom/facebook/GraphRequest;)V

    .line 2074
    :cond_0
    invoke-static {p2}, Lcom/facebook/GraphRequest;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2075
    invoke-static {p2}, Lcom/facebook/GraphRequest;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/an;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    :goto_0
    return-void

    .line 2076
    :cond_1
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 2077
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/an;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2078
    :cond_2
    instance-of v0, p2, [B

    if-eqz v0, :cond_3

    .line 2079
    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/facebook/an;->a(Ljava/lang/String;[B)V

    goto :goto_0

    .line 2080
    :cond_3
    instance-of v0, p2, Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 2081
    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, v1}, Lcom/facebook/an;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 2082
    :cond_4
    instance-of v0, p2, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_5

    .line 2083
    check-cast p2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p2, v1}, Lcom/facebook/an;->a(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto :goto_0

    .line 2084
    :cond_5
    instance-of v0, p2, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    if-eqz v0, :cond_8

    .line 2085
    check-cast p2, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    .line 2087
    invoke-virtual {p2}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;->b()Landroid/os/Parcelable;

    move-result-object v0

    .line 2088
    invoke-virtual {p2}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;->a()Ljava/lang/String;

    move-result-object v1

    .line 2089
    instance-of v2, v0, Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_6

    .line 2090
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/an;->a(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto :goto_0

    .line 2091
    :cond_6
    instance-of v2, v0, Landroid/net/Uri;

    if-eqz v2, :cond_7

    .line 2092
    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/an;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 2094
    :cond_7
    invoke-direct {p0}, Lcom/facebook/an;->b()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2097
    :cond_8
    invoke-direct {p0}, Lcom/facebook/an;->b()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2136
    invoke-virtual {p0, p1, v0, v0}, Lcom/facebook/an;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    const-string/jumbo v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/an;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2138
    invoke-virtual {p0}, Lcom/facebook/an;->a()V

    .line 2139
    iget-object v0, p0, Lcom/facebook/an;->b:Lcom/facebook/i/ag;

    if-eqz v0, :cond_0

    .line 2140
    iget-object v0, p0, Lcom/facebook/an;->b:Lcom/facebook/i/ag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/facebook/i/ag;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2142
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2240
    iget-boolean v0, p0, Lcom/facebook/an;->d:Z

    if-nez v0, :cond_2

    .line 2241
    const-string/jumbo v0, "Content-Disposition: form-data; name=\"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/facebook/an;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2242
    if-eqz p2, :cond_0

    .line 2243
    const-string/jumbo v0, "; filename=\"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/facebook/an;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2245
    :cond_0
    const-string/jumbo v0, ""

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/an;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2246
    if-eqz p3, :cond_1

    .line 2247
    const-string/jumbo v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Content-Type"

    aput-object v2, v1, v3

    aput-object p3, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/facebook/an;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2249
    :cond_1
    const-string/jumbo v0, ""

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/an;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2253
    :goto_0
    return-void

    .line 2251
    :cond_2
    iget-object v0, p0, Lcom/facebook/an;->a:Ljava/io/OutputStream;

    const-string/jumbo v1, "%s="

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 2110
    iget-object v0, p0, Lcom/facebook/an;->a:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/facebook/bi;

    if-nez v0, :cond_1

    .line 2111
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/an;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2133
    :cond_0
    :goto_0
    return-void

    .line 2115
    :cond_1
    iget-object v0, p0, Lcom/facebook/an;->a:Ljava/io/OutputStream;

    check-cast v0, Lcom/facebook/bi;

    .line 2116
    invoke-virtual {p0, p1, v1, v1}, Lcom/facebook/an;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2117
    const-string/jumbo v1, "["

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/an;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2119
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/GraphRequest;

    .line 2120
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 2121
    invoke-interface {v0, v1}, Lcom/facebook/bi;->a(Lcom/facebook/GraphRequest;)V

    .line 2122
    if-lez v2, :cond_2

    .line 2123
    const-string/jumbo v1, ",%s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    invoke-virtual {p0, v1, v6}, Lcom/facebook/an;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2127
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    .line 2128
    goto :goto_1

    .line 2125
    :cond_2
    const-string/jumbo v1, "%s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    invoke-virtual {p0, v1, v6}, Lcom/facebook/an;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 2129
    :cond_3
    const-string/jumbo v0, "]"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/an;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2130
    iget-object v0, p0, Lcom/facebook/an;->b:Lcom/facebook/i/ag;

    if-eqz v0, :cond_0

    .line 2131
    iget-object v0, p0, Lcom/facebook/an;->b:Lcom/facebook/i/ag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/i/ag;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2156
    const-string/jumbo v0, "content/unknown"

    invoke-virtual {p0, p1, p1, v0}, Lcom/facebook/an;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    iget-object v0, p0, Lcom/facebook/an;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 2158
    const-string/jumbo v0, ""

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/an;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2159
    invoke-virtual {p0}, Lcom/facebook/an;->a()V

    .line 2160
    iget-object v0, p0, Lcom/facebook/an;->b:Lcom/facebook/i/ag;

    if-eqz v0, :cond_0

    .line 2161
    iget-object v0, p0, Lcom/facebook/an;->b:Lcom/facebook/i/ag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v3, "<Data: %d>"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    array-length v5, p2

    .line 2163
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2161
    invoke-virtual {v0, v1, v2}, Lcom/facebook/i/ag;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2165
    :cond_0
    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2256
    iget-boolean v0, p0, Lcom/facebook/an;->d:Z

    if-nez v0, :cond_1

    .line 2257
    iget-boolean v0, p0, Lcom/facebook/an;->c:Z

    if-eqz v0, :cond_0

    .line 2259
    iget-object v0, p0, Lcom/facebook/an;->a:Ljava/io/OutputStream;

    const-string/jumbo v1, "--"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2260
    iget-object v0, p0, Lcom/facebook/an;->a:Ljava/io/OutputStream;

    const-string/jumbo v1, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2261
    iget-object v0, p0, Lcom/facebook/an;->a:Ljava/io/OutputStream;

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/an;->c:Z

    .line 2264
    :cond_0
    iget-object v0, p0, Lcom/facebook/an;->a:Ljava/io/OutputStream;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2270
    :goto_0
    return-void

    .line 2266
    :cond_1
    iget-object v0, p0, Lcom/facebook/an;->a:Ljava/io/OutputStream;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2268
    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    .line 2267
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2268
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 2266
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2273
    invoke-virtual {p0, p1, p2}, Lcom/facebook/an;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2274
    iget-boolean v0, p0, Lcom/facebook/an;->d:Z

    if-nez v0, :cond_0

    .line 2275
    const-string/jumbo v0, "\r\n"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/an;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2277
    :cond_0
    return-void
.end method
