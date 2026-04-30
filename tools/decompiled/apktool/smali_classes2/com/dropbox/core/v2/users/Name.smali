.class public Lcom/dropbox/core/v2/users/Name;
.super Ljava/lang/Object;
.source "Name.java"


# instance fields
.field protected final abbreviatedName:Ljava/lang/String;

.field protected final displayName:Ljava/lang/String;

.field protected final familiarName:Ljava/lang/String;

.field protected final givenName:Ljava/lang/String;

.field protected final surname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'givenName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/users/Name;->givenName:Ljava/lang/String;

    .line 53
    if-nez p2, :cond_1

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'surname\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/users/Name;->surname:Ljava/lang/String;

    .line 57
    if-nez p3, :cond_2

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'familiarName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_2
    iput-object p3, p0, Lcom/dropbox/core/v2/users/Name;->familiarName:Ljava/lang/String;

    .line 61
    if-nez p4, :cond_3

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'displayName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_3
    iput-object p4, p0, Lcom/dropbox/core/v2/users/Name;->displayName:Ljava/lang/String;

    .line 65
    if-nez p5, :cond_4

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'abbreviatedName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_4
    iput-object p5, p0, Lcom/dropbox/core/v2/users/Name;->abbreviatedName:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 133
    if-ne p1, p0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 137
    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 141
    check-cast p1, Lcom/dropbox/core/v2/users/Name;

    .line 142
    iget-object v2, p0, Lcom/dropbox/core/v2/users/Name;->givenName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/Name;->givenName:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/users/Name;->givenName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/Name;->givenName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/users/Name;->surname:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/Name;->surname:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/users/Name;->surname:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/Name;->surname:Ljava/lang/String;

    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/users/Name;->familiarName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/Name;->familiarName:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/users/Name;->familiarName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/Name;->familiarName:Ljava/lang/String;

    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/users/Name;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/Name;->displayName:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/users/Name;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/Name;->displayName:Ljava/lang/String;

    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/users/Name;->abbreviatedName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/Name;->abbreviatedName:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/users/Name;->abbreviatedName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/Name;->abbreviatedName:Ljava/lang/String;

    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v1

    .line 150
    goto :goto_0
.end method

.method public getAbbreviatedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dropbox/core/v2/users/Name;->abbreviatedName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dropbox/core/v2/users/Name;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFamiliarName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dropbox/core/v2/users/Name;->familiarName:Ljava/lang/String;

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dropbox/core/v2/users/Name;->givenName:Ljava/lang/String;

    return-object v0
.end method

.method public getSurname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dropbox/core/v2/users/Name;->surname:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 121
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/users/Name;->givenName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/users/Name;->surname:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/users/Name;->familiarName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/users/Name;->displayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/dropbox/core/v2/users/Name;->abbreviatedName:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 128
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    sget-object v0, Lcom/dropbox/core/v2/users/Name$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Name$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/Name$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    sget-object v0, Lcom/dropbox/core/v2/users/Name$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Name$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/Name$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
