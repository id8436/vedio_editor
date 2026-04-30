.class Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;
.super Ljava/lang/Object;
.source "UpdateFileRequestArgs.java"


# instance fields
.field protected final deadline:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

.field protected final destination:Ljava/lang/String;

.field protected final id:Ljava/lang/String;

.field protected final open:Ljava/lang/Boolean;

.field protected final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 96
    sget-object v4, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->NO_UPDATE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;Ljava/lang/Boolean;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'id\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'id\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    const-string/jumbo v0, "[-_0-9a-zA-Z]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'id\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->id:Ljava/lang/String;

    .line 64
    if-eqz p2, :cond_3

    .line 65
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_3

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'title\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->title:Ljava/lang/String;

    .line 70
    if-eqz p3, :cond_4

    .line 71
    const-string/jumbo v0, "/(.|[\\r\\n])*"

    invoke-static {v0, p3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'destination\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_4
    iput-object p3, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->destination:Ljava/lang/String;

    .line 76
    if-nez p4, :cond_5

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'deadline\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_5
    iput-object p4, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->deadline:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    .line 80
    iput-object p5, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->open:Ljava/lang/Boolean;

    .line 81
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 297
    if-ne p1, p0, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v0

    .line 300
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 301
    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 305
    check-cast p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;

    .line 306
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->id:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->title:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->title:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->title:Ljava/lang/String;

    .line 307
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->destination:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->destination:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->destination:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->destination:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->destination:Ljava/lang/String;

    .line 308
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->deadline:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->deadline:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->deadline:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->deadline:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    .line 309
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->open:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->open:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->open:Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->open:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->open:Ljava/lang/Boolean;

    .line 310
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v1

    .line 314
    goto :goto_0
.end method

.method public getDeadline()Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->deadline:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    return-object v0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->destination:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOpen()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->open:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 285
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->title:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->destination:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->deadline:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->open:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 292
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 320
    sget-object v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 332
    sget-object v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
