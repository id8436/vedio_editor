.class public Lcom/dropbox/core/v2/files/GetCopyReferenceResult;
.super Ljava/lang/Object;
.source "GetCopyReferenceResult.java"


# instance fields
.field protected final copyReference:Ljava/lang/String;

.field protected final expires:Ljava/util/Date;

.field protected final metadata:Lcom/dropbox/core/v2/files/Metadata;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/files/Metadata;Ljava/lang/String;Ljava/util/Date;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'metadata\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/GetCopyReferenceResult;->metadata:Lcom/dropbox/core/v2/files/Metadata;

    .line 45
    if-nez p2, :cond_1

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'copyReference\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/files/GetCopyReferenceResult;->copyReference:Ljava/lang/String;

    .line 49
    if-nez p3, :cond_2

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'expires\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_2
    invoke-static {p3}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/files/GetCopyReferenceResult;->expires:Ljava/util/Date;

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    if-ne p1, p0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 100
    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 104
    check-cast p1, Lcom/dropbox/core/v2/files/GetCopyReferenceResult;

    .line 105
    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetCopyReferenceResult;->metadata:Lcom/dropbox/core/v2/files/Metadata;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/GetCopyReferenceResult;->metadata:Lcom/dropbox/core/v2/files/Metadata;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetCopyReferenceResult;->metadata:Lcom/dropbox/core/v2/files/Metadata;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/GetCopyReferenceResult;->metadata:Lcom/dropbox/core/v2/files/Metadata;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/Metadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetCopyReferenceResult;->copyReference:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/GetCopyReferenceResult;->copyReference:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetCopyReferenceResult;->copyReference:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/GetCopyReferenceResult;->copyReference:Ljava/lang/String;

    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetCopyReferenceResult;->expires:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/GetCopyReferenceResult;->expires:Ljava/util/Date;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetCopyReferenceResult;->expires:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/GetCopyReferenceResult;->expires:Ljava/util/Date;

    .line 107
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 111
    goto :goto_0
.end method

.method public getCopyReference()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetCopyReferenceResult;->copyReference:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetCopyReferenceResult;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getMetadata()Lcom/dropbox/core/v2/files/Metadata;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetCopyReferenceResult;->metadata:Lcom/dropbox/core/v2/files/Metadata;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetCopyReferenceResult;->metadata:Lcom/dropbox/core/v2/files/Metadata;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetCopyReferenceResult;->copyReference:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetCopyReferenceResult;->expires:Ljava/util/Date;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 91
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    sget-object v0, Lcom/dropbox/core/v2/files/GetCopyReferenceResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetCopyReferenceResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/GetCopyReferenceResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lcom/dropbox/core/v2/files/GetCopyReferenceResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetCopyReferenceResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/GetCopyReferenceResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
