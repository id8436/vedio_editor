.class public final Lcom/dropbox/core/v2/sharing/ShareFolderError;
.super Ljava/lang/Object;
.source "ShareFolderError.java"


# static fields
.field public static final DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError;

.field public static final EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/ShareFolderError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/ShareFolderError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/ShareFolderError;

.field public static final TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

.field private badPathValue:Lcom/dropbox/core/v2/sharing/SharePathError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ShareFolderError;->withTag(Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;)Lcom/dropbox/core/v2/sharing/ShareFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    .line 72
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ShareFolderError;->withTag(Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;)Lcom/dropbox/core/v2/sharing/ShareFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    .line 77
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ShareFolderError;->withTag(Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;)Lcom/dropbox/core/v2/sharing/ShareFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    .line 85
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ShareFolderError;->withTag(Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;)Lcom/dropbox/core/v2/sharing/ShareFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->OTHER:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    .line 89
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ShareFolderError;->withTag(Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;)Lcom/dropbox/core/v2/sharing/ShareFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/ShareFolderError;)Lcom/dropbox/core/v2/sharing/SharePathError;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->badPathValue:Lcom/dropbox/core/v2/sharing/SharePathError;

    return-object v0
.end method

.method public static badPath(Lcom/dropbox/core/v2/sharing/SharePathError;)Lcom/dropbox/core/v2/sharing/ShareFolderError;
    .locals 2

    .prologue
    .line 178
    if-nez p0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->BAD_PATH:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/ShareFolderError;->withTagAndBadPath(Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharePathError;)Lcom/dropbox/core/v2/sharing/ShareFolderError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;)Lcom/dropbox/core/v2/sharing/ShareFolderError;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderError;-><init>()V

    .line 107
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    .line 108
    return-object v0
.end method

.method private withTagAndBadPath(Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharePathError;)Lcom/dropbox/core/v2/sharing/ShareFolderError;
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderError;-><init>()V

    .line 122
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    .line 123
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->badPathValue:Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 124
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 257
    if-ne p1, p0, :cond_0

    .line 286
    :goto_0
    :pswitch_0
    return v1

    .line 260
    :cond_0
    if-nez p1, :cond_1

    move v1, v0

    .line 261
    goto :goto_0

    .line 263
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/ShareFolderError;

    if-eqz v2, :cond_5

    .line 264
    check-cast p1, Lcom/dropbox/core/v2/sharing/ShareFolderError;

    .line 265
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    if-eq v2, v3, :cond_2

    move v1, v0

    .line 266
    goto :goto_0

    .line 268
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/ShareFolderError$1;->$SwitchMap$com$dropbox$core$v2$sharing$ShareFolderError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 282
    goto :goto_0

    .line 272
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->badPathValue:Lcom/dropbox/core/v2/sharing/SharePathError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderError;->badPathValue:Lcom/dropbox/core/v2/sharing/SharePathError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->badPathValue:Lcom/dropbox/core/v2/sharing/SharePathError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderError;->badPathValue:Lcom/dropbox/core/v2/sharing/SharePathError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharePathError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_0

    :cond_5
    move v1, v0

    .line 286
    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getBadPathValue()Lcom/dropbox/core/v2/sharing/SharePathError;
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->BAD_PATH:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    if-eq v0, v1, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.BAD_PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->badPathValue:Lcom/dropbox/core/v2/sharing/SharePathError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 247
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->badPathValue:Lcom/dropbox/core/v2/sharing/SharePathError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 251
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 252
    return v0
.end method

.method public isBadPath()Z
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->BAD_PATH:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisallowedSharedLinkPolicy()Z
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmailUnverified()Z
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoPermission()Z
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

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
    .line 231
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTeamPolicyDisallowsMemberPolicy()Z
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 292
    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 304
    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
