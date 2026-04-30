.class Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;
.super Lcom/dropbox/core/v2/paper/RefPaperDoc;
.source "PaperDocSharingPolicy.java"


# instance fields
.field protected final sharingPolicy:Lcom/dropbox/core/v2/paper/SharingPolicy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/paper/SharingPolicy;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/paper/RefPaperDoc;-><init>(Ljava/lang/String;)V

    .line 34
    if-nez p2, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'sharingPolicy\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->sharingPolicy:Lcom/dropbox/core/v2/paper/SharingPolicy;

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    if-ne p1, p0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 73
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 77
    check-cast p1, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;

    .line 78
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->docId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->docId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->docId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->docId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->sharingPolicy:Lcom/dropbox/core/v2/paper/SharingPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->sharingPolicy:Lcom/dropbox/core/v2/paper/SharingPolicy;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->sharingPolicy:Lcom/dropbox/core/v2/paper/SharingPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->sharingPolicy:Lcom/dropbox/core/v2/paper/SharingPolicy;

    .line 79
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/paper/SharingPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 83
    goto :goto_0
.end method

.method public getDocId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->docId:Ljava/lang/String;

    return-object v0
.end method

.method public getSharingPolicy()Lcom/dropbox/core/v2/paper/SharingPolicy;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->sharingPolicy:Lcom/dropbox/core/v2/paper/SharingPolicy;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;->sharingPolicy:Lcom/dropbox/core/v2/paper/SharingPolicy;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 63
    invoke-super {p0}, Lcom/dropbox/core/v2/paper/RefPaperDoc;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 64
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
