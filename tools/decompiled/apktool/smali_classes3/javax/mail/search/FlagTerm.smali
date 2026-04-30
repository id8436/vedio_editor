.class public final Ljavax/mail/search/FlagTerm;
.super Ljavax/mail/search/SearchTerm;
.source "FlagTerm.java"


# static fields
.field private static final serialVersionUID:J = -0x1fc02030d671737L


# instance fields
.field protected flags:Ljavax/mail/Flags;

.field protected set:Z


# direct methods
.method public constructor <init>(Ljavax/mail/Flags;Z)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 66
    iput-object p1, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    .line 67
    iput-boolean p2, p0, Ljavax/mail/search/FlagTerm;->set:Z

    .line 68
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 134
    instance-of v1, p1, Ljavax/mail/search/FlagTerm;

    if-nez v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    check-cast p1, Ljavax/mail/search/FlagTerm;

    .line 137
    iget-boolean v1, p1, Ljavax/mail/search/FlagTerm;->set:Z

    iget-boolean v2, p0, Ljavax/mail/search/FlagTerm;->set:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    iget-object v2, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v1, v2}, Ljavax/mail/Flags;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFlags()Ljavax/mail/Flags;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;

    return-object v0
.end method

.method public getTestSet()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Ljavax/mail/search/FlagTerm;->set:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Ljavax/mail/search/FlagTerm;->set:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;

    move-result-object v3

    .line 94
    iget-boolean v2, p0, Ljavax/mail/search/FlagTerm;->set:Z

    if-eqz v2, :cond_2

    .line 95
    iget-object v2, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v3, v2}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 98
    goto :goto_0

    .line 105
    :cond_2
    iget-object v2, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v2}, Ljavax/mail/Flags;->getSystemFlags()[Ljavax/mail/Flags$Flag;

    move-result-object v4

    move v2, v1

    .line 108
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_4

    .line 109
    aget-object v5, v4, v2

    invoke-virtual {v3, v5}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v1

    .line 111
    goto :goto_0

    .line 108
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 114
    :cond_4
    iget-object v2, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v2}, Ljavax/mail/Flags;->getUserFlags()[Ljava/lang/String;

    move-result-object v4

    move v2, v1

    .line 117
    :goto_2
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 118
    aget-object v5, v4, v2

    invoke-virtual {v3, v5}, Ljavax/mail/Flags;->contains(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_5

    move v0, v1

    .line 120
    goto :goto_0

    .line 117
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 125
    :catch_0
    move-exception v0

    move v0, v1

    .line 126
    goto :goto_0
.end method
