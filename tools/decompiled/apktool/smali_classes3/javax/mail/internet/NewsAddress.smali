.class public Ljavax/mail/internet/NewsAddress;
.super Ljavax/mail/Address;
.source "NewsAddress.java"


# static fields
.field private static final serialVersionUID:J = -0x3a56e35f1bcbec6fL


# instance fields
.field protected host:Ljava/lang/String;

.field protected newsgroup:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/mail/internet/NewsAddress;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    .line 69
    iput-object p1, p0, Ljavax/mail/internet/NewsAddress;->newsgroup:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public static parse(Ljava/lang/String;)[Ljavax/mail/internet/NewsAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Ljava/util/StringTokenizer;

    const-string/jumbo v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 188
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 190
    new-instance v3, Ljavax/mail/internet/NewsAddress;

    invoke-direct {v3, v2}, Ljavax/mail/internet/NewsAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    .line 193
    new-array v2, v0, [Ljavax/mail/internet/NewsAddress;

    .line 194
    if-lez v0, :cond_1

    .line 195
    invoke-virtual {v1, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 196
    :cond_1
    return-object v2
.end method

.method public static toString([Ljavax/mail/Address;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 164
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 165
    :cond_0
    const/4 v0, 0x0

    .line 172
    :goto_0
    return-object v0

    .line 167
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Ljavax/mail/internet/NewsAddress;

    invoke-virtual {v0}, Ljavax/mail/internet/NewsAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x1

    move v1, v0

    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_2

    .line 170
    const-string/jumbo v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v0, p0, v1

    check-cast v0, Ljavax/mail/internet/NewsAddress;

    invoke-virtual {v0}, Ljavax/mail/internet/NewsAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 172
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 130
    instance-of v1, p1, Ljavax/mail/internet/NewsAddress;

    if-nez v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    check-cast p1, Ljavax/mail/internet/NewsAddress;

    .line 134
    iget-object v1, p0, Ljavax/mail/internet/NewsAddress;->newsgroup:Ljava/lang/String;

    iget-object v2, p1, Ljavax/mail/internet/NewsAddress;->newsgroup:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    iget-object v2, p1, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsgroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Ljavax/mail/internet/NewsAddress;->newsgroup:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string/jumbo v0, "news"

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    iget-object v1, p0, Ljavax/mail/internet/NewsAddress;->newsgroup:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Ljavax/mail/internet/NewsAddress;->newsgroup:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 146
    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    :cond_1
    return v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setNewsgroup(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Ljavax/mail/internet/NewsAddress;->newsgroup:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Ljavax/mail/internet/NewsAddress;->newsgroup:Ljava/lang/String;

    return-object v0
.end method
