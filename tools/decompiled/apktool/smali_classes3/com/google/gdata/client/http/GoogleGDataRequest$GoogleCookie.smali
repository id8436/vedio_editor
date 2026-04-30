.class public Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;
.super Ljava/lang/Object;
.source "GoogleGDataRequest.java"


# instance fields
.field private domain:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URI;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/16 v7, 0x3d

    const/4 v6, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const-string/jumbo v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 135
    aget-object v0, v2, v6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 137
    if-gez v1, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cookie is not a name/value pair"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->name:Ljava/lang/String;

    .line 141
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->value:Ljava/lang/String;

    .line 142
    const-string/jumbo v0, "/"

    iput-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->path:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->domain:Ljava/lang/String;

    .line 146
    const/4 v0, 0x1

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_8

    .line 147
    aget-object v1, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 149
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 146
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 153
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    const-string/jumbo v3, "domain"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 155
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v3

    if-lez v3, :cond_3

    .line 157
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 158
    if-lez v3, :cond_3

    .line 159
    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 162
    :cond_3
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 164
    iput-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->domain:Ljava/lang/String;

    .line 171
    :cond_4
    iput-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->domain:Ljava/lang/String;

    goto :goto_1

    .line 166
    :cond_5
    invoke-direct {p0, v3, v1}, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->matchDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Trying to set foreign cookie"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_6
    const-string/jumbo v3, "path"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 173
    iput-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->path:Ljava/lang/String;

    goto :goto_1

    .line 174
    :cond_7
    const-string/jumbo v3, "expires"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "E, dd-MMM-yyyy k:m:s \'GMT\'"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->expires:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 179
    :catch_0
    move-exception v3

    .line 181
    :try_start_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "E, dd MMM yyyy k:m:s \'GMT\'"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->expires:Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 184
    :catch_1
    move-exception v0

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad date format in header: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_8
    return-void
.end method

.method private matchDomain(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/16 v4, 0x2e

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 200
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 213
    :cond_0
    :goto_0
    return v0

    .line 205
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 210
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_0

    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 274
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;

    if-nez v1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return v0

    .line 277
    :cond_1
    check-cast p1, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;

    .line 278
    iget-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->domain:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->path:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 282
    iget-object v1, p1, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->path:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 285
    const/4 v0, 0x1

    goto :goto_0

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->path:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->expires:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->expires:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getHeaderValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasExpired()Z
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->expires:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 222
    const/4 v0, 0x0

    .line 225
    :goto_0
    return v0

    .line 224
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 225
    iget-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->expires:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 292
    .line 293
    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    .line 294
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->domain:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 295
    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 296
    return v0

    .line 295
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matches(Ljava/net/URI;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->hasExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v0

    .line 242
    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 243
    iget-object v2, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->domain:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->matchDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 248
    if-nez v0, :cond_2

    .line 249
    const-string/jumbo v0, "/"

    .line 252
    :cond_2
    iget-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "GoogleCookie("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget-object v1, p0, Lcom/google/gdata/client/http/GoogleGDataRequest$GoogleCookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
