.class public Lcom/dropbox/core/v2/sharing/LinkSettings;
.super Ljava/lang/Object;
.source "LinkSettings.java"


# instance fields
.field protected final accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field protected final audience:Lcom/dropbox/core/v2/sharing/LinkAudience;

.field protected final expiry:Lcom/dropbox/core/v2/sharing/LinkExpiry;

.field protected final password:Lcom/dropbox/core/v2/sharing/LinkPassword;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/dropbox/core/v2/sharing/LinkSettings;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/LinkAudience;Lcom/dropbox/core/v2/sharing/LinkExpiry;Lcom/dropbox/core/v2/sharing/LinkPassword;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/LinkAudience;Lcom/dropbox/core/v2/sharing/LinkExpiry;Lcom/dropbox/core/v2/sharing/LinkPassword;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/LinkSettings;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 43
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/LinkSettings;->audience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    .line 44
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/LinkSettings;->expiry:Lcom/dropbox/core/v2/sharing/LinkExpiry;

    .line 45
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/LinkSettings;->password:Lcom/dropbox/core/v2/sharing/LinkPassword;

    .line 46
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/sharing/LinkSettings$Builder;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkSettings$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/LinkSettings$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 193
    if-ne p1, p0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 196
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 197
    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 201
    check-cast p1, Lcom/dropbox/core/v2/sharing/LinkSettings;

    .line 202
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkSettings;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/LinkSettings;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkSettings;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkSettings;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/LinkSettings;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkSettings;->audience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/LinkSettings;->audience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkSettings;->audience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkSettings;->audience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/LinkSettings;->audience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    .line 203
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/LinkAudience;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkSettings;->expiry:Lcom/dropbox/core/v2/sharing/LinkExpiry;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/LinkSettings;->expiry:Lcom/dropbox/core/v2/sharing/LinkExpiry;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkSettings;->expiry:Lcom/dropbox/core/v2/sharing/LinkExpiry;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkSettings;->expiry:Lcom/dropbox/core/v2/sharing/LinkExpiry;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/LinkSettings;->expiry:Lcom/dropbox/core/v2/sharing/LinkExpiry;

    .line 204
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/LinkExpiry;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkSettings;->password:Lcom/dropbox/core/v2/sharing/LinkPassword;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/LinkSettings;->password:Lcom/dropbox/core/v2/sharing/LinkPassword;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkSettings;->password:Lcom/dropbox/core/v2/sharing/LinkPassword;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkSettings;->password:Lcom/dropbox/core/v2/sharing/LinkPassword;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/LinkSettings;->password:Lcom/dropbox/core/v2/sharing/LinkPassword;

    .line 205
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/LinkPassword;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    .line 209
    goto :goto_0
.end method

.method public getAccessLevel()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkSettings;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public getAudience()Lcom/dropbox/core/v2/sharing/LinkAudience;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkSettings;->audience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    return-object v0
.end method

.method public getExpiry()Lcom/dropbox/core/v2/sharing/LinkExpiry;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkSettings;->expiry:Lcom/dropbox/core/v2/sharing/LinkExpiry;

    return-object v0
.end method

.method public getPassword()Lcom/dropbox/core/v2/sharing/LinkPassword;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkSettings;->password:Lcom/dropbox/core/v2/sharing/LinkPassword;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 182
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkSettings;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkSettings;->audience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkSettings;->expiry:Lcom/dropbox/core/v2/sharing/LinkExpiry;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkSettings;->password:Lcom/dropbox/core/v2/sharing/LinkPassword;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 188
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkSettings$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkSettings$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/LinkSettings$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkSettings$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkSettings$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/LinkSettings$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
