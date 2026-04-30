.class public Lcom/dropbox/core/v2/files/RelocationPath;
.super Ljava/lang/Object;
.source "RelocationPath.java"


# instance fields
.field protected final fromPath:Ljava/lang/String;

.field protected final toPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'fromPath\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    const-string/jumbo v0, "(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'fromPath\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/RelocationPath;->fromPath:Ljava/lang/String;

    .line 45
    if-nez p2, :cond_2

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'toPath\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_2
    const-string/jumbo v0, "(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)"

    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'toPath\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/files/RelocationPath;->toPath:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    if-ne p1, p0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 87
    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 91
    check-cast p1, Lcom/dropbox/core/v2/files/RelocationPath;

    .line 92
    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationPath;->fromPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationPath;->fromPath:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationPath;->fromPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationPath;->fromPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationPath;->toPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationPath;->toPath:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationPath;->toPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationPath;->toPath:Ljava/lang/String;

    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 97
    goto :goto_0
.end method

.method public getFromPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationPath;->fromPath:Ljava/lang/String;

    return-object v0
.end method

.method public getToPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationPath;->toPath:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationPath;->fromPath:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationPath;->toPath:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 78
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationPath$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationPath$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationPath$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationPath$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationPath$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationPath$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
