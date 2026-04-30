.class Lcom/dropbox/core/v2/paper/PaperDocCreateArgs;
.super Ljava/lang/Object;
.source "PaperDocCreateArgs.java"


# instance fields
.field protected final importFormat:Lcom/dropbox/core/v2/paper/ImportFormat;

.field protected final parentFolderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/paper/ImportFormat;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/paper/PaperDocCreateArgs;-><init>(Lcom/dropbox/core/v2/paper/ImportFormat;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/paper/ImportFormat;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/PaperDocCreateArgs;->parentFolderId:Ljava/lang/String;

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'importFormat\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/PaperDocCreateArgs;->importFormat:Lcom/dropbox/core/v2/paper/ImportFormat;

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    if-ne p1, p0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 92
    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 96
    check-cast p1, Lcom/dropbox/core/v2/paper/PaperDocCreateArgs;

    .line 97
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocCreateArgs;->importFormat:Lcom/dropbox/core/v2/paper/ImportFormat;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/PaperDocCreateArgs;->importFormat:Lcom/dropbox/core/v2/paper/ImportFormat;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocCreateArgs;->importFormat:Lcom/dropbox/core/v2/paper/ImportFormat;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/PaperDocCreateArgs;->importFormat:Lcom/dropbox/core/v2/paper/ImportFormat;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/paper/ImportFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocCreateArgs;->parentFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/PaperDocCreateArgs;->parentFolderId:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocCreateArgs;->parentFolderId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocCreateArgs;->parentFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/PaperDocCreateArgs;->parentFolderId:Ljava/lang/String;

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 102
    goto :goto_0
.end method

.method public getImportFormat()Lcom/dropbox/core/v2/paper/ImportFormat;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/PaperDocCreateArgs;->importFormat:Lcom/dropbox/core/v2/paper/ImportFormat;

    return-object v0
.end method

.method public getParentFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/PaperDocCreateArgs;->parentFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocCreateArgs;->parentFolderId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocCreateArgs;->importFormat:Lcom/dropbox/core/v2/paper/ImportFormat;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 83
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocCreateArgs$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/PaperDocCreateArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocCreateArgs$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/PaperDocCreateArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
