.class public final Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;
.super Ljava/lang/Object;
.source "ParticipantLogInfo.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

.field private groupValue:Lcom/dropbox/core/v2/teamlog/GroupLogInfo;

.field private userValue:Lcom/dropbox/core/v2/teamlog/UserLogInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->withTag(Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->OTHER:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;)Lcom/dropbox/core/v2/teamlog/UserLogInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->userValue:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;)Lcom/dropbox/core/v2/teamlog/GroupLogInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->groupValue:Lcom/dropbox/core/v2/teamlog/GroupLogInfo;

    return-object v0
.end method

.method public static group(Lcom/dropbox/core/v2/teamlog/GroupLogInfo;)Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;
    .locals 2

    .prologue
    .line 210
    if-nez p0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;->GROUP:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->withTagAndGroup(Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/GroupLogInfo;)Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public static user(Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;
    .locals 2

    .prologue
    .line 162
    if-nez p0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;->USER:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->withTagAndUser(Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;-><init>()V

    .line 83
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    .line 84
    return-object v0
.end method

.method private withTagAndGroup(Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/GroupLogInfo;)Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;-><init>()V

    .line 114
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    .line 115
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->groupValue:Lcom/dropbox/core/v2/teamlog/GroupLogInfo;

    .line 116
    return-object v0
.end method

.method private withTagAndUser(Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;-><init>()V

    .line 98
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    .line 99
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->userValue:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    .line 100
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 256
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 279
    :cond_0
    :goto_0
    return v0

    .line 259
    :cond_1
    if-eqz p1, :cond_0

    .line 262
    instance-of v2, p1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    if-eqz v2, :cond_0

    .line 263
    check-cast p1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    .line 264
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    if-ne v2, v3, :cond_0

    .line 267
    sget-object v2, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$1;->$SwitchMap$com$dropbox$core$v2$teamlog$ParticipantLogInfo$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 269
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->userValue:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->userValue:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->userValue:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->userValue:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 271
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->groupValue:Lcom/dropbox/core/v2/teamlog/GroupLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->groupValue:Lcom/dropbox/core/v2/teamlog/GroupLogInfo;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->groupValue:Lcom/dropbox/core/v2/teamlog/GroupLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->groupValue:Lcom/dropbox/core/v2/teamlog/GroupLogInfo;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 273
    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getGroupValue()Lcom/dropbox/core/v2/teamlog/GroupLogInfo;
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;->GROUP:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    if-eq v0, v1, :cond_0

    .line 228
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.GROUP, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->groupValue:Lcom/dropbox/core/v2/teamlog/GroupLogInfo;

    return-object v0
.end method

.method public getUserValue()Lcom/dropbox/core/v2/teamlog/UserLogInfo;
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;->USER:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    if-eq v0, v1, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.USER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->userValue:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 246
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->userValue:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->groupValue:Lcom/dropbox/core/v2/teamlog/GroupLogInfo;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 251
    return v0
.end method

.method public isGroup()Z
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;->GROUP:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUser()Z
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;->USER:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
