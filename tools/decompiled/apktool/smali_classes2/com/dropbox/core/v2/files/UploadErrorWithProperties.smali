.class public final Lcom/dropbox/core/v2/files/UploadErrorWithProperties;
.super Ljava/lang/Object;
.source "UploadErrorWithProperties.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/files/UploadErrorWithProperties;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

.field private pathValue:Lcom/dropbox/core/v2/files/UploadWriteFailed;

.field private propertiesErrorValue:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;->OTHER:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->withTag(Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->OTHER:Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/UploadErrorWithProperties;)Lcom/dropbox/core/v2/files/UploadWriteFailed;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->pathValue:Lcom/dropbox/core/v2/files/UploadWriteFailed;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/UploadErrorWithProperties;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->propertiesErrorValue:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    return-object v0
.end method

.method public static path(Lcom/dropbox/core/v2/files/UploadWriteFailed;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;
    .locals 2

    .prologue
    .line 149
    if-nez p0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;->PATH:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->withTagAndPath(Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;Lcom/dropbox/core/v2/files/UploadWriteFailed;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    move-result-object v0

    return-object v0
.end method

.method public static propertiesError(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;
    .locals 2

    .prologue
    .line 208
    if-nez p0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;->PROPERTIES_ERROR:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->withTagAndPropertiesError(Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;-><init>()V

    .line 74
    iput-object p1, v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->_tag:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    .line 75
    return-object v0
.end method

.method private withTagAndPath(Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;Lcom/dropbox/core/v2/files/UploadWriteFailed;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;-><init>()V

    .line 89
    iput-object p1, v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->_tag:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    .line 90
    iput-object p2, v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->pathValue:Lcom/dropbox/core/v2/files/UploadWriteFailed;

    .line 91
    return-object v0
.end method

.method private withTagAndPropertiesError(Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;-><init>()V

    .line 104
    iput-object p1, v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->_tag:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    .line 105
    iput-object p2, v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->propertiesErrorValue:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    .line 106
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 243
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 266
    :cond_0
    :goto_0
    return v0

    .line 246
    :cond_1
    if-eqz p1, :cond_0

    .line 249
    instance-of v2, p1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    if-eqz v2, :cond_0

    .line 250
    check-cast p1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    .line 251
    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->_tag:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->_tag:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    if-ne v2, v3, :cond_0

    .line 254
    sget-object v2, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$1;->$SwitchMap$com$dropbox$core$v2$files$UploadErrorWithProperties$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->_tag:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 256
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->pathValue:Lcom/dropbox/core/v2/files/UploadWriteFailed;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->pathValue:Lcom/dropbox/core/v2/files/UploadWriteFailed;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->pathValue:Lcom/dropbox/core/v2/files/UploadWriteFailed;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->pathValue:Lcom/dropbox/core/v2/files/UploadWriteFailed;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/UploadWriteFailed;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 258
    goto :goto_0

    .line 260
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->propertiesErrorValue:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->propertiesErrorValue:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->propertiesErrorValue:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->propertiesErrorValue:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPathValue()Lcom/dropbox/core/v2/files/UploadWriteFailed;
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->_tag:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;->PATH:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    if-eq v0, v1, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->_tag:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->pathValue:Lcom/dropbox/core/v2/files/UploadWriteFailed;

    return-object v0
.end method

.method public getPropertiesErrorValue()Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->_tag:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;->PROPERTIES_ERROR:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    if-eq v0, v1, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.PROPERTIES_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->_tag:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->propertiesErrorValue:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 232
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->_tag:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->pathValue:Lcom/dropbox/core/v2/files/UploadWriteFailed;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->propertiesErrorValue:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 237
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 238
    return v0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->_tag:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;->OTHER:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPath()Z
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->_tag:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;->PATH:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

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
    .line 191
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->_tag:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;->PROPERTIES_ERROR:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->_tag:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    sget-object v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 284
    sget-object v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
