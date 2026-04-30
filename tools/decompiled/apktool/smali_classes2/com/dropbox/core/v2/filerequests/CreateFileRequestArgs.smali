.class Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;
.super Ljava/lang/Object;
.source "CreateFileRequestArgs.java"


# instance fields
.field protected final deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

.field protected final destination:Ljava/lang/String;

.field protected final open:Z

.field protected final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;Z)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;Z)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'title\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'title\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->title:Ljava/lang/String;

    .line 59
    if-nez p2, :cond_2

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'destination\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_2
    const-string/jumbo v0, "/(.|[\\r\\n])*"

    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'destination\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->destination:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    .line 67
    iput-boolean p4, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->open:Z

    .line 68
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 239
    if-ne p1, p0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 242
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 243
    goto :goto_0

    .line 246
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 247
    check-cast p1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;

    .line 248
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->title:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->destination:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->destination:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->destination:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->destination:Ljava/lang/String;

    .line 249
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    .line 250
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-boolean v2, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->open:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->open:Z

    if-eq v2, v3, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    .line 255
    goto :goto_0
.end method

.method public getDeadline()Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    return-object v0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->destination:Ljava/lang/String;

    return-object v0
.end method

.method public getOpen()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->open:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 228
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->title:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->destination:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->open:Z

    .line 232
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 228
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 234
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    sget-object v0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    sget-object v0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
