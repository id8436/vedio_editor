.class public Lcom/dropbox/core/v2/files/UploadWriteFailed;
.super Ljava/lang/Object;
.source "UploadWriteFailed.java"


# instance fields
.field protected final reason:Lcom/dropbox/core/v2/files/WriteError;

.field protected final uploadSessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/files/WriteError;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'reason\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/UploadWriteFailed;->reason:Lcom/dropbox/core/v2/files/WriteError;

    .line 39
    if-nez p2, :cond_1

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'uploadSessionId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/files/UploadWriteFailed;->uploadSessionId:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    if-ne p1, p0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 78
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 82
    check-cast p1, Lcom/dropbox/core/v2/files/UploadWriteFailed;

    .line 83
    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadWriteFailed;->reason:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadWriteFailed;->reason:Lcom/dropbox/core/v2/files/WriteError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadWriteFailed;->reason:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadWriteFailed;->reason:Lcom/dropbox/core/v2/files/WriteError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/WriteError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadWriteFailed;->uploadSessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadWriteFailed;->uploadSessionId:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadWriteFailed;->uploadSessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadWriteFailed;->uploadSessionId:Ljava/lang/String;

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 88
    goto :goto_0
.end method

.method public getReason()Lcom/dropbox/core/v2/files/WriteError;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadWriteFailed;->reason:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method public getUploadSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadWriteFailed;->uploadSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadWriteFailed;->reason:Lcom/dropbox/core/v2/files/WriteError;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadWriteFailed;->uploadSessionId:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 69
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
