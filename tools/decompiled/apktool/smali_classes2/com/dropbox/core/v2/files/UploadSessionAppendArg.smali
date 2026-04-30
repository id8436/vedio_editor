.class Lcom/dropbox/core/v2/files/UploadSessionAppendArg;
.super Ljava/lang/Object;
.source "UploadSessionAppendArg.java"


# instance fields
.field protected final close:Z

.field protected final cursor:Lcom/dropbox/core/v2/files/UploadSessionCursor;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/files/UploadSessionCursor;)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/files/UploadSessionAppendArg;-><init>(Lcom/dropbox/core/v2/files/UploadSessionCursor;Z)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/files/UploadSessionCursor;Z)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'cursor\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/UploadSessionAppendArg;->cursor:Lcom/dropbox/core/v2/files/UploadSessionCursor;

    .line 41
    iput-boolean p2, p0, Lcom/dropbox/core/v2/files/UploadSessionAppendArg;->close:Z

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    if-ne p1, p0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 96
    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 100
    check-cast p1, Lcom/dropbox/core/v2/files/UploadSessionAppendArg;

    .line 101
    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionAppendArg;->cursor:Lcom/dropbox/core/v2/files/UploadSessionCursor;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadSessionAppendArg;->cursor:Lcom/dropbox/core/v2/files/UploadSessionCursor;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionAppendArg;->cursor:Lcom/dropbox/core/v2/files/UploadSessionCursor;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadSessionAppendArg;->cursor:Lcom/dropbox/core/v2/files/UploadSessionCursor;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/UploadSessionCursor;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/UploadSessionAppendArg;->close:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/UploadSessionAppendArg;->close:Z

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 106
    goto :goto_0
.end method

.method public getClose()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/UploadSessionAppendArg;->close:Z

    return v0
.end method

.method public getCursor()Lcom/dropbox/core/v2/files/UploadSessionCursor;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionAppendArg;->cursor:Lcom/dropbox/core/v2/files/UploadSessionCursor;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionAppendArg;->cursor:Lcom/dropbox/core/v2/files/UploadSessionCursor;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/UploadSessionAppendArg;->close:Z

    .line 85
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 83
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 87
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionAppendArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionAppendArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionAppendArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionAppendArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionAppendArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionAppendArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
