.class public final Lcom/dropbox/core/v2/team/GroupSelector;
.super Ljava/lang/Object;
.source "GroupSelector.java"


# instance fields
.field private _tag:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

.field private groupExternalIdValue:Ljava/lang/String;

.field private groupIdValue:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/GroupSelector;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupSelector;->groupIdValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/GroupSelector;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupSelector;->groupExternalIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public static groupExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupSelector;
    .locals 2

    .prologue
    .line 190
    if-nez p0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/GroupSelector;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupSelector;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupSelector$Tag;->GROUP_EXTERNAL_ID:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/GroupSelector;->withTagAndGroupExternalId(Lcom/dropbox/core/v2/team/GroupSelector$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupSelector;

    move-result-object v0

    return-object v0
.end method

.method public static groupId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupSelector;
    .locals 2

    .prologue
    .line 142
    if-nez p0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/GroupSelector;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupSelector;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupSelector$Tag;->GROUP_ID:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/GroupSelector;->withTagAndGroupId(Lcom/dropbox/core/v2/team/GroupSelector$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupSelector;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/team/GroupSelector$Tag;)Lcom/dropbox/core/v2/team/GroupSelector;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/dropbox/core/v2/team/GroupSelector;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupSelector;-><init>()V

    .line 63
    iput-object p1, v0, Lcom/dropbox/core/v2/team/GroupSelector;->_tag:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    .line 64
    return-object v0
.end method

.method private withTagAndGroupExternalId(Lcom/dropbox/core/v2/team/GroupSelector$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupSelector;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/dropbox/core/v2/team/GroupSelector;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupSelector;-><init>()V

    .line 97
    iput-object p1, v0, Lcom/dropbox/core/v2/team/GroupSelector;->_tag:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    .line 98
    iput-object p2, v0, Lcom/dropbox/core/v2/team/GroupSelector;->groupExternalIdValue:Ljava/lang/String;

    .line 99
    return-object v0
.end method

.method private withTagAndGroupId(Lcom/dropbox/core/v2/team/GroupSelector$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupSelector;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/dropbox/core/v2/team/GroupSelector;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupSelector;-><init>()V

    .line 79
    iput-object p1, v0, Lcom/dropbox/core/v2/team/GroupSelector;->_tag:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    .line 80
    iput-object p2, v0, Lcom/dropbox/core/v2/team/GroupSelector;->groupIdValue:Ljava/lang/String;

    .line 81
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
    instance-of v2, p1, Lcom/dropbox/core/v2/team/GroupSelector;

    if-eqz v2, :cond_0

    .line 233
    check-cast p1, Lcom/dropbox/core/v2/team/GroupSelector;

    .line 234
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupSelector;->_tag:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupSelector;->_tag:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    if-ne v2, v3, :cond_0

    .line 237
    sget-object v2, Lcom/dropbox/core/v2/team/GroupSelector$1;->$SwitchMap$com$dropbox$core$v2$team$GroupSelector$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupSelector;->_tag:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/GroupSelector$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 239
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupSelector;->groupIdValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupSelector;->groupIdValue:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupSelector;->groupIdValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupSelector;->groupIdValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 241
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupSelector;->groupExternalIdValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupSelector;->groupExternalIdValue:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupSelector;->groupExternalIdValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupSelector;->groupExternalIdValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public getGroupExternalIdValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupSelector;->_tag:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupSelector$Tag;->GROUP_EXTERNAL_ID:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    if-eq v0, v1, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.GROUP_EXTERNAL_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupSelector;->_tag:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/GroupSelector$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupSelector;->groupExternalIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupIdValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupSelector;->_tag:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupSelector$Tag;->GROUP_ID:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    if-eq v0, v1, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.GROUP_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupSelector;->_tag:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/GroupSelector$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupSelector;->groupIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 216
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupSelector;->_tag:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupSelector;->groupIdValue:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupSelector;->groupExternalIdValue:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 221
    return v0
.end method

.method public isGroupExternalId()Z
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupSelector;->_tag:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupSelector$Tag;->GROUP_EXTERNAL_ID:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupId()Z
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupSelector;->_tag:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupSelector$Tag;->GROUP_ID:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/GroupSelector$Tag;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupSelector;->_tag:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    sget-object v0, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupSelector$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    sget-object v0, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupSelector$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
