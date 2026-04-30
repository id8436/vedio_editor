.class public Lcom/dropbox/core/v2/teamlog/Certificate;
.super Ljava/lang/Object;
.source "Certificate.java"


# instance fields
.field protected final commonName:Ljava/lang/String;

.field protected final expirationDate:Ljava/lang/String;

.field protected final issueDate:Ljava/lang/String;

.field protected final issuer:Ljava/lang/String;

.field protected final serialNumber:Ljava/lang/String;

.field protected final sha1Fingerprint:Ljava/lang/String;

.field protected final subject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'subject\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->subject:Ljava/lang/String;

    .line 53
    if-nez p2, :cond_1

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'issuer\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->issuer:Ljava/lang/String;

    .line 57
    if-nez p3, :cond_2

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'issueDate\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_2
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->issueDate:Ljava/lang/String;

    .line 61
    if-nez p4, :cond_3

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'expirationDate\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_3
    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->expirationDate:Ljava/lang/String;

    .line 65
    if-nez p5, :cond_4

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'serialNumber\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_4
    iput-object p5, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->serialNumber:Ljava/lang/String;

    .line 69
    if-nez p6, :cond_5

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'sha1Fingerprint\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_5
    iput-object p6, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->sha1Fingerprint:Ljava/lang/String;

    .line 73
    if-nez p7, :cond_6

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'commonName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_6
    iput-object p7, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->commonName:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 158
    if-ne p1, p0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 162
    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 166
    check-cast p1, Lcom/dropbox/core/v2/teamlog/Certificate;

    .line 167
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->subject:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/Certificate;->subject:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->subject:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/Certificate;->subject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->issuer:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/Certificate;->issuer:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->issuer:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/Certificate;->issuer:Ljava/lang/String;

    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->issueDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/Certificate;->issueDate:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->issueDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/Certificate;->issueDate:Ljava/lang/String;

    .line 169
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->expirationDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/Certificate;->expirationDate:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->expirationDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/Certificate;->expirationDate:Ljava/lang/String;

    .line 170
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->serialNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/Certificate;->serialNumber:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->serialNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/Certificate;->serialNumber:Ljava/lang/String;

    .line 171
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->sha1Fingerprint:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/Certificate;->sha1Fingerprint:Ljava/lang/String;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->sha1Fingerprint:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/Certificate;->sha1Fingerprint:Ljava/lang/String;

    .line 172
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->commonName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/Certificate;->commonName:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->commonName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/Certificate;->commonName:Ljava/lang/String;

    .line 173
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_9
    move v0, v1

    goto/16 :goto_0

    :cond_a
    move v0, v1

    .line 177
    goto/16 :goto_0
.end method

.method public getCommonName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->commonName:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->expirationDate:Ljava/lang/String;

    return-object v0
.end method

.method public getIssueDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->issueDate:Ljava/lang/String;

    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->issuer:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSha1Fingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->sha1Fingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 144
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->subject:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->issuer:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->issueDate:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->expirationDate:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->serialNumber:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->sha1Fingerprint:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/Certificate;->commonName:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 153
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    sget-object v0, Lcom/dropbox/core/v2/teamlog/Certificate$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/Certificate$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/Certificate$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/dropbox/core/v2/teamlog/Certificate$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/Certificate$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/Certificate$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
