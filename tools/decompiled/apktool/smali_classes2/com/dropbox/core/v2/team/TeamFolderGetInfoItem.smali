.class public final Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;
.super Ljava/lang/Object;
.source "TeamFolderGetInfoItem.java"


# instance fields
.field private _tag:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;

.field private idNotFoundValue:Ljava/lang/String;

.field private teamFolderMetadataValue:Lcom/dropbox/core/v2/team/TeamFolderMetadata;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->idNotFoundValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->teamFolderMetadataValue:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    return-object v0
.end method

.method public static idNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;
    .locals 2

    .prologue
    .line 139
    if-nez p0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;->ID_NOT_FOUND:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->withTagAndIdNotFound(Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;

    move-result-object v0

    return-object v0
.end method

.method public static teamFolderMetadata(Lcom/dropbox/core/v2/team/TeamFolderMetadata;)Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;
    .locals 2

    .prologue
    .line 189
    if-nez p0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;->TEAM_FOLDER_METADATA:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->withTagAndTeamFolderMetadata(Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;Lcom/dropbox/core/v2/team/TeamFolderMetadata;)Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;)Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;-><init>()V

    .line 60
    iput-object p1, v0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;

    .line 61
    return-object v0
.end method

.method private withTagAndIdNotFound(Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;-><init>()V

    .line 76
    iput-object p1, v0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;

    .line 77
    iput-object p2, v0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->idNotFoundValue:Ljava/lang/String;

    .line 78
    return-object v0
.end method

.method private withTagAndTeamFolderMetadata(Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;Lcom/dropbox/core/v2/team/TeamFolderMetadata;)Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;-><init>()V

    .line 92
    iput-object p1, v0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;

    .line 93
    iput-object p2, v0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->teamFolderMetadataValue:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    .line 94
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 226
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 247
    :cond_0
    :goto_0
    return v0

    .line 229
    :cond_1
    if-eqz p1, :cond_0

    .line 232
    instance-of v2, p1, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;

    if-eqz v2, :cond_0

    .line 233
    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;

    .line 234
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;

    if-ne v2, v3, :cond_0

    .line 237
    sget-object v2, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$1;->$SwitchMap$com$dropbox$core$v2$team$TeamFolderGetInfoItem$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 239
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->idNotFoundValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->idNotFoundValue:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->idNotFoundValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->idNotFoundValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 241
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->teamFolderMetadataValue:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->teamFolderMetadataValue:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->teamFolderMetadataValue:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->teamFolderMetadataValue:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getIdNotFoundValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;->ID_NOT_FOUND:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;

    if-eq v0, v1, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.ID_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->idNotFoundValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamFolderMetadataValue()Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;->TEAM_FOLDER_METADATA:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;

    if-eq v0, v1, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.TEAM_FOLDER_METADATA, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->teamFolderMetadataValue:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 216
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->idNotFoundValue:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->teamFolderMetadataValue:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 221
    return v0
.end method

.method public isIdNotFound()Z
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;->ID_NOT_FOUND:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTeamFolderMetadata()Z
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;->TEAM_FOLDER_METADATA:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
