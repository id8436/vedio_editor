.class public final Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;
.super Ljava/lang/Object;
.source "UpdateFolderPolicyError.java"


# static fields
.field public static final DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

.field public static final NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

.field public static final TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

.field public static final TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

.field private accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->withTag(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    .line 79
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->withTag(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    .line 84
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->withTag(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    .line 88
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->withTag(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    .line 92
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->withTag(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    .line 100
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->withTag(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->OTHER:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;
    .locals 2

    .prologue
    .line 180
    if-nez p0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->withTagAndAccessError(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;-><init>()V

    .line 118
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    .line 119
    return-object v0
.end method

.method private withTagAndAccessError(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;-><init>()V

    .line 132
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    .line 133
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .line 134
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 279
    if-ne p1, p0, :cond_0

    .line 310
    :goto_0
    :pswitch_0
    return v1

    .line 282
    :cond_0
    if-nez p1, :cond_1

    move v1, v0

    .line 283
    goto :goto_0

    .line 285
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    if-eqz v2, :cond_5

    .line 286
    check-cast p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    .line 287
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    if-eq v2, v3, :cond_2

    move v1, v0

    .line 288
    goto :goto_0

    .line 290
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$1;->$SwitchMap$com$dropbox$core$v2$sharing$UpdateFolderPolicyError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 306
    goto :goto_0

    .line 292
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_0

    :cond_5
    move v1, v0

    .line 310
    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    if-eq v0, v1, :cond_0

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 270
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 274
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

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
    .line 232
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

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
    .line 243
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotOnTeam()Z
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

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
    .line 265
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTeamFolder()Z
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

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
    .line 221
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 316
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 328
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
