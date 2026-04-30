.class public Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;
.super Ljava/lang/Object;
.source "UserLogInfo.java"


# instance fields
.field protected accountId:Ljava/lang/String;

.field protected displayName:Ljava/lang/String;

.field protected email:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->accountId:Ljava/lang/String;

    .line 128
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->displayName:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->email:Ljava/lang/String;

    .line 130
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/UserLogInfo;
    .locals 4

    .prologue
    .line 211
    new-instance v0, Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->accountId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->displayName:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->email:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/teamlog/UserLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;
    .locals 2

    .prologue
    const/16 v1, 0x28

    .line 145
    if-eqz p1, :cond_1

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'accountId\' is shorter than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'accountId\' is longer than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->accountId:Ljava/lang/String;

    .line 154
    return-object p0
.end method

.method public withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;
    .locals 2

    .prologue
    .line 169
    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'displayName\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->displayName:Ljava/lang/String;

    .line 175
    return-object p0
.end method

.method public withEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;
    .locals 2

    .prologue
    .line 192
    if-eqz p1, :cond_1

    .line 193
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'email\' is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    const-string/jumbo v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'email\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->email:Ljava/lang/String;

    .line 201
    return-object p0
.end method
