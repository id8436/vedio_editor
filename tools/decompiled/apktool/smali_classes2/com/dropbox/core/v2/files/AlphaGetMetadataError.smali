.class public final Lcom/dropbox/core/v2/files/AlphaGetMetadataError;
.super Ljava/lang/Object;
.source "AlphaGetMetadataError.java"


# instance fields
.field private _tag:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

.field private pathValue:Lcom/dropbox/core/v2/files/LookupError;

.field private propertiesErrorValue:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/AlphaGetMetadataError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/AlphaGetMetadataError;)Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->propertiesErrorValue:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    return-object v0
.end method

.method public static path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/AlphaGetMetadataError;
    .locals 2

    .prologue
    .line 127
    if-nez p0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;->PATH:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->withTagAndPath(Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

    move-result-object v0

    return-object v0
.end method

.method public static propertiesError(Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;)Lcom/dropbox/core/v2/files/AlphaGetMetadataError;
    .locals 2

    .prologue
    .line 173
    if-nez p0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;->PROPERTIES_ERROR:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->withTagAndPropertiesError(Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;)Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;)Lcom/dropbox/core/v2/files/AlphaGetMetadataError;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;-><init>()V

    .line 53
    iput-object p1, v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->_tag:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    .line 54
    return-object v0
.end method

.method private withTagAndPath(Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/AlphaGetMetadataError;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;-><init>()V

    .line 67
    iput-object p1, v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->_tag:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    .line 68
    iput-object p2, v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    .line 69
    return-object v0
.end method

.method private withTagAndPropertiesError(Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;)Lcom/dropbox/core/v2/files/AlphaGetMetadataError;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;-><init>()V

    .line 82
    iput-object p1, v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->_tag:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    .line 83
    iput-object p2, v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->propertiesErrorValue:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    .line 84
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 208
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 229
    :cond_0
    :goto_0
    return v0

    .line 211
    :cond_1
    if-eqz p1, :cond_0

    .line 214
    instance-of v2, p1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

    if-eqz v2, :cond_0

    .line 215
    check-cast p1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

    .line 216
    iget-object v2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->_tag:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->_tag:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    if-ne v2, v3, :cond_0

    .line 219
    sget-object v2, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$1;->$SwitchMap$com$dropbox$core$v2$files$AlphaGetMetadataError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->_tag:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 221
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 223
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->propertiesErrorValue:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->propertiesErrorValue:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->propertiesErrorValue:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->propertiesErrorValue:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPathValue()Lcom/dropbox/core/v2/files/LookupError;
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->_tag:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;->PATH:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    if-eq v0, v1, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->_tag:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public getPropertiesErrorValue()Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->_tag:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;->PROPERTIES_ERROR:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    if-eq v0, v1, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.PROPERTIES_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->_tag:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->propertiesErrorValue:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 197
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->_tag:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->propertiesErrorValue:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 202
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 203
    return v0
.end method

.method public isPath()Z
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->_tag:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;->PATH:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPropertiesError()Z
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->_tag:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;->PROPERTIES_ERROR:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->_tag:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    sget-object v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    sget-object v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
