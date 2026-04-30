.class public Lcom/dropbox/core/v2/teamlog/UserLogInfo;
.super Ljava/lang/Object;
.source "UserLogInfo.java"


# instance fields
.field protected final accountId:Ljava/lang/String;

.field protected final displayName:Ljava/lang/String;

.field protected final email:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, v0, v0, v0}, Lcom/dropbox/core/v2/teamlog/UserLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/16 v1, 0x28

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'accountId\' is shorter than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'accountId\' is longer than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->accountId:Ljava/lang/String;

    .line 55
    if-eqz p2, :cond_2

    .line 56
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'displayName\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_2
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->displayName:Ljava/lang/String;

    .line 61
    if-eqz p3, :cond_4

    .line 62
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_3

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'email\' is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_3
    const-string/jumbo v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'email\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_4
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->email:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 227
    if-ne p1, p0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v0

    .line 230
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 231
    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 235
    check-cast p1, Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    .line 236
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->accountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->accountId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->accountId:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->accountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->accountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->displayName:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->displayName:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->displayName:Ljava/lang/String;

    .line 237
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->email:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->email:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->email:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->email:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->email:Ljava/lang/String;

    .line 238
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 242
    goto :goto_0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 217
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->accountId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->displayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->email:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 222
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    sget-object v0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/UserLogInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    sget-object v0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/UserLogInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
